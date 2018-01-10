package com.molcon.phibase.service;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.molcon.phibase.api.exception.ResourceNotFoundException;
import com.molcon.phibase.bean.QueryDetailsBean;
import com.molcon.phibase.util.SolarUtill;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * Created by ameet.n on 6/14/17.
 */

@Service
public class ApiService {

    Logger logger = LoggerFactory.getLogger(ApiService.class);
    
    @Autowired 
    Gson gson;

    public QueryDetailsBean getDocCountForQuery(String query) {
        
    	String uuid = UUID.randomUUID().toString();
    	QueryDetailsBean queryDetailsBean = new QueryDetailsBean(uuid, query);
    	
    	String solrResult = "";
    	
        String searchType = "query";
        JSONObject jsonObject = null;
       
        int numFound = 0;        

        query = SolarUtill.formQuery(query);
        
        try {
        	solrResult = SolarUtill.getSearchData(query, "post", searchType);
            
            jsonObject = new JSONObject(solrResult); 
            numFound = jsonObject.getJSONObject("response").getInt("numFound");

        } catch (Exception e) {
            logger.error("Exception", e);
        }
        
        queryDetailsBean.setDocCount(numFound);
        
        return queryDetailsBean;
    }
    
    public List<String> getPhIdsForQueryId(String query, int start, int offset) {
    	
    	List<String> phiIdsList = new ArrayList<>();
    	
		String result = "";
		String searchType = "query";
		JSONObject jsonObject = null;

		query = SolarUtill.formQuery(query);

		try {
			
			result = SolarUtill.getPhIdsForQueryId(query, "post", searchType, start, offset);
			jsonObject = new JSONObject(result);		
			
			JSONArray docs = (JSONArray) jsonObject.getJSONObject("response").getJSONArray("docs");
			
			for(int i=0;i<docs.length();i++) {
				JSONObject phiIdJson = (JSONObject) docs.get(i);
				phiIdsList.add(phiIdJson.getString("Phibase_accession_ID"));
			}

		} catch (Exception e) {
			logger.error("Exception", e);
		}
		return phiIdsList;
	}

    public String getQuery(String queryTerm) {

        StringBuffer finalQuery = new StringBuffer();
        String[] queryTermArr = queryTerm.split("\\s+");

        for (String query : queryTermArr) {
            if (query.matches("(OR|AND|or|and|not|NOT)")) {
                finalQuery.append(query);
                finalQuery.append(" ");
            } else {
                String[] subQuery = query.split(":");
                if (subQuery.length > 1) {
                    if (subQuery[0].toLowerCase().contains("phi")) {
                        finalQuery.append("\"" + query + "\"");
                        finalQuery.append(" ");
                    } else if (!subQuery[1].toLowerCase().startsWith("\"")) {
                        finalQuery.append(subQuery[0]);
                        finalQuery.append(":");
                        finalQuery.append("\"" + subQuery[1] + "\"");
                        finalQuery.append(" ");

                    } else if (subQuery[1].toLowerCase().startsWith("\"")) {
                        finalQuery.append(subQuery[0]);
                        finalQuery.append(":");
                        finalQuery.append(subQuery[1]);
                        finalQuery.append(" ");

                    }
                } else {
                    finalQuery.append("\"" + query + "\"");
                    finalQuery.append(" ");
                }
            }
        }
        return queryTerm;
    }


    public void replaceMultipleMutantWithGene(JSONObject jsonObject) throws Exception {

        if (null != jsonObject) {
            JSONObject facetObj = jsonObject.getJSONObject("facet_counts");
            JSONObject fieldObj = facetObj.getJSONObject("facet_fields");
            Iterator<String> keys = fieldObj.keys();
            while (keys.hasNext()) {
                String key = (String) keys.next();
                if (key.equals("Multiple_mutation")) {
                    JSONArray keysArray = fieldObj.getJSONArray(key);

                    for (int i = 0; i < keysArray.length(); i = i + 2) {
                        String result = "";
                        String query = "";
                        String keyObj = (String) keysArray.get(i);

                        if (keyObj.equals("no") || keyObj.equals(""))
                            continue;

                        String[] keyObjArray = keyObj.split(";");
                        String allGene = "";
                        for (String arrKey : keyObjArray) {

                            query = "Phibase_accession_ID:\"" + arrKey.trim() + "\"";

                            try {
                                result = SolarUtill.getSearchGeneForMultipleMutation(query, "post");
                            } catch (Exception e) {
                                logger.error("Exception", e);
                            }
                            JSONObject resultJson = new JSONObject(result);
                            JSONArray srchRslt = new JSONArray();
                            srchRslt = resultJson.getJSONObject("response").getJSONArray("docs");

                            if (srchRslt.length() != 0) {
                                Object gene = srchRslt.getJSONObject(0).get("Gene");
                                allGene += gene + "; ";

                            }
                        }
                        keysArray.put(i, allGene.replaceAll(";\\s$", ""));
                    }
                }
            }
        }
    }
    
