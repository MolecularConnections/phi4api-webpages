

      

      

       

      

       <script src='js/autoSuggest.js'></script>

<script>dojoConfig = {parseOnLoad: true}</script>

       <script src='js/dojo/dojo.js'></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<div class="grid-contener-full">

    <p>The mission of PHI-base is to provide expertly curated molecular and biological information on genes proven to affect  the outcome of pathogen-host interactions. Information is also given on the target sites of some anti-infective chemistries.</p>

</div>

<div class="grid-contener-left">

<div class="home-left-grid-block" >

  <p class="home-left-block"><a href="http://www.phi-base.org/images/pathogen_species_list.csv" target="_blank">Pathogens</a></p>

  <p class="home-left-block"><a href="http://www.phi-base.org/images/host_species_list.csv" target="_blank">Hosts</a></p>

 <!--  <p class="home-left-block"><a href="diseases.htm" >Diseases</a></p> -->
<p class="home-left-block">Diseases</p>
  <p class="home-left-block"><a href="helpLink.htm" >Ontologies</a></p>

  <p class="home-left-block"><a href="https://www.ncbi.nlm.nih.gov/taxonomy" target="_blank">Taxonomies</a></p>

  <p class="home-left-block"><a href="aboutUs.htm" >Literature citations</a></p>

<p class="home-left-block"><a href="consortium.htm" >Community resources</a></p>

<p class="home-left-block"><a href="http://www.ensembl.org/index.html" target="_blank">External resources</a></p>

<p class="home-left-block"><a href="http://www.phytopathdb.org" target="_blank">PhytoPath</a></p>

<p class="home-left-block"><a href="https://en.wikipedia.org/wiki/PHI-base" target="_blank">Wiki page</a></p>

<p class="home-left-block"><a href="aboutUs.htm" >PHI-base publications</a></p>

<p class="home-left-block"><a href="developerResources.htm" >Developer resources (API)</a></p>

 

 

  </div>

</div>

 

<div class="grid-contener-mdiile">

  <h1>PHI-base data</h1>

   <hr class="phi-base-hr-grid">

   <br>

        <p><img src="images/search-icon.png" class="vertical-grid"/> <a href="searchFacet.htm?queryTerm=">Search PHI-base</a></p>

        <p><img src="images/download.png" class="vertical-grid" /> <a href="downloadLink.htm">Download PHI-base data</a></p>

        <p><img src="images/view-phi.png" class="vertical-grid" /> <a href="http://www.phi-base.org/releaseNote.htm" target="_blank">View PHI-base statistics</a></p>

        <p><img src="images/how-tocite.png" class="vertical-grid" /> <a href="http://www.phi-base.org/aboutUs.htm">How to cite us</a></p>

        <p><img src="images/submit-published.png" class="vertical-grid" /> <a href="http://curation.phi-base.org/" target="_blank">Submit your published phenotype data</a></p>

 

 

       <div class="grid-contener-mdiile-next set-grid-middle">

       <div style="width:100%; height:56px;">

         <h1>Getting Started</h1>

         <div class="icon-set-grid" style="z-index: 0"><a href="https://www.youtube.com/channel/UC3vXOBQfyVPdgxnqkZn30aw" target="_blank" style="z-index: 0"><img src="images/youtube-logo.png" style="vertical-align: top;z-index: 0" /></a> </div>

          <hr class="" style="color:#ffffff; width:78%; text-align: left; float:left; border-bottom: 1px solid #58aada;  ">

              </div>

               <p>

                      <img src="images/search-icon.png" style="vertical-align: middle;" />

                     <a href="https://www.youtube.com/watch?v=5DLXo0_brMo&t=1s" target="_blank"> Text search</a>

                      <br>

                      <span style="padding-left:23px; line-height: 13px">Search terms are auto completed when entries are found.</span>

               </p>

               

               <p>

                      <img src="images/download.png" style="vertical-align: middle;" /> <a href="https://www.youtube.com/watch?v=5DLXo0_brMo&t=1s" target="_blank">PHIB-BLAST</a>

                      <br> 

                      <span style="padding-left:23px;line-height: 13px">Find homologs  and their phenotypes</span>

               </p>

               <p>

                      <img src="images/view-phi.png" style="vertical-align: middle;" />

                      <a href="https://www.youtube.com/watch?v=-26pfqgWf2Q" target="_blank">Submit data</a>

                      <br> 

                      <span style="padding-left:23px;line-height: 13px">Manual curation of the pathogen interaction literature</span>

               </p>

       </div>

