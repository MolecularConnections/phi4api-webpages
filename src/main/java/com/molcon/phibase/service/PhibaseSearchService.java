/**
 * 
 */
package com.molcon.phibase.service;

import java.util.Iterator;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.molcon.phibase.util.SolarUtill;

/**
 * @author santosh
 * 
 */
@Service
public class PhibaseSearchService {
	Logger logger = Logger.getLogger(PhibaseSearchService.class);

	public JSONObject search(String queryTerm, String refinedQuery, int pageSize) {
		String result = "";
		String searchType = "query";
		JSONObject jsonObject = null;

		queryTerm = SolarUtill.formQuery(queryTerm);
		try {

			try {

				JSONObject getObj = new JSONObject(refinedQuery);

				if (null != getObj.getJSONObject("refinedFields")) {
					JSONObject refinedFieldsJsonObject = getObj.getJSONObject("refinedFields");
					Iterator<String> refinedFieldsJsonKeyIterator = refinedFieldsJsonObject.keys();

					while (refinedFieldsJsonKeyIterator.hasNext()) {

						String key = refinedFieldsJsonKeyIterator.next();
						JSONArray array = refinedFieldsJsonObject.getJSONArray(key);
						if (key.equals("Multiple_mutation")) {
							replaceGeneWithMultipleMutation(array);
						}
						String value = "(";
						for (int i = 0; i < array.length(); i++) {
							logger.info("values :" + array.get(i));

							if (i == 0)
								value += key + ":" + "\"" + array.get(i) + "\"";
							else
								value += " OR " + key + ":" + "\"" + array.get(i) + "\"";

						}
						value += ")";

						queryTerm += " AND " + value;
					}
				}

			} catch (JSONException e) {
				logger.info("exception :", e);
			}
			result = SolarUtill.getSearchData(queryTerm, "post", searchType, pageSize);
			
			
	
			
			jsonObject = new JSONObject(result);

			replaceMultipleMutantWithGene(jsonObject);
			replaceMultipleMutantGeneInResponse(jsonObject);

		} catch (Exception e) {
			logger.error("Exception", e);
		}
		return jsonObject;
	}

	public JSONObject search(String queryTerm, String refinedQuery) {
		String result = "";
		String searchType = "query";
		JSONObject jsonObject = null;

		queryTerm = SolarUtill.formQuery(queryTerm);
		
		try {

			try {

				JSONObject getObj = new JSONObject(refinedQuery);

				if (null != getObj.getJSONObject("refinedFields")) {

					JSONObject refinedFieldsJsonObject = getObj.getJSONObject("refinedFields");
					Iterator<String> refinedFieldsJsonKeyIterator = refinedFieldsJsonObject.keys();

					while (refinedFieldsJsonKeyIterator.hasNext()) {

						String key = refinedFieldsJsonKeyIterator.next();

						JSONArray array = refinedFieldsJsonObject.getJSONArray(key);

						if (key.equals("Multiple_mutation")) {
							replaceGeneWithMultipleMutation(array);
						}

						String value = "(";
						for (int i = 0; i < array.length(); i++) {
							logger.info("values :" + array.get(i));

							if (i == 0)
								value += key + ":" + "\"" + array.get(i) + "\"";
							else
								value += " OR " + key + ":" + "\"" + array.get(i) + "\"";

						}
						value += ")";
						queryTerm += " AND " + value;
					}
				}

			} catch (JSONException e) {
				logger.info("Json exception" + e.getMessage());
			}

			result = SolarUtill.getSearchData(queryTerm, "post", searchType);
			jsonObject = new JSONObject(result);

			replaceMultipleMutantWithGene(jsonObject);

		} catch (Exception e) {

			logger.error("Exception", e);
		}
		return jsonObject;
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
								logger.error("Exception :" + e.getMessage());
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
	
	//for our json
	/*public JSONObject autoSuggest(String queryTerm) {
		String result = "";
		String searchType = "auto";

		JSONObject jsonObject = null;
		JSONObject suggestObject = new JSONObject();
		System.out.println("coming 2");
		try {

			result = SolarUtill.getSearchData(queryTerm, "post", searchType);
			System.out.println("resultresult:"+result);
			jsonObject = new JSONObject(result);
			System.out.println("jsonObj:"+jsonObject);
			if (null != jsonObject.getJSONObject("spellcheck")) {
				JSONArray jsonArray = jsonObject.getJSONObject("spellcheck").getJSONArray("suggestions");
				suggestObject = jsonArray.getJSONObject(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception", e);
		}
		
		return suggestObject;
	}*/
	
	public JSONObject autoSuggest(String queryTerm) {
		String result = "";
		String searchType = "auto";

		JSONObject jsonObject = null;
		JSONObject suggestObject = new JSONObject();
		System.out.println("coming 2");
		try {

			result = SolarUtill.getSearchData(queryTerm, "post", searchType);
			System.out.println(queryTerm+",,resultresult:"+result);
			jsonObject = new JSONObject(result);
			System.out.println("jsonObj:"+jsonObject);
			if (null != jsonObject.getJSONObject("spellcheck")) {
				JSONObject jsonArray = jsonObject.getJSONObject("spellcheck").getJSONObject("suggestions");
				suggestObject = jsonArray.getJSONObject(queryTerm);  
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception", e);
		}
		
		return suggestObject;
	}

	public JSONObject autoSuggestAdvance(String queryTerm, String suggestField) {
		String result = "";

		JSONObject jsonObject = null;
		JSONObject suggestObject = new JSONObject();
		
		try {

			result = SolarUtill.getSearchDataAdvance(queryTerm, "post", suggestField);
			jsonObject = new JSONObject(result);
			
			if (null != jsonObject.getJSONObject("spellcheck")) {
				JSONArray jsonArray = jsonObject.getJSONObject("spellcheck").getJSONArray("suggestions");
				suggestObject = jsonArray.getJSONObject(1);
			}

		} catch (Exception e) {
			logger.error("Exception", e);
		}
		
		return suggestObject;
	}

	
}
