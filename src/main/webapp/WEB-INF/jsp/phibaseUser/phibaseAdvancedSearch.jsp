<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<script>dojoConfig = {parseOnLoad: true}</script>
	<script src='js/dojo/dojo.js'></script>
	<script src='js/phibase.js'></script>
	<script src='js/advanceSearch.js'></script>
	<script src='js/autoSuggestMultiple.js'></script>
	
	<link rel="stylesheet" href="js/dijit/themes/claro/claro.css">
	<script>
/* require([
    "dojo/store/Memory", "dijit/form/ComboBox", "dojo/domReady!"
], function(Memory, ComboBox){
    

    var geneComboBox = new ComboBox({
        id: "gene",
        name: "gene",
        value: "",
        store: geneStore,
        searchAttr: "name"
    }, "gene").startup();
    
    var diseaseComboBox = new ComboBox({
        id: "disease",
        name: "disease",
        value: "",
        store: diseaseStore,
        searchAttr: "name"
    }, "disease").startup();
}); */

function disableEnterKey(e){
	 
	//create a variable to hold the number of the key that was pressed     
	var key;
	 
	    //if the users browser is internet explorer
	    if(window.event){
	      
	    //store the key code (Key number) of the pressed key
	    key = window.event.keyCode;
	      
	    //otherwise, it is firefox
	    } else {
	      
	    //store the key code (Key number) of the pressed key
	    key = e.which;     
	    }
	      
	    //if key 13 is pressed (the enter key)
	    if(key == 13){
	    	
	    //do nothing
	    return false;
	      
	    //otherwise
	    } else {
	      
	    //continue as normal (allow the key press for keys other than "enter")
	    return true;
	    }
	      
	//and don't forget to close the function    
	} 
	</script>
<style>
#form-main{
	width:100%;

}

#form-div {

	width: 650px;

  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
  margin:0 auto;
}

.feedback-input {
	color:#3c3c3c;	
 	font-weight:500;
	font-size: 15px;
	border-radius: 5;
	line-height: 22px;
	background-color: #f3f3f3;
	padding: 5px 13px 6px 4px;

	width:70%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  border: 1px solid #ccc;
}

.feedback-input:focus{
	background: #fff;
	box-shadow: 0;
	border: 1px solid #3498db;
	color: #3498db;
	outline: none;
  padding: 5px 13px 6px 4px;
}

.focused{
	color:#30aed6;
	border:#30aed6 solid 1px;
}
.feedback-Select {
	color:#3c3c3c;	
 	font-weight:500;
	font-size: 15px;
	border-radius: 5;
	line-height: 22px;
	background-color: #f3f3f3;
	padding: 5px 13px 6px 4px;
	
	width:10%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  border: 1px solid #ccc;
}
textarea {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}

input:hover, textarea:hover,
input:focus, textarea:focus {
	background-color:white;
}

#button-blue{

	float:left;
	width: 100%;
	border: #fbfbfb solid 4px;
	cursor:pointer;
	background-color: #3498db;
	color:white;
	font-size:16px;
	padding-top:10px;
	padding-bottom:10px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;

  font-weight:700;
  ma
}

#button-blue:hover{
	background-color:  #3498db;
	color: #000000;
}
	
.submit:hover {
	color: #3498db;
}
	


</style>
<%Map advSearchFieldMap=(Map)request.getAttribute("advSearchFieldMap")==null?new HashMap():(Map)request.getAttribute("advSearchFieldMap");%>

   <div style="background: #f3f1f2">
	    <p style="padding:10px 0px 10px 12px; width:40%; text-align:left; float:left; font-weight:bold; font-size: 30px; color:#787878">Advanced Search</p>
	    <br />	    
	   <div class="clear"></div>	   
	</div>