</div>

<div class="grid-contener-right">

<div class="icon-set-grid news-feed-icon">

<a href="https://twitter.com/phi_base" target="_blank"><img src="images/twitter-icon.png" style="vertical-align: middle;" /> </a>

</div>

 

        <div  class="tew-twinner" >

               <h1>Tweets <span style="font-size:13px !important; color:#434343; font-weight:500">by <a href="https://twitter.com/phi_base" target="_blank">@PHI_base</a></span></h1>

               <hr style="color:#ffffff;border-bottom:1px solid #58aada; width:93%; text-align: left; float:left ">

               <a class="twitter-timeline"  data-chrome="nofooter noheader transparent" data-width="320px" data-height="300px"    href="https://twitter.com/phi_base"> Tweets by phi_base </a>

        </div>

<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

 

 

 

<div class="grid-contener-mdiile-next" style="margin-top:10px; margin-bottom:28px">

  <h1>PHI spotlight</h1>

   <hr style="color:#ffffff;border-bottom:1px solid #58aada; width:93%; text-align: left; float:left ">

   <br>

       <div style="width:15.999%; height: auto; float:left; ">

       <img src="${spotlightBean.imageStr }" style="vertical-align: middle;" />

       </div>

       <div style="width:73.999%; height: 20%; padding-left:1%;float:left;">

              <p style="margin: 0px; padding:0px;font-weight: 600;"><a href="spotlight.htm" >${spotlightBean.title }</a></p>

               <p style="margin: 0px; padding:0px;">${spotlightBean.date }</p>

       </div>

       <br><br><br>

       <div style="width:93.999%; height: 84px;  overflow:auto; float:left;">

                             <p style="margin: 0px; padding:0px;  line-height: 18px; font-size: 14px">

                             ${spotlightBean.description }

                             </p>

       </div>

</div>

 

</div>

 

 

<!-- <div id="page" >

  <form id="searchForm" method="get" action="searchFacet.htm">

    <fieldset>

      

    <input name="queryTerm" type="text" id="s" onkeyup="lookAt()" autocomplete="off"/>

        

    <input name="submit" type="submit" id="submitButton" value="Submit" />

    <ul class="icons">

      <a href="advancedSearch.htm"><li class="web" title="Web Search" >Advanced Search</li></a>

    </ul>

    </fieldset>

   <span id="mainpage"></span>

<div  id="shadow" style="z-index:9999; background:#F8F8F8; padding:10px; width:485px; position:absolute; border:1px solid #cccccc; line-height:20px">

              <div class="output" id="output" style="background:#F8F8F8; text-align:left; font-size: 13px;">

              </div>

       </div>

  </form>

</div>

 

 

<div style="width:100%; height:auto; background:#eae9ea; padding:25px 0px 10px 0px; margin:0px 0px 25px 0px;">

 

<div class="wrapper" align="left" >

<p style="width:200px; color:#827f80; font-size: 1.8em; font-style: italic;">Field Facets123</p>

<hr  style="color:#e4e3e3;"/>

<br />

<div class="jScroll">

<div class="jScroll-item"> <img src="./img/image-1.jpg" alt="sample image"  />

<p >

 

 

