function refineSearch(){
	
	var refineValues = new Object()
	var disPhenotypeMutant=document.refineSearchForm.Mutant_phenotype;
	var diseaseName=document.refineSearchForm.Disease;
	var litYear=document.refineSearchForm.Year;
	var disExperimentalEvidence=document.refineSearchForm.Experimental_technique;
	var gnName=document.refineSearchForm.Gene;
	var disMultipleMutation=document.refineSearchForm.Multiple_mutation;
	var pathogenSpecies=document.refineSearchForm.Pathogen_species;
	var hstExperimentalSpecies=document.refineSearchForm.Host_species;
	refineValues=getValueFromSelect(disPhenotypeMutant,"Mutant_phenotype",refineValues)
	refineValues=getValueFromSelect(diseaseName,"Disease",refineValues)
	refineValues=getValueFromSelect(litYear,"Year",refineValues)
	refineValues=getValueFromSelect(disExperimentalEvidence,"Experimental_technique",refineValues)
	refineValues=getValueFromSelect(gnName,"Gene",refineValues)
	refineValues=getValueFromSelect(disMultipleMutation,"Multiple_mutation",refineValues)
	refineValues=getValueFromSelect(pathogenSpecies,"Pathogen_species",refineValues)
	refineValues=getValueFromSelect(hstExperimentalSpecies,"Host_species",refineValues)
	
	
	if(1>0){
		var query= new Object();
		query.refinedFields=refineValues;
		
		var mainQuery=document.searchForm.queryTerm.value;
		document.refineSearchForm.queryTerm.value=mainQuery;
		//alert(query)
		document.refineSearchForm.refinedQuery.value=JSON.stringify(query);
		//alert(JSON.stringify(query))
		document.refineSearchForm.action="searchFacet.htm?queryTerm="+escape(mainQuery)+"&refinedQuery="+escape(query);
		document.refineSearchForm.submit();
	}
	else{
		alert("Please select atleast one facet")
	}
}

function submitBasicSearchForm(){
	var x=document.searchForm.queryTerm.value;
	if(x==undefined || x=='') {
		alert("Please enter a query");
	} else {
		document.searchForm.submit();
	}
}


function getValueFromSelect(name,field,refineValues){
	 var select_val="";
	 if(name!=undefined){
		
		 if(name.length==undefined){
			 var nameArray= new Array();
			 if(name.checked==true){
				// refineValues[refineLength]=field+":\""+name.value+"\"";
				 nameArray.push(name.value)
				 refineValues[field]=nameArray;
				 
			 }
				 
		 }
		 else{ 
			 var nameArray= new Array();
			 for(var j=0;j<name.length;j++){
				 
				  if(name[j].checked==true){
				   //select_val=field+":\""+name[j].value+"\"";
				   //refineValues[refineLength]=select_val;
				   nameArray.push(name[j].value)
				   //refineLength++;
				  }
	
			 }
			 if(nameArray.length>0)
			 refineValues[field]=nameArray;
			 
		 }
	 }
	 return refineValues;
}

function checkQueryfields(refinedQuery){
	
	var refineValues =new Array();
	if(refinedQuery.refinedFields!=null){		
		refinedQuery=JSON.parse(JSON.stringify(refinedQuery))		
		for(var i in refinedQuery.refinedFields){			
			for(j in refinedQuery.refinedFields[i]){			
				setValueToSelect(i, refinedQuery.refinedFields[i][j])
			}
		}		
	}
	
	
}

function setValueToSelect(field,val){
	 var select_val=""; 
	 var name = document.getElementsByName(field)
	
		  for(var j=0;j<name.length;j++){
			  if(name[j].value==val){
				  name[j].checked=true;			   
			  }

		 }
	 }

function resetForm(){
	document.searchForm.queryTerm.value=""
}

function advanceSearch(){
	var queryObj=getFieldJsonString();
	if(queryObj!=""){		
		document.advanceSearchForm.action="searchFacet.htm";
		document.advanceSearchForm.queryTerm.value=queryObj;
		document.advanceSearchForm.submit();
	}else{
		alert("Please fill input field for Advance Search");
	}	
}

