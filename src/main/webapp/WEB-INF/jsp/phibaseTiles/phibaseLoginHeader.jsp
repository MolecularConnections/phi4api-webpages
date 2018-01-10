<script src="js/jquery.min.js"></script>
<script src="js/phibase.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<%@page import="java.net.URLDecoder"%>
<%String  queryTerm=(String)request.getAttribute("queryTerm")==null?"":(String)request.getAttribute("queryTerm");
try{
queryTerm=URLDecoder.decode(queryTerm,"UTF-8");
}catch(Exception e){
	queryTerm=queryTerm;
}

%>
<header id="header-new">
      <div class="header-new-container">
      
     <!-- <div style="width:40%; height:40px; background: #cccccc;float:right; padding:1% 2% 0 0" > -->
     
      <div class="wrap-new-new" align="left">
     <form action="searchFacet.htm" name="searchForm" id="searchForm" method="get" style="padding:0px !important; margin:0px !important; top:0;  "> 
	   		<div class="search-new-new">
	   				
		     	<input type="text" class="searchTerm-new-new"  name="queryTerm" id="queryTerm" value="<%=queryTerm.replace("\"", "&quot;").replace("\\","").trim()%>" onkeyup="lookAt()" 
		     		 		autocomplete="off" onblur="javaScript:setTimeout(function(){setVisible('block');}, 200);">

	     			  <div class="shadow home-auto-suggest-grid autosuggest-block-grid" id="shadow">
						<div  id="output" >				
						</div> 
					</div> 
					<button type="button" onclick="javaScript:advanceSearchLink()"  class="searchButton-new-new">Advanced <span>&#9660;</span></button>

		 			<button type="button" onclick="submitBasicSearchForm()" class="searchButton2-new-new"><img src="images/icon-search.png" style="vertical-align: middle;" /> Search</button> 
    			</div>
   			
   		 </form> 
   			<!-- <br>
   			<div class="search-tip advanced-search-grid"  ><a href="javaScript:advanceSearchLink()"><img src="images/advanced-search.png" style="vertical-align: middle;" /> Advanced Search</a></div> -->
 
  		<p class="search-tip" > Example search terms: loss of pathogenicity, Candida, Enterococcus, Magnaporthe oryzae, wheat, azole, spot blotch disease, PHI:1020, ABC1, anti-infective</p>
	</div>
      <!-- </div> -->
       <h1>
         <img src="images/phibase-header-font.png" />
        </h1>

       
      </div>
      
      		 <div class="menu">
		 
				<div class="cssmenu">
					<ul>
					 <li class="last"><a href="index.jsp"><span>Home</span></a></li>
					   <li class="last"><a href="aboutUs.htm"><span>About Us</span></a></li>
					   <li class="last"><a href="searchFacet.htm?queryTerm="><span>Search</span></a></li>
					   <li class="last"><a href="releaseNote.htm"><span>Release notes</span></a></li>
					   <li class="last"><a href="downloadLink.htm"><span>Download</span></a></li>
					    <li class="last"><a href="disclaimer.htm"><span>Disclaimer</span></a></li>
						 <li class="last"><a href="errorContribution.htm"><span>Errors</span></a></li>
						 <li class="last"><a href="helpLink.htm"><span>Help</span></a></li>
						  <li class="last"><a href="consortium.htm"><span>Community</span></a></li>
                           <li class="last"><a href="http://phi-blast.phi-base.org/"><span>PHIB-BLAST</span></a></li>
                            <li class="last" style=" border-right:none"><a href="http://www.frac.info/docs/default-source/publications/frac-code-list/frac-code-list-2017-final.pdf?sfvrsn=2" target="_blank"><span>Anti-infective</span></a></li>
					
					   <div class="clear"></div>
					</ul>
		   </div>
			<div class="clear"></div>
		</div>
    </header>
 