package com.molcon.phibase.controller;

import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.molcon.phibase.bean.SpotlightBean;
import com.molcon.phibase.command.PhibaseRegistrationCommand;
import com.molcon.phibase.service.PhibaseService;
import com.molcon.phibase.util.PhibaseUtil;
import com.molcon.phibase.validator.PhibaseValidator;

@Controller
public class PhibaseLinkController {

	Logger logger = LoggerFactory.getLogger(PhibaseLinkController.class);

	@Autowired
	private PhibaseValidator phibaseValidator;

	@Autowired
	private PhibaseService phibaseService;

	@RequestMapping(value="aboutUs.htm",method=RequestMethod.GET)
	public String aboutUs() {
		String methodName="aboutUs";
		return "aboutUs";
	}

	@RequestMapping(value="releaseNote.htm",method=RequestMethod.GET)
	public String releaseNote() {
		String methodName="releaseNote";
		return "releaseNote";
	}

	@RequestMapping(value="disclaimer.htm",method=RequestMethod.GET)
	public String disclaimer() {
		String methodName="disclaimer";
		return "disclaimer";
	}

	@RequestMapping(value="errorContribution.htm",method=RequestMethod.GET)
	public String errorContribution() {
		String methodName="errorContribution";
		return "errorContribution";
	}
	@RequestMapping(value="consortium.htm",method=RequestMethod.GET)
	public String consortium() {
		String methodName="consortium";
		return "consortium";
	}
	@RequestMapping(value="downloadLink.htm",method=RequestMethod.GET)
	public String downloadLink(HttpSession session,ModelMap myModel) {
		String methodName="downloadLink";
		PhibaseRegistrationCommand phibaseRegistrationCommand = new PhibaseRegistrationCommand();
		Map<String, String> countryMap=PhibaseUtil.getCountryMap();
		myModel.addAttribute("phibaseRegistrationCommand",phibaseRegistrationCommand);

		session.setAttribute("countryMap", countryMap);
		session.removeAttribute("isUserRegistered");
		return "downloadLink";
	}

	@RequestMapping(value="downloadLinkBack.htm",method=RequestMethod.POST)
	public String downloadLinkBack(HttpServletRequest request,ModelMap myModel) {
		String methodName="downloadLinkBack";

		String registrationJson=request.getParameter("registrationJson");
		JSONObject obj=new JSONObject(registrationJson);
		ObjectMapper mapper = new ObjectMapper();
		PhibaseRegistrationCommand phibaseRegistrationCommand=null;
		try{
			phibaseRegistrationCommand=mapper.readValue(registrationJson, PhibaseRegistrationCommand.class);
		}catch(Exception e){
			logger.info("Problem during json to command conversion");
		}

		myModel.addAttribute("phibaseRegistrationCommand",phibaseRegistrationCommand);
		return "downloadLink";
	}

	@RequestMapping(value="generalplant.htm",method=RequestMethod.GET)
	public String generalplantLink() {
		String methodName="generalplantLink";
		return "generalplantLink";
	}

	@RequestMapping(value="helpLink.htm",method=RequestMethod.GET)
	public String helpLink() {
		String methodName="helpLink";
		return "helpLink";
	}

	@RequestMapping(value="termCondtionLink.htm",method=RequestMethod.POST)
	public String termCondtionLink(@ModelAttribute("phibaseRegistrationCommand") PhibaseRegistrationCommand phibaseRegistrationCommand,BindingResult result,
			ModelMap myModel) {

		String methodName="termCondtionLink";


		//form validation
		phibaseValidator.validate(phibaseRegistrationCommand, result);
		if(result.hasErrors()){
			return "downloadLink";
		}
		myModel.addAttribute("phibaseRegistrationCommand",phibaseRegistrationCommand);
		return "termCond";
	}

	@RequestMapping(value="termCondtion.htm",method=RequestMethod.POST)
	public String termCondtion(HttpServletRequest request,HttpSession session) {

		String methodName="termCondtion";
		String target="downloadLink";

		String registrationJson=request.getParameter("registrationJson");
		JSONObject obj=new JSONObject(registrationJson);
		ObjectMapper mapper = new ObjectMapper();
		PhibaseRegistrationCommand phibaseRegistrationCommand=null;
		try{
			phibaseRegistrationCommand=mapper.readValue(registrationJson, PhibaseRegistrationCommand.class);
		}catch(Exception e){
			logger.info("Problem during json to command conversion");
		}

		//allow download for only registered user
		boolean writeSucess=phibaseService.writeRegUserInformation(phibaseRegistrationCommand);

		if(writeSucess){
			target="successDownload";
		}
		return target;
	}

	@RequestMapping(value="downloadXml.htm",method=RequestMethod.GET)
	public String downloadXml(@ModelAttribute("phibaseRegistrationCommand") PhibaseRegistrationCommand phibaseRegistrationCommand,BindingResult result,HttpSession session) {

		String methodName="downloadXml";
		String target="downloadXml";

		return target;
	}

	@RequestMapping(value="downloadFasta.htm",method=RequestMethod.GET)
	public String downloadFasta(@ModelAttribute("phibaseRegistrationCommand") PhibaseRegistrationCommand phibaseRegistrationCommand,BindingResult result,HttpSession session) {
		String methodName="downloadFasta";
		String target="downloadFasta";

		return "downloadFasta";
	}

