<%@page import="java.util.Iterator"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.commons.lang.StringEscapeUtils"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

	<%Map modelMap=(Map)request.getAttribute("SEARCH_MODEL")==null?new HashMap():(Map)request.getAttribute("SEARCH_MODEL");
JSONObject JsonObjOld = (JSONObject)modelMap.get("SEARCH_RESULT")==null?null:(JSONObject)modelMap.get("SEARCH_RESULT");
String  refinedQuery=(String)request.getAttribute("refinedQuery")==null?"*:*":(String)request.getAttribute("refinedQuery");
String searchResult=URLDecoder.decode((String)session.getAttribute("searchResult"),"UTF-8");

JSONObject JsonObj = new JSONObject(searchResult);
%>
	
	<% if(null!=JsonObj && !searchResult.equals("{}")){
		//String facetString="{\"facet_counts\": {\"facet_queries\": {},\"facet_fields\": {\"Gene\": [],\"Host_species\": [],\"Pathogen_species\": [],\"Disease\": [],\"Mutant_Phenotype\": [],\"Exp_Technique\": [],\"Multiple_mutation\": [],\"Year\": []}}}";
		//JsonObj = new JSONObject(facetString);
	}else{
		String facetString="{\"facet_counts\": {\"facet_queries\": {},\"facet_fields\": {\"Gene\": [],\"Host_species\": [],\"Pathogen_species\": [],\"Disease\": [],\"Mutant_Phenotype\": [],\"Exp_Technique\": [],\"Multiple_mutation\": [],\"Year\": []}}}";
		 JsonObj = new JSONObject(facetString);
	}
	JSONObject facetObj= JsonObj.getJSONObject("facet_counts");
	JSONObject fieldObj= facetObj.getJSONObject("facet_fields");
	
	%> 
	
		<script src='js/phibase.js'></script>
	
	
	<form name="refineSearchForm" >
	<input type="hidden" name="refinedQuery">
	<input type="hidden" name="queryTerm">
	<div class="sidebar" style="width:25%; float:left">
				<div class="menu_box_list">
				      		<ul> 
								<li class="sideHead">	
									<input  id="gobutton" name="" type="button" value="REFINE SEARCH" onclick="javaScript:refineSearch()" style="width:110px; height:30px; margin:0px; padding-left:1px; padding-right:1px; float:right; background:#1165a4; cursor:pointer; color:#ffffff; font-size:10px; font-weight:bold" />
									<input type="button"  value="RESET" id="gobutton" name="" onclick="javaScript:searchFacetLink()" style="width:60px; height:30px; margin:0px 5px 0px 0px; float:right; background:#1165a4; cursor:pointer; color:#ffffff; font-size:11px; font-weight:bold" />
								</li>
							</ul>
									
								<% 
		
								Iterator<String> keys = fieldObj.keys();
								
								  while( keys.hasNext() ){
							          	String key = (String)keys.next();
							          out.print("<div id='"+key+"' style='display:block;' ><p id='sideHead2' style='margin:0px; padding:0px 0px 0px 6%'><b>"+key.replaceAll("_"," ")+"</b></p></div>");
							          out.print("<div  style='display:block;height:150px; margin-bottom:2px; overflow:auto' ><ul>");
							        
										JSONArray keysArray= fieldObj.getJSONArray(key);
										boolean greaterThan=false;
										if(key.replaceAll("_"," ").equals("Year")){
											for(int i=keysArray.length()-2;i>=0;i=i-2){
												String keyObj=StringEscapeUtils.escapeHtml(keysArray.get(i).toString());
												if(!"".equals(keyObj) && (!"no data found".equals(keyObj) && !"no".equals(keyObj)))
												out.print("<li> <p style='margin-top:0px; margin-bottom:0px; padding-top:0px; padding-bottom:0px; padding-left:25px'><input  name='"+key+"' type='checkbox' value='"+keyObj +"'class='boxadj'>&nbsp;"+keyObj +"("+keysArray.get(i+1)+") </p></li>\n");
												
											}
										}else{
											for(int i=0;i<keysArray.length();i=i+2){
												String keyObj=StringEscapeUtils.escapeHtml(keysArray.get(i).toString());
												if(!"".equals(keyObj) && (!"no data found".equals(keyObj) && !"no".equals(keyObj)))
												out.print("<li> <p style='margin-top:0px; margin-bottom:0px; padding-top:0px; padding-bottom:0px; padding-left:25px'><input  name='"+key+"' type='checkbox' value='"+keyObj +"'class='boxadj'>&nbsp;"+keyObj +"("+keysArray.get(i+1)+") </p></li>\n");
												
											}
										}
										
											out.print("</ul>");
											
											out.print("</div>");
											
							        }
								%>


							<ul> 
								<li class="sideHead">	
									<input  id="gobutton" name="" type="button" value="REFINE SEARCH" onclick="javaScript:refineSearch()" style="width:110px; height:30px; margin:0px; padding-left:1px; padding-right:1px; float:right; background-color:#1165a4; cursor:pointer; color:#ffffff; font-size:10px; font-weight:bold" />
									<input type="button"  value="RESET" id="gobutton" name="" onclick="javaScript:searchFacetLink()" style="width:60px; height:30px; margin:0px 5px 0px 0px; float:right; background:#1165a4; cursor:pointer; color:#ffffff; font-size:11px; font-weight:bold" />
								</li>
							</ul>
				    		<div class="clear"></div>
	      </div>

		</div>

</form>
<script>

 checkQueryfields(<%=refinedQuery%>); 
 
 function hideMore(id){
	 document.getElementById(id).style.display='none'
 }
 
 function showMore(id){
	 document.getElementById(id).style.display='block'
 }
</script>