    public void replaceGeneWithMultipleMutation(JSONArray array) {

		for (int i = 0; i < array.length(); i++) {
			String allMultipleMutation = "";

			String keyObj = (String) array.get(i);

			String[] keyObjArray = keyObj.split(";");
			String query = "";
			String result = "";
			for (String arrKey : keyObjArray) {
				query = "Gene:" + arrKey;

				try {
					result = SolarUtill.getSearchMultipleMutationForGene(query, "post");
				} catch (Exception e) {
					logger.error("Exception :" + e.getMessage());
					logger.error("Exception", e);
				}
				JSONObject resultJson = new JSONObject(result);
				JSONArray srchRslt = new JSONArray();
				srchRslt = resultJson.getJSONObject("response").getJSONArray("docs");

				if (srchRslt.length() != 0) {
					String multipleMutation = (String) srchRslt.getJSONObject(0).get("Phibase_accession_ID");
					allMultipleMutation += multipleMutation + "; ";

				}
			}
			array.put(i, allMultipleMutation.replaceAll(";\\s$", ""));
		}
	}
    
    public void replaceMultipleMutantGeneInResponse(JSONObject jsonObject) {

		if (null != jsonObject) {
			JSONArray resultResponse = new JSONArray();

			resultResponse = jsonObject.getJSONObject("response").getJSONArray("docs");

			for (int i = 0; i < resultResponse.length(); i++) {
				JSONObject fieldObj = new JSONObject();
				fieldObj = resultResponse.getJSONObject(i);
				Iterator<String> keys = fieldObj.keys();
				while (keys.hasNext()) {
					String key = (String) keys.next();
					if (key.equals("Multiple_mutation")) {
						String multipleMutaionVal = fieldObj.getString(key);
						if (multipleMutaionVal.equals("no") || multipleMutaionVal.equals(""))
							continue;
						String[] multipleMutaionValArray = multipleMutaionVal.split(";");
						String allGene = "";
						String result = "";
						String query = "";
						for (String arrKey : multipleMutaionValArray) {

							query = "Phibase_accession_ID:\"" + arrKey.trim() + "\"";

							try {
								result = SolarUtill.getSearchGeneForMultipleMutation(query, "post");
							} catch (Exception e) {
								logger.error("Exception", e);
							}
							JSONObject resultJson = new JSONObject(result);
							JSONArray srchRslt = new JSONArray();
							srchRslt = resultJson.getJSONObject("response").getJSONArray("docs");

							if (srchRslt.length() != 0) {
								Object gene = srchRslt.getJSONObject(0).get("Gene");
								allGene += gene + "; ";

							}
						}
						fieldObj.put("Multiple_mutation", allGene.replaceAll(";\\s$", ""));

					}

				}
			}
		}
	}
    
    public List<JsonElement> getDocByPhiId(String phiId) throws Exception {
		
		List<JsonElement> details = new ArrayList<>();
		String result = SolarUtill.getDocByPhiId(phiId);
		
		JsonParser jsonParser = new JsonParser();
		JsonObject jsonObject = jsonParser.parse(result).getAsJsonObject();
		
		if( null != jsonObject ) {
			
			JsonArray docs = jsonObject.get("response").getAsJsonObject().get("docs").getAsJsonArray();
			if( docs.size() > 0 ) {
				for( int i=0; i<docs.size(); i++ ) {
					details.add(docs.get(i));
				}
			}
		}		
		return details;
	}

	public List<Map<String, String>> getFastaJson(String phiId) throws IOException {		
		String aaSequence = "";
		
		String solrResult = SolarUtill.getAASequenceForAPhiId(phiId);
        JSONObject jsonObject = new JSONObject(solrResult);
		JSONArray docs = (JSONArray) jsonObject.getJSONObject("response").getJSONArray("docs");
		
		List<Map<String, String>> fastaJsons = new ArrayList<>();
		Set<String> sequenceSet = new HashSet<>();
		for(int i=0; i<docs.length();i++){			
			JSONObject aaSequenceJson = (JSONObject) docs.get(i);
			aaSequence = aaSequenceJson.getString("AA_Sequence");
			if(!aaSequence.toUpperCase().equals("NA") && sequenceSet.add(aaSequence)){
				Map<String, String> fastaJson = new HashMap<>();
				fastaJson.put("head", "seq"+(i+1));
				fastaJson.put("seq", aaSequence);
				fastaJsons.add(fastaJson);
			}
		}
		return fastaJsons; 
	}
}
