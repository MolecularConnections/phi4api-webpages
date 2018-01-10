<style>
input#bigbutton {
width:180px;
background: #3e9cbf; /*the colour of the button*/
padding: 8px 14px 10px; /*apply some padding inside the button*/
border:1px solid #3e9cbf; /*required or the default border for the browser will appear*/
cursor:pointer; /*forces the cursor to change to a hand when the button is hovered*/
/*style the text*/
font-size:1em;
font-family:Oswald, sans-serif; /*Oswald is available from http://www.google.com/webfonts/specimen/Oswald*/
letter-spacing:.1em;
text-shadow: 0 -1px 0px rgba(0, 0, 0, 0.3); /*give the text a shadow - doesn't appear in Opera 12.02 or earlier*/
color: #fff;
/*use box-shadow to give the button some depth - see cssdemos.tupence.co.uk/box-shadow.htm#demo7 for more info on this technique*/
-webkit-box-shadow: inset 0px 1px 0px #3e9cbf, 0px 5px 0px 0px #205c73, 0px 10px 5px #999;
-moz-box-shadow: inset 0px 1px 0px #3e9cbf, 0px 5px 0px 0px #205c73, 0px 10px 5px #999;
box-shadow: inset 0px 1px 0px #3e9cbf, 0px 5px 0px 0px #205c73, 0px 10px 5px #999;
/*give the corners a small curve*/
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
border-radius: 10px;
}
/***SET THE BUTTON'S HOVER AND FOCUS STATES***/
input#bigbutton:hover, input#bigbutton:focus {
color:#dfe7ea;
/*reduce the size of the shadow to give a pushed effect*/
-webkit-box-shadow: inset 0px 1px 0px #3e9cbf, 0px 2px 0px 0px #205c73, 0px 2px 5px #999;
-moz-box-shadow: inset 0px 1px 0px #3e9cbf, 0px 2px 0px 0px #205c73, 0px 2px 5px #999;
box-shadow: inset 0px 1px 0px #3e9cbf, 0px 2px 0px 0px #205c73, 0px 2px 5px #999;
}

</style>
<script language="javascript"> 
function togglein() {
	var ele = document.getElementById("toggleTextin");
	var text = document.getElementById("displayTextin");
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = "<img src='images/plus.jpg'>FUNDING SOURCES";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = "<img src='images/minus.jpg' />FUNDING SOURCES";
		

	}
} 
function toggle1() {
	var ele = document.getElementById("toggleText1");
	var text = document.getElementById("displayText1");
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = "<img src='images/plus.jpg'>PUBLICATIONS ON PHI-BASE";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = "<img src='images/minus.jpg' />PUBLICATIONS ON PHI-BASE";
	}
} 
function toggle2() {
	var ele = document.getElementById("toggleText2");
	var text = document.getElementById("displayText2");
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = "<img src='images/plus.jpg'>PUBLICATIONS CITING PHI-BASE";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = "<img src='images/minus.jpg' />PUBLICATIONS CITING PHI-BASE";
		

	}
	

} 
	function toggle3() {
	var ele = document.getElementById("toggleText3");
	var text = document.getElementById("displayText3");
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = "<img src='images/plus.jpg'>PRESENTATIONS AND POSTERS ON PHI-BASE";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = "<img src='images/minus.jpg' />PRESENTATIONS AND POSTERS ON PHI-BASE";
		

		}
	}
	
	function toggle4() {
	var ele = document.getElementById("toggleText4");
	var text = document.getElementById("displayText4");
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = "<img src='images/plus.jpg'>FUTURE DEVELOPMENTS FOR PHI-BASE FROM 2011 ONWARDS ";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = "<img src='images/minus.jpg' />FUTURE DEVELOPMENTS FOR PHI-BASE FROM 2011 ONWARDS ";
		

		}
	}
</script>
<div style="height:65px; background: #f3f1f2">
<!--<img src="images/bar.jpg" width="509" height="85" border="0" usemap="#Map" style="float:right; position:relative; margin-top:-1px" />
<map name="Map" id="Map"><area shape="rect" coords="395,18,419,40" href="login.htm" /><area shape="rect" coords="432,18,453,41" href="#" /><area shape="rect" coords="470,17,487,41" href="#" /></map> -->
	    <div class="innerpageheadings" >
	   Release Notes 
	    </p>
	    <br />
	    
	   <div class="clear"></div>
	   
	</div>
	</div>

