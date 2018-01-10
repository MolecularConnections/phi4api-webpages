<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	margin-bottom: 10px;
	width:100%;
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
<div style="background: #f3f1f2; height:65px; ">

	    <div class="innerpageheadings">
	     Please register to proceed to Download
	    </div>
		<br />   
	   <div class="clear"></div>
	</div>


<div style="width:80%; height:auto; margin:0 auto; font-size: 14px; text-align: justify;">

<div id="form-main" style="margin:0 auto">
  <div id="form-div">
    <form:form class="form" id="regform"  method="post" action="termCondtionLink.htm" commandName="phibaseRegistrationCommand">
     <font color="red"><form:errors path="*"/></font>
      <p class="name">
	   <span style="font-size:16px; color:#0877D0;">*Name:</span>
	   <form:input path="name" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Your name"/>
      </p>
	 <p class="name">
	   <span style="font-size:16px; color:#0877D0;">*Organisation:</span>
	   <form:input path="organisation" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="organisation"/>
      </p>
      
	   <p class="name">
	    <span style="font-size:16px; color:#0877D0; text-align:left">*Organisation-type:</span>
       
		<form:select path="organisationtype" id="organisationtype" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input">
										<form:option value="Academia" style="color:#434343">Academia</form:option>
										<form:option value="Government">Government</form:option>
										<form:option value="Industry">Industry</form:option>
										<form:option value="NGO">NGO</form:option>
		 </form:select> 
      </p>
      
     <p class="name">
	  <span style="font-size:16px; color:#0877D0;">*Email:</span>
	  	<form:input path="email" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Please provide official email id"/>
      </p> 
	   <p class="name">
	  <span style="font-size:16px; color:#0877D0;">Department:</span>
	  	<form:input path="department" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="your Department"/>
      </p>
      
      
      <p class="name">
	  <span style="font-size:16px; color:#0877D0;">Street:</span>
	  	<form:input path="street" class="validate[required,custom[email]] feedback-input" id="street" placeholder="street name"/>
      </p>
        <p class="name">
	  <span style="font-size:16px; color:#0877D0;">City:</span>
	  <form:input path="city" class="validate[required,custom[email]] feedback-input" id="city" placeholder="city name"/>
      </p>
      </p>
     
        <p class="name">
	  <span style="font-size:16px; color:#0877D0;">Zip-Code:</span>
	 	<form:input path="zip" class="validate[required,custom[email]] feedback-input" id="zip" placeholder="Zip Code"/>
      </p>        
        <p class="name">
	  <span style="font-size:16px; color:#0877D0;">State:</span>
        <form:input path="state" class="validate[required,custom[email]] feedback-input" id="state" placeholder="State"/>
      </p>   
       
        <p class="name">
	  <span style="font-size:16px; color:#0877D0;">*Country:</span>
        <form:select path="country" id="country" class="validate[required,custom[email]] feedback-input">
        	<form:options items="${countryMap}"/>
        </form:select>
      </p>  
	  <br/>
     <div class="submit" align="center" >
        <input type="submit" value="Continue" id="button-blue"  />
      </div> 
    </form:form>
	<br /><br /><br /><br />
  </div>
  </div>
</div>