package com.molcon.phibase.controller;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.molcon.phibase.api.exception.CustomException;
import com.molcon.phibase.api.exception.ResourceNotFoundException;
import com.molcon.phibase.bean.QueryDetailsBean;
import com.molcon.phibase.service.ApiService;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Created by ameet.n on 6/14/17.
 */

@RestController
public class ApiController {

    Logger logger = LoggerFactory.getLogger(ApiController.class);
    
    @Autowired
    ServletContext context;

    @Autowired
    ApiService apiService;
    
    //http://localhost:9090/PHIBASE/search/avr2
    @RequestMapping(value = "/search/{query}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Map<String, Object>> search(@PathVariable("query") String query) {
    	
    	QueryDetailsBean queryDetailsBean = apiService.getDocCountForQuery(query);
    	Map<String, Object> result = new HashMap<>();
    	
    	result.put("queryId", queryDetailsBean.getQueryId());
    	result.put("docCount", queryDetailsBean.getDocCount());
    	
    	context.setAttribute(queryDetailsBean.getQueryId(), queryDetailsBean);
    	
        return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
    }
    //http://localhost:9090/PHIBASE/result/{queryId}
    @RequestMapping(value = "/result/{queryId}", 
    		produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<String>> getPhIds(@PathVariable("queryId") String queryId ) 
    				throws ResourceNotFoundException {
    	int start = 0;
    	int offset = 20;
    	List<String> phiIdsList = getPhiIdsForQueryId(queryId, start, offset);
    	
        return new ResponseEntity<List<String>>(phiIdsList, HttpStatus.OK);
    	
    }
	private List<String> getPhiIdsForQueryId(String queryId, int start, int offset) throws ResourceNotFoundException {
		QueryDetailsBean queryDetailsBean = (QueryDetailsBean) context.getAttribute(queryId);
    	
    	List<String> phiIdsList = new ArrayList<>();
    	
    	if( null == queryDetailsBean ) {
    		throw new ResourceNotFoundException();
    	} else {
    		String query = queryDetailsBean.getQuery();
    		phiIdsList = apiService.getPhIdsForQueryId(query,start,offset);
    	}
		return phiIdsList;
	}
	
	//http://localhost:9090/PHIBASE/result/{queryId}/start/0
    @RequestMapping(value = "/result/{queryId}/start/{startParam}", 
    		produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<String>> getPhIdsWithStart(@PathVariable("queryId") String queryId,
    		@PathVariable("startParam") int start ) 
    				throws ResourceNotFoundException {
    	int offset = 20;
    	List<String> phiIdsList = getPhiIdsForQueryId(queryId, start, offset);
    	
        return new ResponseEntity<List<String>>(phiIdsList, HttpStatus.OK);
    	
    }
    
  //http://localhost:9090/PHIBASE/result/{queryId}/start/0/offset/10
    @RequestMapping(value = "/result/{queryId}/start/{startParam}/offset/{offsetParam}", 
    		produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<String>> getPhIdsWithStartAndOffset(@PathVariable("queryId") String queryId,
    		@PathVariable("startParam") int start, @PathVariable("offsetParam") int offset  ) 
    				throws ResourceNotFoundException {
    	
    	List<String> phiIdsList = getPhiIdsForQueryId(queryId, start, offset);
    	
        return new ResponseEntity<List<String>>(phiIdsList, HttpStatus.OK);
    	
    }
    
    @RequestMapping(value = "/details/{phiid}")
    public void getPhiId(@PathVariable("phiid") String phiId, OutputStream out) 
    				throws Exception {
    	
    	List<JsonElement> details = new ArrayList<>();
		details = apiService.getDocByPhiId(phiId);
		if(details.isEmpty()) {
			throw new ResourceNotFoundException();
		}
	
		out.write(details.toString().getBytes());
		out.flush();
		
    }
    
    @RequestMapping(value = "/sequence/{phiid}")
    public ResponseEntity<List<Map<String, String>>> getFastaJson(@PathVariable("phiid") String phiId) 
    		throws IOException, ResourceNotFoundException {
    	
    	List<Map<String, String>> fastaJsons = apiService.getFastaJson(phiId);
    	if(fastaJsons.isEmpty()) {
    		throw new ResourceNotFoundException();
    	}
    	return new ResponseEntity<List<Map<String, String>>>(fastaJsons, HttpStatus.OK);
    }
}