<!--<div style="width:100%; height:30px; background: url(images/head_back_top.jpg) repeat-x; font-size:12px"> bar
</div> -->
<div style="width:80%; height:auto; margin:0 auto">
<div style="width:23%; height:auto; float: left; margin:0 10px 0 0px; font-size: 13px; background: #EFEFEF; text-align: justify;">
<div style="width:100%" class="sidebar">
				<div class="menu_box_list">
				      		<ul >
								<li id="sideHead2" style="font-size:20px; padding:5px 10px; ">Current release</li>
								<li style="padding:5px 10px">
								<br />
								<table width="100%" border="1" cellpadding="5" cellspacing="2" bordercolor="#999999" style="border:1px solid #434343;" class="righttable">
									  <tr >
										<td width="51%" height="31" align="left" valign="middle" bgcolor="#EAEAEA" style="border:1px solid #434343"><strong>
									    Table					    </strong></td>
										<td width="49%" align="left" valign="middle" bgcolor="#EAEAEA"  style="border:1px solid #434343"><strong>
									    No. of records					    </strong></td>
									  </tr>
									  <tr >
										<td height="34" align="left" valign="middle" style="border:1px solid #434343">
										  Genes                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343">
										  2875					    </td>
									  </tr>
									  <tr >
										<td height="33" align="left" valign="middle" style="border:1px solid #434343">
										  Interactions                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343" >
										  4102                        </td>
									  </tr>
									  <tr >
										<td height="35" align="left" valign="middle" style="border:1px solid #434343">
										  Pathogens                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343">
										  166                        </td>
									  </tr>
									  <tr >
										<td height="34" align="left" valign="middle" style="border:1px solid #434343">
										  Hosts                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343">
										  110                        </td>
									  </tr>
									  <tr >
										<td height="31" align="left" valign="middle" style="border:1px solid #434343">
										  Diseases                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343">
										  181                        </td>
									  </tr>
									  <tr >
										<td height="33" align="left" valign="middle" style="border:1px solid #434343">
										  References                        </td>
										<td align="left" valign="middle" style="border:1px solid #434343" >
										  1243                        </td>
									  </tr>
      							</table>
								<br />
								</li> 
								<li id="sideHead2" style="font-size:20px; ">Version 3.5</li>
								<li style="padding:5px 10px;"> 
								<br />
								<table width="100%" border="1" cellpadding="5" cellspacing="2" bordercolor="#999999" style="border:1px solid #434343;" class="righttable">
								<thead></thead>
								<tbody>
									  <tr style="border:1px solid #434343">
										<td width="50%" height="28" bgcolor="#EAEAEA" style="border:1px solid #434343">
										  Table                        </td>
										<td width="50%" bgcolor="#EAEAEA" style="border:1px solid #434343">
										  No. of records                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="31" style="border:1px solid #434343">
										  Genes                        </td>
										<td align="left" style="border:1px solid #434343">
										  2434                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="32" style="border:1px solid #434343">
										  Interactions                        </td>
										<td align="left" style="border:1px solid #434343">
										  3152                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="34" style="border:1px solid #434343">
										  Pathogens                        </td>
										<td align="left" style="border:1px solid #434343">
										  109                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="31" style="border:1px solid #434343">
										  Hosts                        </td>
										<td align="left" style="border:1px solid #434343">
										  92                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
										  Diseases                        </td>
										<td align="left" style="border:1px solid #434343">
										  108                        </td>
									  </tr>
									  <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
										  References                        </td>
										<td align="left" style="border:1px solid #434343">
										  1049                        </td>
									  </tr>
                     		 </tbody>
      					</table>
						<br />
						</li>
						<li id="sideHead2" style="font-size:20px;  ">Version 3.4</li>
								<li style="padding:5px 10px;"> 
								<br />
						<table width="100%" cellpadding="2" cellspacing="0" class="righttable" style="border:1px solid #434343">
								<thead></thead>
								<tbody>
                      <tr style="border:1px solid #434343">
                        <td width="50%" height="31" bgcolor="#EAEAEA" style="border:1px solid #434343">
                          Table                        </td>
                        <td width="50%" bgcolor="#EAEAEA" style="border:1px solid #434343">
                          No. of records                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="31" style="border:1px solid #434343">
                          Genes
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          2433                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="32" style="border:1px solid #434343">
                          Interactions
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          3151                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="31" style="border:1px solid #434343">
                          Pathogens
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          109                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
                          Hosts
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          92                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="33" style="border:1px solid #434343">
                          Diseases
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          107                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
                          References
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          1049                        </td>
                      </tr>
                      </tbody>
                    </table>
					<br />
								</li>
								<li id="sideHead2" style="font-size:20px; ">Version 3.3</li>
								<li style="padding:5px 10px"> 
								<br />
						<table width="100%" cellpadding="2" cellspacing="0" class="righttable" style="border:1px solid #434343">
						<thead></thead>
						<tbody>
                      <tr style="border:1px solid #434343">
                        <td height="30" bgcolor="#EAEAEA" style="border:1px solid #434343">
                          Table                        </td>
                        <td bgcolor="#EAEAEA" style="border:1px solid #434343">
                          No. of records                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="31" style="border:1px solid #434343">
                          Genes
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          1065                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="33" style="border:1px solid #434343">
                          Interactions
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          1335                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
                          Pathogens
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          97                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="33" style="border:1px solid #434343">
                          Hosts
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          76                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="33" style="border:1px solid #434343">
                          Diseases
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          64                        </td>
                      </tr>
                      <tr style="border:1px solid #434343"> <td height="30" style="border:1px solid #434343">
                          References
                        </td>
                        <td align="left" style="border:1px solid #434343">
                          720                        </td>
                      </tr>
                      </tbody>
                    </table>
					<br /><br />
								</li>
								
				    		</ul>
				   <div class="clear"></div>
	      		</div>
		</div>