<table width="100%" height="170" border="0" cellpadding="2" cellspacing="2" style="margin:10px 0px 0px 7px; font-size:12px">

  <tr>

    <td height="21">AcpC</td>

    <td>NIP2</td>

  </tr>

  <tr>

    <td height="21">Atf1</td>

    <td>pthXo1</td>

  </tr>

  <tr>

    <td height="21">AvrXa7</td>

    <td>RED2</td>

  </tr>

  <tr>

    <td height="21">Cyp51A</td>

    <td>Tal1c</td>

  </tr>

  <tr>

    <td height="21">Cyp51B</td>

    <td>Tal2a</td>

  </tr>

  <tr>

    <td height="21">Cyp51C</td>

    <td>Tal2g</td>

  </tr>

  <tr>

    <td height="21">NIP1</td>

    <td>TalC</td>

  </tr>

</table>

 

</p>

 

</div>

<div class="jScroll-item"> <img src="./img/image-2.jpg" alt="sample image"  />

<p>

--- new code dated 4 May,2k115

<table width="100%" height="170" cellspacing="0" cellpadding="0" border="0" style="margin:10px 0px 0px 7px; font-size:12px">

  <tbody>

  <tr>

    <td width="50%" valign="top">

       <table width="100%" height="170" cellspacing="2" cellpadding="2" border="0" style="font-size:12px">

              <tbody>

              <tr>

                     <td height="21">Barley</td>

       </tr>

              <tr>

              <td height="21">Chinese radish</td>

       </tr>

              <tr>

       <td height="21">French bean</td>

       </tr>

              <tr>

       <td height="21">Maize</td>

       </tr>

              <tr>

       <td height="21">Mouse</td>

       </tr>

              <tr>

              <td height="21">Olives</td>

        </tr>

  <tr>

    <td height="21">Potato</td>

    </tr>

</tbody>

</table>

      

       </td>

    <td width="50%" valign="top">

       <table width="100%" height="170" cellspacing="2" cellpadding="2" border="0" style="font-size:12px">

  <tbody><tr>

    <td height="21">Rice</td>

  </tr>

  <tr>

    <td height="21">Soybean</td>

  </tr>

  <tr>

    <td height="21">Thale cress</td>

  </tr>

  <tr>

    <td height="21">Tobacco </td>

  </tr>

  <tr>

    <td height="21">Tomato</td>

  </tr>

  <tr>

    <td height="21">Winter squash</td>

  </tr>

  <tr>

    <td height="21">Wheat </td>

  </tr>

</tbody></table>

       </td>

  </tr>

</tbody>

</table>

--- end new code dated 4 May,2k115

</p>

</div>

<div class="jScroll-item"> <img src="./img/image-3.jpg" alt="sample image"  />

       <p >

              <ul style="margin:10px 0px 0px 7px; font-size:12px; line-height:21px">

                           <li>Botrytis cinerea</li>

                           <li>Candida albicans</li>

                           <li>Cochliobolus heterostrophus</li>

                           <li>Fusarium graminearum</li>

                           <li>Magnaporthe oryzae</li>

                           <i>Mycobacterium tuberculosis</i>

                           <li>Pseudomonas aeruginosa</li>

                           <li>Xanthomonas oryzae pv.oryzae</li>

                           <li>Xanthomonas oryzae pv.Oryzicola</li>

              </ul>

       </p>

</div>

 

<div class="jScroll-item"> <img src="./img/image-4.jpg" alt="sample image"  />

       <p>

                     <ul style="margin:10px 0px 0px 7px; font-size:12px; line-height:21px">

                           <li>Bacterial leaf blight</li>

                           <li>Bacterial leaf streak</li>

                           <li>Disseminated candidiasis</li>

                          

                           <li>Fusarium head blight</li>

                           <li>Rice Blast</li>

                           <li>Southern Corn Leaf Blight</li>

                           <li>Tularemia</li>

                           <li>Tumors, galls or knots</li>

                     </ul>

       </p>

</div>

<div class="jScroll-item"> <img src="./img/image-9.jpg" alt="sample image"  />

 

