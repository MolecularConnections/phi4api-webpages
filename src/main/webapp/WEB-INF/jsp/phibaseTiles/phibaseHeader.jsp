<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.net.URLDecoder"%>
<script>dojoConfig = {parseOnLoad: true}</script>
	<script src='js/dojo/dojo.js'></script>
	<script src='js/phibase.js'></script>
	<script src='js/autoSuggest.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>


<%String  queryTerm=(String)request.getAttribute("queryTerm")==null?"*:*":(String)request.getAttribute("queryTerm");
try{
queryTerm=URLDecoder.decode(queryTerm,"UTF-8");
}catch(Exception e){
	queryTerm=queryTerm;
}

%>
<header id="header-new">
      <div class="header-new-container">
      
     <!-- <div style="width:40%; height:40px; background: #cccccc;float:right; padding:1% 2% 0 0" > -->
     
      <!-- <div class="wrap-new-new" align="left">
      
	   		<div class="search-new-new">
	   		
     		 	<input type="text" class="searchTerm-new-new" placeholder="What are you looking for?">
     			<button type="submit" class="searchButton-new-new">
      				 Search
     			</button>
	 			<button type="submit" class="searchButton2-new-new">
    			 <img src="images/icon-search.png" style="vertical-align: middle;" /> Search
    			 </button> 
    			 
   			</div>
   			<br>
   			<div class="search-tip" style="margin-top:8px; font-size:14px; font-weight:normal; background:#58aada; color:#ffffff;width:144px;height:28px;padding-left:10px" ><img src="images/advanced-search.png" style="vertical-align: middle;" /> Advanced Search</div>
 
  		<p class="search-tip" > Example search terms: loss of pathogenicity, Candida, Enterococcus, Magaporthe oryzee, wheat, azole, spot blotch disease, PHI:1020, ABC1</p>
	</div> -->
      <!-- </div> -->
       <h1>
         <img src="images/phibase-header-font.png" />

        </h1>
      </div>
      
      		 <div class="menu">
				<div class="cssmenu">
					<ul>
					 <li><a href="index.jsp"><span>Home</span></a></li>
					   <li><a href="aboutUs.htm"><span>About Us</span></a></li>
					   <li class="last"><a href="searchFacet.htm?queryTerm="><span>Search</span></a></li>
					   <li class="last"><a href="releaseNote.htm"><span>Release notes</span></a></li>
					   <li class="last"><a href="downloadLink.htm"><span>Download</span></a></li>
					    <li class="last"><a href="disclaimer.htm"><span>Disclaimer</span></a></li>
						 <li class="last"><a href="errorContribution.htm"><span>Errors</span></a></li>
						 <li class="last"><a href="helpLink.htm"><span>Help</span></a></li>
						    <li class="last"><a href="consortium.htm"><span>Community</span></a></li>
                           <li class="last"><a href="http://phi-blast.phi-base.org/"><span>PHIB-BLAST</span></a></li>
                            <li class="last" style=" border-right:none"><a href="#"><span>Anti-infective</span></a></li>
					
					   <div class="clear"></div>
					</ul>
		   </div>
			<div class="clear"></div>
		</div>
    </header>
<div class="header">

<!--   <div class="header_right">

		 <div class="menu">
		 	start top-nav
			<div class="cssmenu" style="width:100%; height:auto; margin:0 auto;">
					<ul>
					 <li><a href="index.jsp"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Home</span></a></li>
					   <li ><a href="aboutUs.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">About Us</span></a></li>
					  <li class="last"><a href="searchFacet.htm?queryTerm="><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Search</span></a></li>
					   <li class="last" style="width:14%"><a href="releaseNote.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Release notes</span></a></li>
					   <li class="last"><a href="downloadLink.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Download</span></a></li>
						 <li class="last" ><a href="errorContribution.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Errors</span></a></li>
						 <li class="last"><a href="helpLink.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Help</span></a></li>
						  <li class="last"><a href="consortium.htm"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">Consortium</span></a></li>
						  <li class="last" style=" border-right:none"><a href="http://phi-blast.phi-base.org/"><span style="font-family: 'Open Sans', sans-serif; font-size:14px;">BLAST</span></a></li>
					
					   <div class="clear"></div>
					</ul>
		   </div>
		   
			<div class="clear"></div>
		
   <img src="images/bar.jpg" width="509" height="85" border="0" usemap="#Map" style="float:right; position:relative; margin-top:-1px" />
<map name="Map" id="Map">
  <area shape="rect" coords="395,18,419,40" href="#" /><area shape="rect" coords="430,18,451,41" href="#" />
  <area shape="rect" coords="470,17,487,41" href="#" /></map>
  </div>	
	   <div class="clear"></div>
	  
	</div> -->

	<div class="searchArea" >
	<br>
	<form class="form-wrapper cf" action="searchFacet.htm" name="searchForm" id="searchForm" method="get">
	<div>
	
	<input type="text" placeholder="Search here..."  name="queryTerm" id="queryTerm" value="<%=queryTerm.replace("\"", "&quot;").replace("\\","").trim()%>" onkeyup="lookAt()" autocomplete="off" onblur="javaScript:setTimeout(function(){setVisible('hidden');}, 200);"/>
	</div>
	<div class="shadow autosuggest-block-grid" id="shadow" >
		<div class="output" id="output" >
	</div>
	</div>
	<button id="gobutton" type="button" value="ADVANCED SEARCH" class="grid-advanced-search" onclick="javaScript:advanceSearchLink()" />ADVANCED SEARCH</button>
	<!--<button onclick="javaScript:resetForm();" style="float:right">reset</button> -->
	<button name="Reset" type="button" id="gobutton"  onclick="javaScript:resetForm();" class="button-reset-grid" value="RESET" />RESET</button>
    <button type="button" class="button-submit-grid" onclick="submitBasicSearchForm()" >Search</button>
	
</form>

<!--<button  onclick="javaScript:resetForm();">Reset</button> -->

<p class="search-tips-grid-inner">(Use AND,OR for multiple operations eg: Barley AND Loss of pathogenicity) </p>


	</div>
	    </div>
	   <div class="clear"></div>
	</div>

	<script>
	init();
	</script>
</div>