</div>
<div class="content" style="width:74%">
<div style="width:98%; padding:10px; ">
<div style="width:26%; float:right;">

PAST RELEASES:

<p style="margin-top:8px"><span style="font-size:14px;">Version 3.5 <span style="font-size:11px; color:#434343">November 4th 2013</span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px;">Version 3.4 <span style="font-size:11px; color:#434343">February 12th 2013</span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px;">Version 3.3 <span style="font-size:11px; color:#434343">January 10th 2012 </span>  </span></p>
<p style="margin:3px 0px"><span style="font-size:14px;">Version 3.2 <span style="font-size:11px; color:#434343">December 14th 2009</span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px;">Version 3.1 <span style="font-size:11px; color:#434343">April 1st 2008</span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px; ">Version 3.0 <span style="font-size:11px; color:#434343">September 13th 2007 </span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px; ">Version 2.31 <span style="font-size:11px; color:#434343">January 25th 2007</span>    </span><br /></p>
<p style="margin:3px 0px"><span style="font-size:14px; ">Version 2.3 <span style="font-size:11px; color:#434343">December 22nd 2006 </span>   </span></p>
<p style="margin:3px 0px"><span style="font-size:14px; ">Version 2.2 <span style="font-size:11px; color:#434343">June 2nd 2006 </span>  </span></p>
<p style="margin:3px 0px"><span style="font-size:14px; ">Version 2.1 <span style="font-size:11px; color:#434343">October 3rd 2005   </span></span></p>
<p style="margin:3px 0px; font-size:14px"><span style="font-size:14px;">Version 1.0 <span style="font-size:11px; color:#434343">May 4th 2005   </span></span></p>

</div>
<!--<span style="font-size:18px; color:#000000">CURRENT RELEASE</span>
<br /><br /> -->
<strong style="font-size: 1em; color:#0877D0" id="3.6">Version 3.6 May 6th 2014 </strong>
		
		<p style="margin-top:10px">
			<ul style="list-style-type: disc; list-style-position: inside;">
        		<li style="font-size: 14px;">441 additional genes tested in 950 interactions from 194 references </li>
    		</ul>
		</p>
<br />
<!-- 
		<strong style="font-size: 1em; color:#0877D0" id="3.5"> Version 3.5 November 4th 2013</strong>
		<br />
		<p style="margin-top:10px">
		 <ul style="list-style-type: disc; list-style-position: inside;">
      		<li style="font-size:14px">Outlinks to UniProtKB, NCBI and EMBL provided </li>
    		<li style="font-size:14px">Updated Tabular file for all PHI-base genes with valid UniprotKB, <br /> &nbsp;  &nbsp;NCBI or EMBL accession can be downloaded</li>
  		</ul>
		</p>
		<br />
		<strong style="font-size: 1em; color:#0877D0" id="3.4"> Version 3.4 February 12th 2013 </strong>
	<p style="margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside;">
      		<li style="font-size:14px">Major increase in gene content (1355 additional genes) from 323 additonal<br /> &nbsp;   &nbsp;references </li>
    		<li style="font-size:14px">XML download file withdrawn</li>
  		</ul>
  		</p>