<p>

                     <ul style="margin:10px 0px 0px 16px; font-size:12px; line-height:21px">

                           <li>PHI:588 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:595</li>

                           <li>PHI:589  &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:596</li>

                           <li>PHI:590 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:597</li>

                           <li>PHI:591 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:598</li>

                           <li>PHI:592 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:599</li>

                           <li>PHI:593 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:600</li>

                           <li>PHI:594 &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;   &nbsp;   &nbsp; PHI:601</li>

             

 

 

                     </ul>

</p>

</div>

<div class="jScroll-item"> <img src="./img/image-5.jpg" alt="sample image"  />

 

<p>

                     <ul style="margin:10px 0px 0px 7px; font-size:12px; line-height:21px">

                           <li>Increased virulence</li>

                           <li>Loss of pathogenicity</li>

                           <li>Reduced virulence</li>

                           <li>Unaffected pathogenicity</li>

                           <li>Wild type</li>

                     </ul>

</p>

</div>

<div class="jScroll-item"> <img src="./img/image-6.jpg" alt="sample image"  />

 

<p>

                     <ul style="margin:10px 0px 0px 7px; font-size:12px; line-height:21px">

                           <li>Functional test in host: transient expression</li>

                           <li>Gene deletion: full</li>

                           <li>Gene mutation</li>

                           <li>Gene deletion: full; Gene complementation  </li>

                           <li>Gene mutation; Gene complementation </li>

                     </ul>

</p>

</div>

<div class="jScroll-item"> <img src="./img/image-7.jpg" alt="sample image"  />

<p>

<table width="100%" height="170" border="0" cellpadding="2" cellspacing="2" style="margin:10px 0px 0px 7px; font-size:12px">

  <tr>

    <td height="21">PHI: 674</td>

    <td>PHI: 775</td>

  </tr>

  <tr>

    <td height="21">PHI: 712</td>

    <td>PHI: 504</td>

  </tr>

  <tr>

    <td height="21">PHI: 506</td>

    <td>PHI: 551</td>

  </tr>

  <tr>

    <td height="21">PHI: 552</td>

    <td>PHI: 641</td>

  </tr>

  <tr>

    <td height="21">PHI: 675; PHI: 676</td>

    <td>PHI: 710</td>

  </tr>

  <tr>

    <td height="21">PHI: 711</td>

    <td>PHI: 465</td>

  </tr>

  <tr>

    <td height="21">PHI: 531</td>

    <td>PHI: 532 </td>

  </tr>

</table>

</p>

</div>

<div class="jScroll-item"> <img src="./img/image-8.jpg" alt="sample image"  />

<p>

<table width="100%" height="170" border="0" cellpadding="2" cellspacing="2" style="margin:10px 0px 0px 15px; font-size:12px">

  <tr>

    <td height="21">2013</td>

    <td>2012</td>

  </tr>

  <tr>

    <td height="21">2008</td>

    <td>2007</td>

  </tr>

  <tr>

    <td height="21">2004</td>

    <td>2005</td>

  </tr>

  <tr>

    <td height="21">2009</td>

    <td>2003</td>

  </tr>

  <tr>

    <td height="21">2003</td>

    <td>2000</td>

  </tr>

  <tr>

    <td height="21">2001</td>

    <td>2002</td>

  </tr>

  <tr>

    <td height="21">2006</td>

    <td>2001 </td>

  </tr>

</table>

</p>

</div>

<div class="clear"></div>

</div>

</div>

</div> -->

<script src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/jscroll.js"></script>

<script type="text/javascript">

 

        $('.jScroll').css('height', 260).jScroll({

 

            'ScrollDirection': 'left',

            'PanelClass': 'jScroll-item',

            'ArrowOpacity': 1,

            'ArrowImage': 'images/arrows.png',

            'ArrowBGCol': 'transparent',

            'ArrowWidth': 24,

            'ArrowHeight': 24,

            'ArrowLeft': -12,

            'ArrowRight': -12,

            'Moving': true,

            'ScrollEndless': true

        });

 

    </script>

<script>

       init();

</script>
