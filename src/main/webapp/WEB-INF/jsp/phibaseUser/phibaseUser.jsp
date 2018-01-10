<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.commons.lang.StringEscapeUtils"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">



<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
		<link rel="stylesheet" href="js/dijit/themes/claro/claro.css">
	<style type="text/css">
	
		@import "js/dojo/resources/dojo.css";
		@import "js/dijit/themes/claro/claro.css";
		@import "js/dojox/grid/enhanced/resources/claro/EnhancedGrid.css";
		@import "js/dojox/grid/enhanced/resources/EnhancedGrid_rtl.css";

		@import "js/dojox/grid/resources/claroGrid.css";
		body {
			font-size: 0.9em;
			font-family: Geneva, Arial, Helvetica, sans-serif;
		}
		.heading {
			font-weight: bold;
			padding-bottom: 0.25em;
		}

		.bigHello {
			height: 110px;
			line-height: 110px;
			text-align: center;
			font-weight: bold;
			font-size: 30px;
		}

		.dojoxGridContent {
					        overflow: auto;
					        max-width: 100%;
    						overflow-x: hidden;
					        
					    }
 .dojoxGridSortNode {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
    border: medium none;
    display: block;
    font-weight: bold;
    padding: 0;
    text-decoration: none;
    white-space: normal;
    font-weight: bold;
}
.claro .dojoxGridRowOver .dojoxGridCell {
      background-color: #ffffff;
     color:#434343; 
}

		
	</style>



<link rel="stylesheet" href="js/dijit/themes/claro/layout/ContentPane.css">
<link rel="stylesheet" href="js/dijit/themes/claro/layout/TabContainer.css">
<link rel="stylesheet" href="js/dijit/themes/claro/claro.css">
 
	<script type="text/javascript">
		dojo.require("dojo.parser");
		dojo.require("dojo.dom");
		dojo.require('dojo.dom-construct');
		dojo.require('dijit.layout.TabContainer');
		dojo.require('dijit.layout.BorderContainer');
		dojo.require('dijit.layout.ContentPane');
		dojo.require("dijit.form.Button");
		dojo.require("dojo._base.lang");
		dojo.require('dijit.dijit');
		dojo.require('dojo.domReady!');
		dojo.require('dojox.grid.EnhancedGrid');
		dojo.require("dojox.grid.enhanced.plugins.Pagination");
		dojo.require('dojo/store/JsonRest');
		dojo.require('dojo/store/Memory');
		dojo.require('dojo/store/Cache');
		dojo.require('dojo/data/ObjectStore');
	</script>
	
