/**
 *
 */
package com.molcon.phibase.controller;

import java.io.OutputStream;
import java.io.StringWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.molcon.phibase.service.PhibaseSearchService;

/**
 * @author santosh
 *
 */
@Controller
public class PhibaseSearchController {
	
	Logger logger = Logger.getLogger(PhibaseSearchController.class);
	
	@Autowired
	PhibaseSearchService phibaseSearchService;

	@RequestMapping(value="searchFacet.htm" ,method=RequestMethod.GET)
	public ModelAndView searchFacet(HttpServletRequest request,HttpSession session) throws Exception {

		String methodName="searchFacet";
		Map<String, Object> myModel = new HashMap<String, Object>();
		//String queryTerm=(request.getParameter("queryTerm")==null||"".equals(request.getParameter("queryTerm").trim()))?"*:*":request.getParameter("queryTerm").trim();
		String queryTerm=(request.getParameter("queryTerm").equals("*"))?"*:*":request.getParameter("queryTerm").trim();
		String refinedQuery=request.getParameter("refinedQuery")==null?"{}":request.getParameter("refinedQuery");
		
		
		JSONObject searchResult=phibaseSearchService.search(StringEscapeUtils.unescapeHtml(queryTerm),
				StringEscapeUtils.unescapeHtml(refinedQuery));

		request.setAttribute("queryTerm",queryTerm.replace("*:*","*"));
		request.setAttribute("refinedQuery", refinedQuery);

		if(null==searchResult){
			searchResult=new JSONObject();
		}
		session.setAttribute("searchResult", URLEncoder.encode(searchResult.toString(),"UTF-8"));
		myModel.put("SEARCH_RESULT",searchResult);
		return new ModelAndView("searchPage","SEARCH_MODEL",myModel);
	}


	@RequestMapping(value="search.htm" ,method=RequestMethod.GET)
	public void search(HttpServletRequest request, HttpServletResponse response, OutputStream out,HttpSession session) throws Exception {
		String methodName="search";

		String xRange = request.getHeader("X-Range");
		xRange = xRange.replaceAll("items=", "");

		int range = Integer.parseInt(xRange.split("-")[0]);

		Map<String, Object> myModel = new HashMap<String, Object>();
		//String queryTerm=(request.getParameter("queryTerm")==null||"".equals(request.getParameter("queryTerm").trim()))?"*:*":request.getParameter("queryTerm").trim();
		String queryTerm=(request.getParameter("queryTerm").equals("*"))?"*:*":request.getParameter("queryTerm").trim();
		String refinedQuery=request.getParameter("refinedQuery")==null?"{}":request.getParameter("refinedQuery");
		JSONObject searchResult;

		searchResult=phibaseSearchService.search(StringEscapeUtils.unescapeHtml(queryTerm),
				StringEscapeUtils.unescapeHtml(refinedQuery),range);
		JSONArray srchRslt = new JSONArray();

		if(null!=searchResult){

			int totalNoOfDocuments = (Integer) searchResult.getJSONObject("response").get("numFound");

			request.setAttribute("queryTerm", queryTerm.replace("*:*","*"));
			request.setAttribute("refinedQuery", refinedQuery);

			response.setHeader("Content-Range", "items "+(Integer.parseInt(xRange.split("-")[1])+1)+"-10/"+totalNoOfDocuments+"");

			srchRslt = searchResult.getJSONObject("response").getJSONArray("docs");

		}
		else{
			searchResult=new JSONObject();
		}
		session.setAttribute("searchResult",searchResult);
		out.write(srchRslt.toString().getBytes());
		out.flush();
	}



	@RequestMapping(value="autoSuggest.htm" ,method=RequestMethod.GET)
	public void autoSuggest(HttpServletRequest request,OutputStream out) throws Exception {
		String methodName="autoSuggest";
		System.out.println("coming 1");
		String queryTerm=request.getParameter("query")==null?"ge":request.getParameter("query").trim().toLowerCase();
		JSONObject  searchResult=phibaseSearchService.autoSuggest(queryTerm);
		System.out.println("searchResult:"+searchResult);
		out.write(searchResult.toString().getBytes());
		out.flush();



	}

	@RequestMapping(value="autoSuggestAdvance.htm" ,method=RequestMethod.GET)
	public void autoSuggestAdvance(HttpServletRequest request,OutputStream out) throws Exception {
		String methodName="autoSuggestAdvance";

		String queryTerm=request.getParameter("query")==null?"ge":request.getParameter("query").trim().toLowerCase();
		String suggestField=request.getParameter("suggestField")==null?"suggest":request.getParameter("suggestField");
		JSONObject  searchResult=phibaseSearchService.autoSuggestAdvance(queryTerm,suggestField);
		out.write(searchResult.toString().getBytes());
		out.flush();

	}
}
