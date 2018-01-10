<%@page import="java.util.Iterator"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<html>
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

		
	</style>

<%
Map modelMap=(Map)request.getAttribute("SEARCH_MODEL")==null?new HashMap():(Map)request.getAttribute("SEARCH_MODEL");
JSONObject JsonObj = (JSONObject)modelMap.get("SEARCH_RESULT")==new JSONObject()?null:(JSONObject)modelMap.get("SEARCH_RESULT");

JSONObject responseObj= JsonObj.getJSONObject("response")==null?new JSONObject():JsonObj.getJSONObject("response");
JSONArray docsArray= responseObj.getJSONArray("docs")==null?new JSONArray():responseObj.getJSONArray("docs");
JSONArray finalArray= new JSONArray();
for(int i=0;i<docsArray.length();i++){
	JSONObject jobj=docsArray.getJSONObject(i);
	JSONObject newJson=new JSONObject();
	newJson.put("GN_NAME",jobj.get("GN_NAME"));
	finalArray.put(newJson);
}

%>

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
		dojo.require("dojox.grid.DataGrid");
		dojo.require("dijit.form.Button");
		dojo.require("dojo._base.lang");
		dojo.require('dojox.grid.DataGrid');
		dojo.require('dojo.data.ItemFileWriteStore');	
		dojo.require('dijit.dijit');
		dojo.require('dojo.domReady!');
		dojo.require('dojox.grid.EnhancedGrid');
		dojo.require("dojox.grid.enhanced.plugins.Pagination")
	</script>
	

	
	<script type="text/javascript">
	
	
			
			dojo.addOnLoad(function() {

		
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
				function formatDetail(value, inRowIndex){					
					var rowItem=dijit.byId('grid').getItem(inRowIndex)
					
					 var bc = new dijit.layout.BorderContainer({
					        style: "height: 600px; width: 950px;"
					    });
				
					 var bc1 = new dijit.layout.BorderContainer({
					        style: "height: 300px;",
					        region: "top"
					    });
					 
					var geneTab = new dijit.layout.TabContainer({
						region: "left",
						style: "height:100px;width:320px;",
				        
				    }, "");

				    var geneContent = new dijit.layout.ContentPane({
				         title: "Gene",
				         
				         
				         content: "<span style=\"font-weight:bold\">GENE NAME :</span> "+rowItem.GN_NAME +
				         			"</br><span style=\"font-weight:bold\">ACCESSION_ID :</span>"+rowItem.PHIBASE_ACCESSION_ID  +
				         			"</br><span style=\"font-weight:bold\">LOCUS_ID : </span>"+rowItem.GN_LOCUS_ID+
				         			"</br><span style=\"font-weight:bold\">PROTEIN_ID : </span>"+rowItem.GN_PROTEIN_ID+
				         			"</br><span style=\"font-weight:bold\"> AA sequence #no EMBL# :</span>"+rowItem.AA_GN_SEQUENCE+
				         			"</br><span style=\"font-weight:bold\">NT sequence #no EMBL# : </span>"+rowItem.NT_GN_SEQUENCE+
				         			"<br/><span style=\"font-weight:bold\">Genomic sequence providing strain : </span>"+rowItem.GN_STRAIN+
				         			"<br/><span style=\"font-weight:bold\"> Genome location : </span>"+rowItem.GN_LOCATION+
				         			"<br/><span style=\"font-weight:bold\"> Specific modifications : </span>"+rowItem.GN_MODIFICATION+
				         			"<br/><span style=\"font-weight:bold\"> Modified protein/promoter unique ID: </span>"+rowItem.GN_MODIFIED_ID+
				         			"<br/><span style=\"font-weight:bold\"> Known interacting protein(s) in the pathogen : </span>"+rowItem.GN_INTERACTING_PARTNER+
				         			"<br/><span style=\"font-weight:bold\"> Interacting protein locus IDs : </span>"+rowItem.GN_INTERACTING_PARTNER_ID+
				         			"<br/><span style=\"font-weight:bold\">Function : </span>"+rowItem.GN_FUNCTION_NAME+
				         			"<br/><span style=\"font-weight:bold\">GO_annotation : </span>"+rowItem.GN_GO_ANNO_ID+
				         			"<br/><span style=\"font-weight:bold\">Database : </span>"+rowItem.GN_DATABASE+
				         			"<br/><span style=\"font-weight:bold\">Pathway_secretion_systems : </span>"+rowItem.GN_PATHWAY_SECRETION_SYSTEM+
				         			"<br/><span style=\"font-weight:bold\">Essential_gene_Lethal_knockout : </span>"+rowItem.ESS_GN_LETHAL_KNOCKOUT
				         			
				    });
				    geneTab.addChild(geneContent);			
				  // return tc

					var patogenTab = new dijit.layout.TabContainer({
						region: "center",
				        style: "height: 70px; width: 300px;"
				    }, "");

				    var patogenContent = new dijit.layout.ContentPane({
				         title: "pathogen",
				         content: "<span style=\"font-weight:bold\">PATHOGEN SPECIES :</span>"+rowItem.PATHOGEN_SPECIES +
				         "</br><span style=\"font-weight:bold\">TAXMONY ID :</span>"+rowItem.PG_SPECIES_TAXONOMY_ID+
				         "</br><span style=\"font-weight:bold\">Pathogen_NCBI_strain_Taxonomy_ID :</span>"+rowItem.PG_STRAIN_TAXONOMY_ID+
				         "</br><span style=\"font-weight:bold\">Experimental_strain :</span>"+rowItem.PG_EXPERIMENTAL_STRAIN  
				    });
				    patogenTab.addChild(patogenContent);	
				    
				    
				    //
				    var hostTab = new dijit.layout.TabContainer({
				    	region: "right",
				        style: "height: 70px; width: 330px;"
				    }, "");

				    var hostContent = new dijit.layout.ContentPane({
				         title: "host",
				         content: "<span style=\"font-weight:bold\">Experimental_host_species :</span>"+rowItem.HST_EXPERIMENTAL_SPECIES +
				         "</br><span style=\"font-weight:bold\">Host_descripton :</span>"+rowItem.HST_MONOCOT_DICOT_PLANT+
				         "</br><span style=\"font-weight:bold\">Host_NCBI_Taxonomy_ID :</span>"+rowItem.HST_NCBI_TAXONOMY_ID+
				         "</br><span style=\"font-weight:bold\">Host_strain_genotype :</span>"+rowItem.HOST_STRAIN_GENOTYPE+
				         "</br><span style=\"font-weight:bold\">Host genotype :</span>"+rowItem.HST_GENO_TYPE+
				         "</br><span style=\"font-weight:bold\">Host genotype-locus ID :</span>"+rowItem.HST_GENOTYPE_ID+
				         "</br><span style=\"font-weight:bold\">tissue_type :</span>"+rowItem.HST_TISSUE_TYPE
				    });
				    hostTab.addChild(hostContent);	
				    
				    
				    // 
						    var diseaseTab = new dijit.layout.TabContainer({
						    	region: "center",
					        style: "height: 70px; width: 300px;"
					    }, "");
			
					   
					    var diseaseContent = new dijit.layout.ContentPane({
					         title: "Disaese",
					         content:"<span style=\"font-weight:bold\"> DISEASE NAME :</span>"+rowItem.DISEASE_NAME +
					         "</br><span style=\"font-weight:bold\">Phenotype of Mutant :</span>"+rowItem.DIS_PHENOTYPE_MUTANT+
					         "</br><span style=\"font-weight:bold\">Multiple_mutation :</span>"+rowItem.DIS_MULTIPLE_MUTATION+
					         "</br><span style=\"font-weight:bold\">Disease_development_macroscopically_visible :</span>"+rowItem.DIS_DELV_MACROSCOPICALLY+
					         "</br><span style=\"font-weight:bold\">Inducer :</span>"+rowItem.DIS_INDUCER+
					         "</br><span style=\"font-weight:bold\">CAS :</span>"+rowItem.DIS_INDUCER_ID_CAS+
					         "</br><span style=\"font-weight:bold\">Tested Host_target :</span>"+rowItem.DIS_HOST_TARGET+
					         "</br><span style=\"font-weight:bold\">Tested first host target - locus ID :</span>"+rowItem.DIS_HOST_TARGET_ID+
					         "</br><span style=\"font-weight:bold\">Interaction phenotype :</span>"+rowItem.DIS_INTERACTION_PHENOTYPE+
					         "</br><span style=\"font-weight:bold\">Host_response :</span>"+rowItem.DIS_HOST_RESPONSE+
					         "</br><span style=\"font-weight:bold\">Experimental_evidence (stable)  :</span>"+rowItem.DIS_EXPERIMENTAL_EVIDENCE+
					         "</br><span style=\"font-weight:bold\">Experiment_evidence - Transient assays :</span>"+rowItem.DIS_EXP_EVIDENCE_TRANSIENT+
					         "</br><span style=\"font-weight:bold\">Comments :</span>"+rowItem.DIS_COMMENTS
					        
					    });
					    diseaseTab.addChild(diseaseContent);
					    
					    var diseaseProcessContent = new dijit.layout.ContentPane({
					         title: "Disaese Process",
					         content:"<span style=\"font-weight:bold\">Mating_defect_prior_to_penetration:</span>"+rowItem.DIS_MATING_DEFECT_PRI_PENETRATION +
					         "<br/><span style=\"font-weight:bold\">Pre_penetration_defect:</span>"+rowItem.DIS_PRE_PENETRATION_DEFECT +
					         "<br/><span style=\"font-weight:bold\">Penetration_defect:</span>"+rowItem.DIS_PENETRATION_DEFECT +
					         "<br/><span style=\"font-weight:bold\">Post_penetration_defect:</span>"+rowItem.DIS_POST_PENETRATION_DEFECT +
					         "<br/><span style=\"font-weight:bold\">Vegetative_spores:</span>"+rowItem.DIS_VEGETATIVE_SPORES +
					         "<br/><span style=\"font-weight:bold\">Sexual_spores:</span>"+rowItem.DIS_SEXUAL_SPORES+
					         "<br/><span style=\"font-weight:bold\">Spore_germination :</span>"+rowItem.DIS_SPORE_GERMINATION
					    });
					    diseaseTab.addChild(diseaseProcessContent);
					    
					    var diseaseInterventionContent = new dijit.layout.ContentPane({
					         title: "Disaese Intervension",
					         content: "<span style=\"font-weight:bold\">CAS:</span>"+rowItem.DIS_ANTI_INFECTIVE_AGENT_ID_CAS+
					         "<br/><span style=\"font-weight:bold\">Anti-infective (Chemical):</span>"+rowItem.DIS_ANTI_INFECTIVE_AGENT+
					         "<br/><span style=\"font-weight:bold\">Compound:</span>"+rowItem.DIS_ANTI_INFECTIVE_COMPOUND+
					         "<br/><span style=\"font-weight:bold\">Target site:</span>"+rowItem.DIS_ANTI_INFECTIVE_TARGET_SITE+
					         "<br/><span style=\"font-weight:bold\">Group name:</span>"+rowItem.DIS_ANTI_INFECTIVE_GROUP_NAME+
					         "<br/><span style=\"font-weight:bold\">Chemical group:</span>"+rowItem.DIS_ANTI_INFECTIVE_CHEMICAL_GP+
					         "<br/><span style=\"font-weight:bold\">Mode in planta:</span>"+rowItem.DIS_ANTI_INFECTIVE_MODE_PL+
					         "<br/><span style=\"font-weight:bold\">FRAC CODE:</span>"+rowItem.DIS_ANTI_INFECTIVE_FRAC_CODE+
					         "<br/><span style=\"font-weight:bold\">Additional comments  on anti-infectives:</span>"+rowItem.DIS_ANTI_INFECTIVE_COMMENT
					    });
					    diseaseTab.addChild(diseaseInterventionContent);
				    // 
					    var referenceTab = new dijit.layout.TabContainer({
					    	region: "left",
					        style: "height: 50px; width: 300px;"
					    }, "");

					   
					    var referenceContent = new dijit.layout.ContentPane({
					         title: "Reference",
					         content:"<span style=\"font-weight:bold\">LITERATURE ID :</span>"+rowItem.LITERATURE_ID +
					         "<br/><span style=\"font-weight:bold\"> LIT SOURCE :</span>"+rowItem.LIT_SOURCE +
					         "<br/><span style=\"font-weight:bold\">LIT YEAR :</span>"+rowItem.LIT_YEAR+
					         "<br/><span style=\"font-weight:bold\">DOI :</span>"+rowItem.DOI+
					         "<br/><span style=\"font-weight:bold\">Reference  :</span>"+rowItem.REFERENCE
					    });
					    referenceTab.addChild(referenceContent);
					    
				    bc1.addChild(geneTab);	
				    bc1.addChild(patogenTab);
				    bc1.addChild(hostTab);  
				    bc.addChild(bc1)
				    bc.addChild(diseaseTab);
				   bc.addChild(referenceTab);
				 //   tabDiv.addChild(tc1)
				   // tabDiv.addChild(tc)
				   
				   // tabArr[0]=tc;
					//return tabArr;
					//return tabDiv;
				return bc;
				}



				function getDetail(inRowIndex) {
					
					if (this.grid.expandedRows[inRowIndex]) {
						return "";
					} else {
						return "closed";
					}
				}

// json rest store













				


// json rst store ends

				 /*set up data store*/
					    var data = {

					      items: []
					    };
				 		var dataArray=<%=docsArray%>;

				 		for(var i=0;i< dataArray.length;i++){

				 			data.items.push( dataArray[i])
				 		}


					    var store = new dojo.data.ItemFileWriteStore({data: data});
					    var layout = {
								onBeforeRow: onBeforeRow,
								cells: [
									[
						 { 'name': '',  get:getCheck, formatter: formatCheck, styles: 'text-align: center;' },
						  { 'name': 'Gene Name',  'field': 'GN_NAME', 'width': '20%' },
						  { 'name': 'DIS_PHENOTYPE_MUTANT',  'field': 'DIS_PHENOTYPE_MUTANT', 'width': '20%' },
						  { 'name': 'PATHOGEN_SPECIES',  'field': 'PATHOGEN_SPECIES', 'width': '20%' },
						  { 'name': 'DISEASE_NAME',  'field': 'DISEASE_NAME', 'width': '20%' },
						  { 'name': 'HST_EXPERIMENTAL_SPECIES',  'field': 'HST_EXPERIMENTAL_SPECIES', 'width': '20%' }

									],
									[ { name: 'Detail', colSpan: 6, get: getDetail,formatter: formatDetail } ]
								]
							};


					    /*create a new grid*/
					    var grid = new dojox.grid.EnhancedGrid({
					        id: 'grid',
					        store: store,
					        selectionMode:'none',
					        structure: layout,
					        rowSelector: '20px',
					        height: "40em",
				        	 plugins: {
				                pagination: {
				                    pageSizes: ["10","20", "40", "60", "All"],
				                    description: true,
				                    sizeSwitch: true,
				                    pageStepper: true,
				                    gotoButton: true, 
				                            /*page step to be displayed*/
				                    maxPageStep: 4,
				                            /*position of the pagination bar*/
				                    position: "bottom"
				                }
				              }  
					    }, document.createElement('div'));

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


	<div id="gridDiv" style="width:100%;" >

	</div>

	
</html>