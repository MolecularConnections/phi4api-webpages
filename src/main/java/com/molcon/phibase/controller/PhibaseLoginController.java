package com.molcon.phibase.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.molcon.phibase.bean.SpotlightBean;
import com.molcon.phibase.command.PhibaseLoginCommand;
import com.molcon.phibase.service.PhibaseService;



@Controller
public class PhibaseLoginController {

	/*@Autowired
	private Validator validator;*/
	
	@Autowired
	PhibaseService phibaseService;
	
	Logger logger=Logger.getLogger(PhibaseLoginController.class);
	@RequestMapping(value="login.htm" ,method=RequestMethod.GET)
	public String showLogin(ModelMap myModel,HttpSession session) throws Exception {
		String methodName="showLogin";
		
		SpotlightBean spotlightBean = phibaseService.getLatestSpotlightEntry();
		myModel.addAttribute("spotlightBean", spotlightBean);
		
		myModel.addAttribute("phibaseLoginCommand", new PhibaseLoginCommand());
		session.removeAttribute("isUserRegistered");
		System.out.println("return nin login");
		return "login"; 
	}

	/*@RequestMapping(value="login.htm",method=RequestMethod.POST)
	public String processLogin(@ModelAttribute("phibaseLoginCommand") PhibaseLoginCommand phibaseLoginCommand,BindingResult result, ModelMap myModel) throws Exception {
		String methodName="processLogin";
		validator.validate(phibaseLoginCommand, result);

		if(result.hasErrors())
			return "login";

		String loginMsg="Welcome: "+phibaseLoginCommand.getUserName();
		return "redirect:search.htm?queryTerm=&start=0&rows=10";
	}*/

	@RequestMapping(value="logout.htm" ,method=RequestMethod.GET)
	public String logout(ModelMap myModel,HttpSession session) throws Exception {
		String methodName="logout";
		session.invalidate();
		return "redirect:login.htm";
	}
}