<%
request.setCharacterEncoding("utf-8");
String  queryTrm=(String)request.getAttribute("queryTerm")==null?"":(String)request.getAttribute("queryTerm");
String  refinedQueryTrm=(String)request.getAttribute("refinedQuery")==null?"":(String)request.getAttribute("refinedQuery");
%>
	<input type="hidden" id="queryTrmId" value="<%=StringEscapeUtils.escapeHtml(queryTrm)%>"/>
	<input type="hidden" id="refinedQueryTrmId" value="<%=refinedQueryTrm%>"/>
	<script type="text/javascript">
			
			var queryTrm =document.getElementById("queryTrmId").value;
			
			var refinedQueryTrm = '<%=refinedQueryTrm%>'
			
			dojo.addOnLoad(function() {
				
				//this.grid.connect(window, "onresize", "resize");
				function onBeforeRow(inDataIndex, inRow) {
					 inRow[1].hidden = (!this.grid || !this.grid.expandedRows || !this.grid.expandedRows[inDataIndex]);
				}

				function getCheck(inRowIndex) {
					
					if (!this.grid.expandedRows)
						this.grid.expandedRows = [ ];
					return {image: (this.grid.expandedRows[inRowIndex] ? 'minus.jpg' : 'plus.jpg'),
							show: (this.grid.expandedRows[inRowIndex] ? false : true)};
				}

				 var formatCheck = function(inValue, rowId, cellId, cellField){
					
		        	    return '<img src="images/' + inValue.image + '" onclick="toggle(' + rowId + ', ' + inValue.show + ')" height="11" width="11">';
				 }
				 
				 function getValueWithSpan(rowItem,key){
					 var value=rowItem[key];
					 var protienIdSource=rowItem['Protein_ID_source'];
					 var geneIdSource=rowItem['Gene_ID_source'];
					 
					 var genUrl="";
					 switch(geneIdSource){
					 case "BROAD":
						 //genUrl=
					 case "EMBL":
					default :	
					 }
					  
					// alert(key+" "+key.replace("/_/g"," "))
					var myPattern=new RegExp("_","g");
					
					 if(value=='no data found' || value==''){
						 return "";
					 }
					 	
					 else{
						 var link="";
						switch(key){
						case "Pmid":
							var valueArr=[];
							var linkArr=[];
							
							if(value.indexOf(";")!=-1){
								valueArr=value.split(";");
							}else{
								valueArr.push(value);
							}
							linkArr.push("<span style=\"font-weight:bold;line-height:23px; color:#434343;\">"+key.replace(myPattern," ") +":</span>");
							for(var i=0;i<valueArr.length;i++){
								linkArr.push("<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term="+valueArr[i]+"\" target=\"_blank\"><span>"+valueArr[i]+"</span></a>");
							}
							link+=linkArr.join("")+"<br/>";
							break;
						/* case "Gene_ID":
							link="<span style=\"font-weight:bold;color:#434343;line-height:23px\">"+key.replace(myPattern," ") +":</span> <a href=\"http://www.ncbi.nlm.nih.gov/gene/?term="+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break; */
						case "Protein_ID":
							link="<span style=\"font-weight:bold; color:#434343;line-height:23px\">"+key.replace(myPattern," ") +":</span> <a href=\"http://www.uniprot.org/uniprot/?query="+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break;
						case "Host_ID":
							link="<span style=\"font-weight:bold; color:#434343;line-height:23px\">"+key.replace(myPattern," ") +":</span> <a href=\"http://www.ncbi.nlm.nih.gov/taxonomy/?term="+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break;
						case "Pathogen_ID":
							link="<span style=\"font-weight:bold; color:#434343;line-height:23px\">"+key.replace(myPattern," ") +":</span> <a href=\"http://www.ncbi.nlm.nih.gov/taxonomy/?term="+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break;
						case "Pathogen_strain_ID":
							link="<span style=\"font-weight:bold; color:#434343;line-height:23px\">"+key.replace(myPattern," ") +":</span> <a href=\"http://www.ncbi.nlm.nih.gov/taxonomy/?term="+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break;
						case "Phibase_accession_ID":
							link="<span style=\"font-weight:bold; color:#434343; line-height:23px\">PHI-base entry:</span><span>"+value+"</span></br>"
							break;
							
						case "Mutant_phenotype":
							link="<span style=\"font-weight:bold; color:#434343; line-height:23px ; background-color:#cccccc\">Phenotype:</span><span style=\"background-color:#cccccc\">"+value+"</span></br>"
							break;
						case "Disease":
							link="<span style=\"font-weight:bold; color:#434343; line-height:23px \">Disease name:</span><span >"+value+"</span></br>"
							break;
						case "DOI":
							link="<span style=\"font-weight:bold; color:#434343;line-height:23px\">"+key.replace(myPattern," ") +
								":</span> <a href=\"http://dx.doi.org/"+value+"\" target=\"_blank\"><span>"+value+"</span></a></br>";
							break;							
						default : 							
							link="<span style=\"font-weight:bold; color:#434343; line-height:23px\">"+key.replace(myPattern," ") +":</span><span>"+value+"</span></br>"
						}
						
						return link;
							 
					 } 
				 }
				 
				 function formatValue(item){
					 if(item=='no data found')
		                    item=''
		                  return item;
				 }
				 function formatDetail(value, inRowIndex){					
					 var rowItem=dijit.byId('grid').getItem(inRowIndex)
					 var bc = new dijit.layout.BorderContainer({
					        style: "height: 400px; width: 100%;"
					    });
				
					 var bc1 = new dijit.layout.BorderContainer({
					        style: "height: 200px;width: 100%;",
					        region: "top"
					    });
					 
					var geneTab = new dijit.layout.TabContainer({
						region: "left",
						style: "width:40%;"
				        
				    }, "");
					
					var gContent=getValueWithSpan(rowItem,'Gene')+
					getValueWithSpan(rowItem,'Phibase_accession_ID')+                            
					getValueWithSpan(rowItem,'Gene_ID')+
					getValueWithSpan(rowItem,'Protein_ID')+
					//getValueWithSpan(rowItem,'AA_Sequence')+
					getValueWithSpan(rowItem,'NT_Sequence')+
					getValueWithSpan(rowItem,'Sequence_strain')+
					getValueWithSpan(rowItem,'Chr_location')+
				
					getValueWithSpan(rowItem,'Interacting_partener')+
					getValueWithSpan(rowItem,'Interacting_partener_ID')+
					getValueWithSpan(rowItem,'Gene_function')+
					getValueWithSpan(rowItem,'Go_anno_ID')+
					getValueWithSpan(rowItem,'Database')+
					getValueWithSpan(rowItem,'Pathway')+
					getValueWithSpan(rowItem,'Essential_gene')
					
					if(gContent != '') {
						var geneContent = new dijit.layout.ContentPane({
					         title: "Pathogen Gene",
					         content:gContent
					         			
					    });
					    geneTab.addChild(geneContent);	
					}
				    		
				    
					var allContent=getValueWithSpan(rowItem,'Modification')+
					getValueWithSpan(rowItem,'Modified_ID')+
					getValueWithSpan(rowItem,'Multiple_mutation')
					
					if(allContent != '') {
						 var alleleContent = new dijit.layout.ContentPane({
					         title: "Allele",
					         content:allContent
					    });
					    geneTab.addChild(alleleContent);		
					}
				    
				  // return tc

					var patogenTab = new dijit.layout.TabContainer({
						region: "center",
				        style: " width:40% ;"
				    }, "");
					
				  
				  	var patContent=getValueWithSpan(rowItem,'Pathogen_species')+
			         getValueWithSpan(rowItem,'Pathogen_ID')+
			         getValueWithSpan(rowItem,'Pathogen_strain')+
			         getValueWithSpan(rowItem,'Pathogen_strain_ID')
			         
			         if(patContent!=''){
			        	 var patogenContent = new dijit.layout.ContentPane({
					         title: "Pathogen",
					         content:patContent
					    });
					    patogenTab.addChild(patogenContent); 
			         }			    
				    
				    //
				    var hostTab = new dijit.layout.TabContainer({
				    	region: "right",
				        style: "width:30% ;"
				    }, "");
					
				    var hstContent=getValueWithSpan(rowItem,'Host_species')+
			         getValueWithSpan(rowItem,'Host_classification')+
			         getValueWithSpan(rowItem,'Host_ID')+
			         getValueWithSpan(rowItem,'Host_strain')+
			         getValueWithSpan(rowItem,'Genotype')+
			         getValueWithSpan(rowItem,'Genotype_ID')+
			         getValueWithSpan(rowItem,'Tissue')
				    
			         if(hstContent!='') {
			        	 var hostContent = new dijit.layout.ContentPane({
					         title: "Host",
					         content: hstContent
					    });
					    hostTab.addChild(hostContent);	
			         }

						    var diseaseTab = new dijit.layout.TabContainer({
						    	region: "center",
					            style: " width: 60%;"
					    }, "");
			
					   
						    var dsContent=getValueWithSpan(rowItem,'Mutant_phenotype')+
					         getValueWithSpan(rowItem,'Disease')+
					         getValueWithSpan(rowItem,'Tissue')+
					         
					         getValueWithSpan(rowItem,'Disease_manifestation')+					        
					         getValueWithSpan(rowItem,'Host_target')+
					         getValueWithSpan(rowItem,'Host_target_ID')+
					         getValueWithSpan(rowItem,'Interaction_phenotype')+
					         getValueWithSpan(rowItem,'Host_response')+
					         getValueWithSpan(rowItem,'Experimental_technique')+
					         getValueWithSpan(rowItem,'Experimental_evidence_transient')
					         
					         if(dsContent!='') {
					        	 var diseaseContent = new dijit.layout.ContentPane({
							         title: "PHI Phenotype",
							        content:dsContent
							        
							        
							    });
							    diseaseTab.addChild(diseaseContent);
					         }
					    
					    
					    var disProcContent = getValueWithSpan(rowItem,'Mating_defect')+
				         getValueWithSpan(rowItem,'Prepenetration_defect')+
				         getValueWithSpan(rowItem,'Penetration_defect')+
				         getValueWithSpan(rowItem,'Postpenetration_defect')+
				         getValueWithSpan(rowItem,'Vegetative_spores')+
				         getValueWithSpan(rowItem,'Sexual_spores')+
				         getValueWithSpan(rowItem,'Spore_germination')
					    
					   	if(disProcContent != '') {
					   		var diseaseProcessContent = new dijit.layout.ContentPane({
						         title: "Pathogen Phenotype",
						         content: disProcContent
						    });
					   	 diseaseTab.addChild(diseaseProcessContent);
					   	}
					    
					    var dsIntcontent=getValueWithSpan(rowItem,'CAS')+
	         			getValueWithSpan(rowItem,'Inducer')+
	         			getValueWithSpan(rowItem,'Chemical_accession')+
			         getValueWithSpan(rowItem,'Anti_infective_agent')+
			         getValueWithSpan(rowItem,'Anti_infective_compound')+
			         getValueWithSpan(rowItem,'Anti_infective_target_site')+
			         getValueWithSpan(rowItem,'Anti_infective_group_name')+
			         getValueWithSpan(rowItem,'Anti_infective_chemical_group')+
			         getValueWithSpan(rowItem,'Anti_infective_mode_in_planta')+
			         getValueWithSpan(rowItem,'Anti_infective_frac_code')+
			         getValueWithSpan(rowItem,'Anti_infective_comment');
					    
					    if(dsIntcontent!=''){
					    	var diseaseInterventionContent = new dijit.layout.ContentPane({
						         title: "CheBI/CAS",
						         content: dsIntcontent
						    });
						    diseaseTab.addChild(diseaseInterventionContent);
					    }
					    
				    // 
					    var referenceTab = new dijit.layout.TabContainer({
					    	region: "left",
					        style: " width: 40%;"
					    }, "");

					   
				    var refContent=getValueWithSpan(rowItem,'Pmid')+
			         getValueWithSpan(rowItem,'Ref_source')+
			         getValueWithSpan(rowItem,'Year')+
			         getValueWithSpan(rowItem,'DOI')+
			         getValueWithSpan(rowItem,'Author_reference');
				    
				    if(refContent !='') {
				    	var referenceContent = new dijit.layout.ContentPane({
					         title: "Reference",
					         content:refContent
					    });
					    referenceTab.addChild(referenceContent);
				    }
					    var comContent=getValueWithSpan(rowItem,'Comments');
					    if(comContent!=''){
					    	var commentsContent = new dijit.layout.ContentPane({
						         title: "Comments",
						         content: comContent
								       
						    });
						    referenceTab.addChild(commentsContent);
					    }
					    
					    
				  bc1.addChild(geneTab);	
				    bc1.addChild(patogenTab);
				    bc1.addChild(hostTab); 
				    
				    bc.addChild(bc1)
				    bc.addChild(diseaseTab);
				   bc.addChild(referenceTab);
				  
				return bc;
				 }
				
				function getDetail(inRowIndex) {
					 dijit.byId('grid').expandedRows[inRowIndex] = false;
					if (this.grid.expandedRows[inRowIndex]) {
						return "";
					} else {
						
						return "closed";
					}
				}

				
				 /*set up data store*/
						
				 	
						var action = "search.htm?queryTerm="+(queryTrm)+"&refinedQuery="+encodeURIComponent(refinedQueryTrm);
				 
						//alert(action);

					    var restStore = new dojo.store.JsonRest({
					        target: action
					       
					    });
						
					    memoryStoreBlog = new dojo.store.Memory({ idProperty: "label" });
					    var cacheStoreBlog = new dojo.store.Cache(restStore, memoryStoreBlog)
					    var restStoreBlog = new dojo.data.ObjectStore({ objectStore: cacheStoreBlog });

					  
					    var layout = {
							onBeforeRow: onBeforeRow,
								cells: [
									 [
							{ 'name': '',  get:getCheck, formatter: formatCheck, styles: ' text-align: left;background-color: #f3f3f3; color:blue;', 'width': '2%' },
						  { 'name': 'Pathogen Gene',  'field': 'Gene', 'width': '10%',  formatter: formatValue,noresize: true },
						  { 'name': 'Mutant Phenotype',  'field': 'Mutant_phenotype', 'font-size':'11px','width': '20%',formatter: formatValue,noresize: true },
						  { 'name': 'Pathogen Species',  'field': 'Pathogen_species', 'font-size':'11px', 'width': '20%',formatter: formatValue ,noresize: true},
						  { 'name': 'Disease',  'field': 'Disease', 'font-size':'11px', 'width': '20%',formatter: formatValue,noresize: true},
						  { 'name': 'Host Species',  'field': 'Host_species', 'font-size':'11px', 'width': '20%',formatter: formatValue ,noresize: true}


									],
									[ { name: 'Detail', colSpan: 6, get: getDetail,formatter: formatDetail } ]
								]
							};
						
						
					    /*create a new grid*/
					    var grid = new dojox.grid.EnhancedGrid({
					        id: 'grid',
					        store: restStoreBlog,
					        selectionMode:'none',
					        structure: layout,
					        //rowSelector: '20px',
					        loadingMessage: "Loading Data...",
					        noDataMessage: "No Results Found...",
					        canSort:false,
					        selectable: true,
					        //rowsPerPage: 10,
					        //autoHeight: true,
					       
					         //rowHeight:"50",
					        
					      height:"1500px",
					    	   plugins: {
					        		 pagination: {
					     				description: true,
					     				sizeSwitch: false,
					     				pageStepper:true,
					     				gotoButton: true,
					     				        /*page step to be displayed*/
					     				maxPageStep: 4,
					     				defaultPageSize:45,
					     				        /*position of the pagination bar*/
					     				position: "bottom"
					     			}
					              } 
				        	 
					    },document.createElement('div'));
					    
					        /*append the new grid to the div*/
					        grid.placeAt("gridDiv");
					       
					        
					        /*Call startup() to render the grid*/
					        grid.startup();
					       
					      

			});
			 
			function toggle(inIndex, inShow) {
				 
				 dijit.byId('grid').expandedRows[inIndex] = inShow;
				
				 dijit.byId('grid').updateRow(inIndex);
				 
				
				}
			
			

	</script>
</head>
<body class="claro">


	<div id="gridDiv" style="width:74%; float:left; margin-left:5px" >

	</div>

	
	
	
</html>