	@RequestMapping(value="advancedSearch.htm",method=RequestMethod.GET)
	public String advancedSearch(HttpServletRequest request,ModelMap map) throws Exception{
		String methodName="advancedSearch";
		String queryTerm=request.getParameter("queryTerm");

		Map<String, String> advSearchFieldMap=PhibaseUtil.getAdvanceSearchFieldMap();
		if(null!=queryTerm && !queryTerm.equals("")){
			PhibaseUtil.getAdvanceSearchValueMap(advSearchFieldMap, queryTerm);
		}
		map.addAttribute("advSearchFieldMap", advSearchFieldMap);
		return "advancedSearch";
	}

	@RequestMapping(value="spotLightshowSpotlightEntryPage.htm",method=RequestMethod.GET)
	public String spotlightEntry(HttpServletRequest request,ModelMap modelMap) throws Exception{

		List<SpotlightBean> spotlightBeans = phibaseService.getAllSpotlightBeans();
		modelMap.addAttribute("spotlightBeans", spotlightBeans);
		return "spotlightEntry";
	}

	@RequestMapping(value="spotLightaddSpotlightEntry.htm",method=RequestMethod.POST)
	public String addSpotlightEntry(@RequestParam("image") MultipartFile image,
			HttpServletRequest request,ModelMap modelMap) throws Exception{

		String spotlightId = request.getParameter("spotlightId");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String message = "";
		try {
			
			int updatedRows = 0;
			
			if( null != spotlightId && !spotlightId.trim().equals("")) {
				int spotlightEntryId = Integer.parseInt(spotlightId);
				updatedRows = phibaseService.updateSpotlightEntry(spotlightEntryId,title,description, image);
				
			} else {
				updatedRows = phibaseService.addSpotlightEntry(title,description, image);
			}			
			
			if( updatedRows == 1 ) {
				message = "Successfully updated";
			} else {
				message = "Unable to update";
			}

			List<SpotlightBean> spotlightBeans = phibaseService.getAllSpotlightBeans();
			modelMap.addAttribute("spotlightBeans", spotlightBeans);

		} catch(Exception e) {
			logger.error("Exception", e);
		}

		modelMap.addAttribute("message",message);
		return "spotlightEntry";
	}

	@RequestMapping(value="getLatestSpotlight.htm",method=RequestMethod.GET)
	@ResponseBody
	public String getLatestSpotlightEntry(HttpServletRequest request) throws Exception{
		String message = "";

		String spotlightDetailsJsonStr = "\"{}\"";
		SpotlightBean spotlightBean = new SpotlightBean();
		try {			
			spotlightBean = phibaseService.getLatestSpotlightEntry();
			if( null != spotlightBean )
				spotlightDetailsJsonStr = new Gson().toJson(spotlightBean);

		} catch(Exception e) {
			logger.error("Exception", e);
		}

		return spotlightDetailsJsonStr;
	}
	
	@RequestMapping(value="getSpotlight.htm",method=RequestMethod.GET)
	@ResponseBody
	public String getSpotlight(HttpServletRequest request) throws Exception{
		String message = "";
		
		int spotId = Integer.parseInt(request.getParameter("id"));		
		String spotlightDetailsJsonStr = "";
		SpotlightBean spotlightBean = null;
		try {			
			spotlightBean = phibaseService.getSpotlight(spotId);
			if( null != spotlightBean )
				spotlightDetailsJsonStr = new Gson().toJson(spotlightBean);

		} catch(Exception e) {
			logger.error("Exception", e);
		}

		return spotlightDetailsJsonStr;
	}

	@RequestMapping(value="spotLightdeleteSpotlight.htm",method=RequestMethod.GET)
	@ResponseBody
	public String deleteSpotlight(HttpServletRequest request) throws Exception{
		String message = "";

		int result = 0;
		String idStr = request.getParameter("id");
		try {			
			int id = Integer.parseInt(idStr);
			result = phibaseService.deleteSpotlight(id);
			
			if( result == 1 ) {
				result = id;
			} else {
				result = 0;
			}

		} catch(Exception e) {
			logger.error("Exception", e);
		}
		
		System.out.println("deleted");

		return result+"";
	}
	
	
	@RequestMapping(value="loginSpotLight.htm",method=RequestMethod.GET)
	public String loginSpotLight(HttpServletRequest request) {
		return "loginSpotLight";
	}

	@RequestMapping(value="spotlight.htm",method=RequestMethod.GET)
	public String spotlight(ModelMap modelMap) {
		SpotlightBean spotlightBean = phibaseService.getLatestSpotlightEntry();
		modelMap.addAttribute("spotlightBean", spotlightBean);
		return "spotlight";
	}

	@RequestMapping(value="diseases.htm",method=RequestMethod.GET)
	public String diseases() {
		return "diseases";
	}
	
	@RequestMapping(value="ontologies.htm",method=RequestMethod.GET)
	public String ontologies() {
		return "ontologies";
	}
	
	@RequestMapping(value="developerResources.htm",method=RequestMethod.GET)
	public String developerResources() {
		return "developerResources";
	}
	
	
	@RequestMapping(value="authenticateSpotLight.htm",method=RequestMethod.POST)
	public String authenticateSpotLight(HttpServletRequest request,HttpSession session, ModelMap modelMap) {
		
		String userName =  request.getParameter("username");
		String password =  request.getParameter("password");
		
		boolean isAuthenticated = phibaseService.authenticateSpotLight(userName,password);
		
		if(isAuthenticated) {
			session.setAttribute("userName", userName);
			return "redirect:spotLightshowSpotlightEntryPage.htm";
		} else {
			modelMap.addAttribute("message", "UserName/password incorrect");
			return "loginSpotLight";
		}
	}
	
	@RequestMapping(value="spotLightlogout.htm",method=RequestMethod.GET)
	public String spotLightlogout(HttpServletRequest request,HttpSession session) {
		
		session.invalidate();
		return "loginSpotLight";
	}
}