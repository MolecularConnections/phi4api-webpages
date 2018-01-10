	<script src='js/autoSuggest.js'></script>
<script>dojoConfig = {parseOnLoad: true}</script>
	<script src='js/dojo/dojo.js'></script>

<div id="page" >
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
<p style="width:200px; color:#827f80; font-size: 1.8em; font-style: italic;">Field Facets</p>
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
<table width="100%" height="170" border="0" cellpadding="2" cellspacing="2" style="margin:10px 0px 0px 7px; font-size:12px">
  <tr>
    <td height="21">Barley</td>
    <td>Rice</td>
  </tr>
  <tr>
    <td height="21">Chinese radish</td>
    <td>Soybean</td>
  </tr>
  <tr>
    <td height="21">French bean</td>
    <td>Thale cress</td>
  </tr>
  <tr>
    <td height="21">Maize</td>
    <td>Tobacco </td>
  </tr>
  <tr>
    <td height="21">Mouse</td>
    <td>Tomato</td>
  </tr>
  <tr>
    <td height="21">Olives</td>
    <td>Winter squash</td>
  </tr>
  <tr>
    <td height="21">Potato</td>
    <td>Wheat </td>
  </tr>
</table>

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
</div>
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