<div style="width:74%; height:auto; float: left; margin:10px 10px 0 25%; font-size: 13px; text-align: left;">

	<form  name="advanceSearchForm" id="advanceSearchForm">
		<input type="hidden" name="queryTerm">
		
		 <p class="name">
			<span style="font-size: 16px; color: #0877D0;"> Gene :</span> <br/>
			<input	class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
							type="text" id="GN_NAME" name="GN_NAME" 
							value="<%=advSearchFieldMap.get("Gene")%>" onkeyup="lookAt('GN_NAME')" autocomplete="off" onKeyPress="return disableEnterKey(event)"
							onblur="javaScript:setTimeout(function(){setVisible('hidden','GN_NAME');}, 200);"/>
			
			<select id="GN_NAME_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_GN_NAME" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_GN_NAME" style="background:#F8F8F8;"></div>
			</div>
		 </p>
		<br>
		<p class="name">
			
			<span style="font-size: 16px; color: #0877D0;">Disease :</span> <br />

			<input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="DISEASE_NAME" name="DISEASE_NAME"
				value="<%=advSearchFieldMap.get("Disease")%>" onkeyup="lookAt('DISEASE_NAME')" autocomplete="off" onKeyPress="return disableEnterKey(event)" 
				onblur="javaScript:setTimeout(function(){setVisible('hidden','DISEASE_NAME');}, 200);"/>
			<select id="DISEASE_NAME_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_DISEASE_NAME" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_DISEASE_NAME" style="background:#F8F8F8;"></div>
			</div>
		</p>
		<br>
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;">Host :</span> <br />
			<input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="HOST_SPECIES" name="HOST_SPECIES"
				value="<%=advSearchFieldMap.get("Host_species")%>"  onkeyup="lookAt('HOST_SPECIES')" autocomplete="off" onKeyPress="return disableEnterKey(event)" 
				onblur="javaScript:setTimeout(function(){setVisible('hidden','HOST_SPECIES');}, 200);"/>
			<select id="HOST_SPECIES_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_HOST_SPECIES" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_HOST_SPECIES" style="background:#F8F8F8;"></div>
			</div>
		</p>
		<br>
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;"> Pathogen :</span> <br />
			<input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="PATHOGEN_SPECIES" name="PATHOGEN_SPECIES"
				value="<%=advSearchFieldMap.get("Pathogen_species")%>" onkeyup="lookAt('PATHOGEN_SPECIES')" autocomplete="off" onKeyPress="return disableEnterKey(event)"
				 onblur="javaScript:setTimeout(function(){setVisible('hidden','PATHOGEN_SPECIES');}, 200);"/>
			<select id="PATHOGEN_SPECIES_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_PATHOGEN_SPECIES" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_PATHOGEN_SPECIES" style="background:#F8F8F8;"></div>
			</div>
		</p>
<br>
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;"> Anti-Infective
				:</span> <br /> <input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="Anti_infective_agent" name="Anti_infective_agent"
				value="<%=advSearchFieldMap.get("Anti_infective_agent")%>" onkeyup="lookAt('Anti_infective_agent')" autocomplete="off" onKeyPress="return disableEnterKey(event)" 
					onblur="javaScript:setTimeout(function(){setVisible('hidden','Anti_infective_agent');}, 200);"/>
				<select id="Anti_infective_agent_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
				</select>
				<div class="shadow" id="shadow_Anti_infective_agent" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
					<div class="output" id="output_Anti_infective_agent" style="background:#F8F8F8;"></div>
				</div>
		</p>
<br>
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;">Phenotype : </span> <br />
			<input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="MUTANT_PHENOTYPE" name="MUTANT_PHENOTYPE"
				value="<%=advSearchFieldMap.get("Mutant_Phenotype")%>" onkeyup="lookAt('MUTANT_PHENOTYPE')" autocomplete="off" onKeyPress="return disableEnterKey(event)"
					onblur="javaScript:setTimeout(function(){setVisible('hidden','MUTANT_PHENOTYPE');}, 200);"/>
			<select id="MUTANT_PHENOTYPE_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_MUTANT_PHENOTYPE" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
					<div class="output" id="output_MUTANT_PHENOTYPE" style="background:#F8F8F8;"></div>
			</div>
		</p>
		<br>
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;"> Experimental
				Technique : </span> <br /> <input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="EXPERIMENTAL_TECHNIQUE" name="EXPERIMENTAL_TECHNIQUE"
				value="<%=advSearchFieldMap.get("Exp_Technique")%>" onkeyup="lookAt('EXPERIMENTAL_TECHNIQUE')" autocomplete="off" onKeyPress="return disableEnterKey(event)" 
				onblur="javaScript:setTimeout(function(){setVisible('hidden','EXPERIMENTAL_TECHNIQUE');}, 200);"/>
			<select id="EXPERIMENTAL_TECHNIQUE_SelectId" class="feedback-Select">
							<option value="AND">AND</option>
							<option value="OR">OR</option>
							<option value="NOT">NOT</option>
			</select>
			<div class="shadow" id="shadow_EXPERIMENTAL_TECHNIQUE" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_EXPERIMENTAL_TECHNIQUE" style="background:#F8F8F8;"></div>
			</div>
		</p>
		<br />
<!--  new changes start -->
		<p class="name">
			<span style="font-size: 16px; color: #0877D0;"> Host Target : </span> <br /> <input
				class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
				type="text" id="Host_target" name="Host_target"
				value="<%=advSearchFieldMap.get("Host_Target")%>" onkeyup="lookAt('Host_target')" autocomplete="off" onKeyPress="return disableEnterKey(event)" 
				onblur="javaScript:setTimeout(function(){setVisible('hidden','Host_target');}, 200);"/>
			<div class="shadow" id="shadow_Host_target" style="z-index:999; background:#F8F8F8; padding:10px; width:50%; border:1px solid #cccccc; line-height:20px">
				<div class="output" id="output_Host_target" style="background:#F8F8F8;"></div>
			</div>
		</p>
		<br />
<!--  -->		
		
		<div class="submit" align="center">
			<input type="button" value="Go" id="button-blue"
				onclick="javascript:advanceSearch()"
				style="width: 200px; float: left; margin-left: 15%" /><input
				type="submit" value="Clear" id="button-blue"
				style="width: 200px; float: left" />
		</div>
	</form>
	<br /><br /><br /><br />
  </div>
  
 
  
  </div>
</div>

<script>
	init();
	document.getElementById("Anti_infective_agent").value="";
</script>