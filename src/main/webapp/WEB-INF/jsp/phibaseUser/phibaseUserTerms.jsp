<%@page import="org.json.JSONObject"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.molcon.phibase.command.PhibaseRegistrationCommand" %>
<script src='js/phibase.js'></script>

<div style="width:80%; height:auto; padding:10px 0px ;  position:relative; margin:0 auto">
<fieldset style="border:1px solid #cccccc; padding:10px">
	<legend class="pageheading"><strong>Terms and Conditions</strong></legend>
	<%PhibaseRegistrationCommand phibaseRegistrationCommand=(PhibaseRegistrationCommand)request.getAttribute("phibaseRegistrationCommand");
	    JSONObject jsonObject =new JSONObject(phibaseRegistrationCommand);
		%>
		<form:form id="termCondForm"  name="termCondForm">
		<input type="hidden" name="registrationJson" value='<%=jsonObject.toString()%>'/>
			<br>
			<span style="font-size:12px; font-weight:bold; margin-left:8px">User Agreement</span>
				<div style="margin:0 5px">
					I download  this copy of the PHI-base database contents for my own personal use. I will not include this data into another publically available database, or include the PHI-base contents in a commercial product without prior consent. I will not pass on the download for use by others.
			<br><br>
					The PHI-base consortium has taken every care to ensure that the contents of the database are as accurate as possible.  However, if you spot an error in the database, we would be grateful if you could report them to us using the following email address:
		<br> <a href="mailto:contact@phi-base.org">contact@phi-base.org</a>
				</div>
			<br>
				
					<input type="checkbox" name="accept" id="check"> I accept the Terms and Conditions
					<br><br>
					
					<div align="center" style="width: 60%; text-align: center; margin-left:17%">
					<input type="button" style="width:120px; text-align:center;" onclick="javascript:returnPrevious()" value="Back" name="back" id="button-blue" >	
					<input type="button" style="width:120px; text-align:center;" onclick="javascript:validateTerms()" value="Submit" name="submitForm" id="button-blue">
					</div>
				
		</form:form>
</fieldset>
<br><br>
<p>
PHI-base is a National Capability that is a UK government sponsored project. By providing this information on PHI-base usage we can report back to our funding agency, the BBSRC, on the annual use of the download feature of the PHI-base database. In the longer term this should help us secure additional funding for PHI-base beyond 2017.
<br><br>
Please acknowledge PHI-base as the source of the data in your publications by citing: Urban M, Pant R, Raghunath A, Irvine AG, Pedro H and Hammond-Kosack K (2015) The Pathogen-Host Interactions database: additons and future developments Nucleic Acids Res 43 (Database Issue): D645-655. doi: 10.1093/nar/gku1165
</p>
</div>