</div>
</div>

<div class="content" style="width:74%;  ">
<div style=" width:98%; padding:10px; ">
		<strong style="font-size: 1em; color:#0877D0" id="3.3"> Version 3.3 January 10th 2012  </strong>
		<p style=" margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		<li>Update of web pages</li>
  		</ul>
		</p>
  		<br />
		<strong style="font-size: 1em; color:#0877D0" id="3.2"> Version 3.2 December 14th 2009 </strong>
		<p style=" margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		 <li>New entries</li>
    <li>Bugfixes for some sequence accessions</li>
  		</ul>
  		</p>
  		  		<br />
		<strong style="font-size: 1em; color:#0877D0" id="3.1"> Version 3.1 April 1st 2008  </strong>
		<p style=" margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		  <li> Improvements for some entries and sequence downloads</li>
  		</ul>
  		</p>
  			<br />
		<strong style="font-size: 1em; color:#0877D0" id="3.0"> Version 3.0 September 13th 2007   </strong>
		<p style=" margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		  	<li>New entries</li>
			    <li>Information on anti-infective tagets</li>
			    <li>XML export</li>
			    <li>Selective export in FASTA format</li>
			    <li>DOIs for direct linkout to publications</li>
  			</ul>
  		<br />
  		</p>
  	
		<strong style="font-size: 1em; color:#0877D0" id="2.31"> Version 2.31 January 25th 2007    </strong>
		<p style=" margin-top:10px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		  	<li>Bugfixes for some sequence accessions</li>
  			</ul>
  			
  		</p>

</div>
</div>

<div class="content" style="width:74%; ">
<div style="width:98%; padding:10px; ">

<strong style="font-size: 1em; color:#0877D0" id="2.3"> Version 2.3 December 22nd 2006    </strong>
		<p style="margin-top:5px">
		
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		  	 	<li> New entries: information for some bacterial genes now available </li>
				    <li> Links provided for GO and EC databases for most entries</li>
				    <li> Searchable GO terms and EC annotations</li>
				    <li> Experimental evidence codes are provided in the details page for most entries</li>
				    <li> Information on the effect of double gene mutants</li>
				    <li> Mapping list PHI-base accessions to EMBL identifiers </li>
  			</ul>
  			</p>
  			<br />
		<strong style="font-size: 1em; color:#0877D0" id="2.2"> Version 2.2 June 2nd 2006   </strong>
		<p style="margin-top:5px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
      		  	 	 	<li> New entries</li>
					    <li> Definition and classification of phenotypes</li>
					    <li> Search by phenotype added to 'Advanced Serach' panel</li>
					    <li> Support of linkouts to UniProt database</li>
					    <li> Missing sequences added to downloadable FASTA files</li>
					    <li> Revised format of sequences</li>
  			</ul>
  			</p>
  			
  			 			
		<strong style="font-size: 1em; color:#0877D0" id="2.1"> Version 2.1 October 3rd 2005   </strong>
		<p style="margin-top:5px">
		  <ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
			    <li> New entries</li>
			    <li> Updated phenotype information for some entries (pre/post penetration)</li>
			    <li> Links provided to PubMed for all entries</li>
			    <li> Information presented for each individual gene-host interaction</li>
			    <li> Abbreviations replaced with full text</li>
			    <li> Links provided for GO and EC databases for some entries</li>
  			</ul>
  			</p>
  			  			 			<br />
		<strong style="font-size: 1em; color:#0877D0" id="2.0"> Version 2.0 August 22nd 2005   </strong>
		<p style="margin-top:5px">
		  	<ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
			    <li> New web interface</li>
			    <li> Direct links to Pubmed </li>
			    <li> FASTA downloadable files</li>
  			</ul>
  			</p>
  			
  			<br />
		<strong style="font-size: 1em; color:#0877D0" id="1.0"> Version 1.0 May 4th 2005   </strong>
		<p style="margin-top:5px">
		  	<ul style="list-style-type: disc; list-style-position: inside; font-size:14px">
			      <li> 379 genes</li>
			    <li> Experimental host verified and updated for all entries</li>
			    <li> Links provided to PubMed for some entries</li>
  			</ul>
		</p>-->
		<br />
	</div>	
</div>
</div>