function getFieldJsonString(){
	
	var queryObj="";
	var fieldNames=["GN_NAME","DISEASE_NAME","HOST_SPECIES","PATHOGEN_SPECIES","Anti_infective_agent","MUTANT_PHENOTYPE","EXPERIMENTAL_TECHNIQUE","Host_target"];
	var fieldNotBlankNames=new Array();
	for(var i=0,j=0;i<fieldNames.length;i++){
		var fieldValue=document.getElementById(fieldNames[i]).value;
		if(fieldValue!=""){
			fieldNotBlankNames[j]=fieldNames[i];
			j++;
		}
	}
	
	for(var i=0;i<fieldNotBlankNames.length;i++){		
		var fieldValue=document.getElementById(fieldNotBlankNames[i]).value;
	
	if(fieldValue!=""){
			if(i!=fieldNotBlankNames.length-1){
				var fieldSelect=document.getElementById(fieldNotBlankNames[i]+"_SelectId").value;
				queryObj=queryObj+fieldNotBlankNames[i]+":\""+fieldValue.trim()+"\" "+fieldSelect+" ";
			}			
			else{
				queryObj=queryObj+fieldNotBlankNames[i]+":\""+fieldValue.trim()+"\"";
			}
			
	}
	}
	
	return queryObj;
}

function advanceSearchLink(){
	document.searchForm.action="advancedSearch.htm";
	document.searchForm.submit();
}

function validateTerms(){
	var cheked=document.getElementById("check").checked;
	if(!cheked){
		alert("Please Accept the Terms and Conditions");
	}else{
		
		document.termCondForm.action="termCondtion.htm";
		document.termCondForm.method="POST";
		document.termCondForm.submit();
	}	
}

function returnPrevious(){
	document.termCondForm.action="downloadLinkBack.htm";
	document.termCondForm.method="POST";
	document.termCondForm.submit();
}

function searchFacetLink(){
	var mainQuery=document.searchForm.queryTerm.value;	
	document.searchForm.action="searchFacet.htm";	
	document.searchForm.submit(); 
}

function submitSearchForm(frmNme){
	var qry=document.forms[frmNme].queryTerm.value;
	
	if( qry!=undefined && qry.trim() != '' ) {
		document.forms[frmNme].submit();		
	}
}

function validateSpotlightEntryForm() {
	var validExt = ['jpeg','jpg','png']
	
	var frm = document.spotlightEntryForm;
	var title=frm.title.value;
	var desc=frm.description.value;
	var image=frm.image.value;
	var id = frm.spotlightId.value; 
	
	var arr=[];
	var arr2=[];
	
	if(title==undefined||title==''){
		arr.push('Title');
	}
	
	if(desc==undefined||desc==''){
		arr.push('Description');
	}
	
	if( id == undefined || id=='') {
		if(image==undefined||image==''){
			arr.push('Image');
		} else {
			var imgext = image.split('.');
			if(validExt.indexOf(imgext[imgext.length-1]) == -1){
				arr2.push("Image not supported")
			}
		}
	}	
	
	if(arr.length!=0){
		arr2.push(arr+" cannot be blank")
	}
	
	if(arr2.length==0){
		frm.submit();
	} else {
		alert(arr2)
	}
}

function deleteSpotLight(id){
	url = "spotLightdeleteSpotlight.htm?id="+id;
	$.ajax({
		url : url,
		type : "GET",
		dataType : "text",
		success : function(response) {
			if( response > 0)
			$('#rw_'+response).remove();
		},
		error : function(e) {
			alert("Error  :" + e);
			console.log(e)
		}
	})
}

function getSpotLight(op){
	var spotId = $('#spotLgtId').val();
	
	if(op=='next') {
		spotId = +spotId + 1;
	}if(op=='previous') {
		spotId = spotId-1;
	}	
	if( spotId>0){
		var url="getSpotlight.htm?id="+spotId;
		$.ajax({
			url : url,
			type : "GET",
			dataType : "json",
			success : function(response) {
				if(response != '' && response != null) {
					//var rsp = JSON.parse(response)
					rsp=response;
					$('#spotLgtId').val(rsp.id)
					$('#spotLgtImg').attr('src',rsp['imageStr']);
					$('#spotLgtTitle').html(rsp.title)
					$('#spotLgtDesc').html(rsp.description)
					$('#spotLgtDate').html(rsp.date)
				}				
			},
			error : function(e) {
				alert("Error  :" + e);
				console.log(e)
			}
		})
	}	
}

function editSpotLight(id,title,desc){
	var frm = document.spotlightEntryForm;
	frm.spotlightId.value=id
	frm.title.value = title;
	frm.description.value = desc;
}