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

function toggleAll(div,img) {
	var ele = document.getElementById(div);
	var imgage= document.getElementById(img);
	
	if(ele.style.display == "block") {
    		ele.style.display = "none";
			
			imgage.src="images/plus.jpg"
		//text.innerHTML = "<img src='images/plus.jpg'>FUNDING SOURCES";
  	}
	else {
		ele.style.display = "block";
		imgage.src="images/minus.jpg"
		//text.innerHTML = "<img src='images/minus.jpg' />FUNDING SOURCES";
		

	}
	
} 

	
	function locateHeader(div,img){
			
		 document.getElementById(div).style.display="none"
		 var name=div+"name"
		 window.location.hash=name
		 toggleAll(div,img)
	}
</script>
<div style="background: #f3f1f2; height:65px; ">
<!--<img src="images/bar.jpg" width="509" height="85" border="0" usemap="#Map" style="float:right; position:relative; margin-top:-1px" />
<map name="Map" id="Map"><area shape="rect" coords="395,18,419,40" href="login.htm" /><area shape="rect" coords="432,18,453,41" href="#" /><area shape="rect" coords="470,17,487,41" href="#" /></map> -->
	    <div class="innerpageheadings">
	     About Us
	    </div>
		<br />   
	   <div class="clear"></div>
	</div>

<!--<div style="width:100%; height:30px; background: url(images/head_back_top.jpg) repeat-x; font-size:12px"> bar
</div> -->
<div style="width:100%; height:auto; background: #fbf9fa">
<div style="width:80%; height:310px;  border:1px solid #4343434; position:relative; margin:0 auto">
<div class="content" style="width:70%; margin-top:12px ">
<div style="width:90%; padding:5px 10px 10px 10px; ">
<!--<div style="width:30%; float:right">
<br />
<a href="#ondexscreenshot" style="text-decoration:none"><input id="bigbutton" type="submit" value="Ondex screenshot" /></a>
<br /><br />
<a onclick="javaScript:locateHeader('toggleText4','toggleText4Img')" href="#geneontology" style="text-decoration:none"><input id="bigbutton" type="submit" value="Gene Ontology" /></a>
</div> -->
OTHER RESOURCES
<br /><br />
<a href="#resources" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">General Plant Pathology  </span></a><br /><br />

<a href="#resources" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">Sequenced Fungal and Oomycete Genomes </span></a><br /><br />

<a href="#resources" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">Reviews on Pathogenicity </span></a><br /><br />

<!--<a href="javaScript:locateHeader('toggleText4','toggleText4Img')" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">Future developments for PHI-base </span></a><br /><br /> -->
<a href="#ondexscreenshot" style="text-decoration:none"><span style="font-size:14px; color:#08/77D0">Gene Ontology  </span></a><br /><br />
<!--<a  href="#ondexscreenshot2" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">Ondex screenshot  </span></a><br /> <br /> -->
<a href="javaScript:locateHeader('toggleText4','toggleText4Img')" style="text-decoration:none"><span style="font-size:14px; color:#0877D0">Future developments for PHI-base </span></a>
</div>
</div>
<div style="width:26%; height:auto; float: left; margin:0px 10px 0 0px; font-size: 13px; text-align: justify;">
<div style="width:100%; float:left" class="sidebar">
				<div class="menu_box_list" >
				      		<ul >
								<li id="sideHead2" style="font-size:16px; ">HIGHLIGHTS</li>
								<li ><a href="javaScript:locateHeader('toggleTextin','toggleTextinImg')" style="color:#464F54"> <p style="font-size:14px; margin:2% 0px; padding:0px; text-align:left"><img src="images/arrow.png" width="7" height="9" /> Funding sources <br /> </p></a></li> 
								<li> <a href="javaScript:locateHeader('toggleText1','toggleText1Img')" style="color:#464F54"><p style="font-size:14px; margin:2% 0px; padding:0px; text-align:left"><img src="images/arrow.png" width="7" height="9" /> Related publications </p></a></li>
								<li> <a href="javaScript:locateHeader('toggleText3','toggleText3Img')"style="color:#464F54"><p style="font-size:14px; margin:2% 0px; padding:0px; text-align:left"><img src="images/arrow.png" width="7" height="9" /> Presentations </p></a></li>
								<li> <a href="javaScript:locateHeader('toggleText4','toggleText4Img')" style="color:#464F54"><p style="font-size:14px; margin:2% 0px; padding:0px; text-align:left"><img src="images/arrow.png" width="7" height="9" />  Future Works </p></a></li>
				    		</ul>
							
				   <div class="clear"></div>
	      		</div>
		</div>

</div>
</div>
</div>
<div style="width:80%; height:auto; padding:10px 0px ;  position:relative; margin:0 auto">
<span class="pageheading"  id="description">DESCRIPTION OF PHI-BASE</span>
<br /><br />
	<p style="font-size:14px">
	PHI-base is a web-accessible database that catalogues experimentally verified pathogenicity, virulence and effector genes from fungal, Oomycete and bacterial pathogens, which infect animal, plant, fungal and insect hosts. PHI-base is therefore an invaluable resource in the discovery of genes in medically and agronomically important pathogens, which may be potential targets for chemical intervention. In collaboration with the FRAC team, PHI-base also includes antifungal compounds and their target genes.
	<br /><br />
	Each entry in PHI-base is curated by domain experts and is supported by strong experimental evidence (for example, gene disruption and gene complementation experiments), as well as literature references in which the original experiments are described. Each gene in PHI-base is presented with its nucleotide and deduced amino acid sequence, as well as a detailed description of the predicted protein's function during the host infection process. To facilitate data interoperability, we have annotated genes using controlled vocabularies and links to external sources (Gene Ontology terms, EC Numbers, NCBI taxonomy, EMBL, PubMed and FRAC). 
	<br /><br />
	
	</p>
	
	
	
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="50%" align="left" valign="top" id="finding">
			<div style="background:#53A4DE; padding:8px"  ><a name="toggleTextinname" id="displayTextin" href="javascript:toggleAll('toggleTextin','toggleTextinImg');" style="font-size:16px; color:#ffffff; font-weight:bold"><img id="toggleTextinImg"src="images/plus.jpg" />FUNDING SOURCES</a> </div>
			<div id="toggleTextin" style="display: none; ">
			
			<p style="font-size:14px"><br/>
	<ol style="font-size:14px">
	<li style="font-size:14px"> Several specific improvements to PHI-base are currently supported by a BBSRC BBR award called PhytoPath: an Integrated resource for comparative phytopathogen genomics (BB/1000488/1). During phase 1 of this project, we have linked in a gene centric manner the European Bioinformatics Institute's (EBI's) new Ensembl Genomes Browser interface for priority crop and model phytopathogenic species of fungi and oomycetes. Further information on this joint Phytopath project is available at <a href="http://phytopathdb.org" target="_blank">http://phytopathdb.org</a></li>
	<br/>
	<li style="font-size:14px">PHI-base has been given National Capability status in 2012 by BBSRC for its part in helping the UK deliver world-leading environmental research.</li>
	<br/>
	<li style="font-size:14px">In 2013 BBSRC awarded follow-up funds for the PhytoPath project (Grant title: PhytoPath, an infrastructure for hundreds of plant pathogen genomes, BB/K020056/1). This award will allow to include additonal pathosystems, curate primary host targets of effectors, data on known protein-protein interactions and their cellular locations during the period 2014 to 2017. An important part of the grant submission was the high level of support from the scientific community.  In particular we would like to thank the following researchers for writing letters of support:</li>
<br/>
</ol>
    <strong style="font-size: 1.2em; color:#000">United Kingdom:</strong><br/>
<span style="font-size:14px">Ken Hayes (University of Exeter), Pietro Spanu (Imperial College), Mike Csukai (Syngenta, Jeallot's Hill), Matthew Fisher (Imperial College) James Fountaine (Scottish Agricultural College), Anna Avrova (The James Hutton Institute), Rumiana Ray (University of Nottingham), Sophia Tsoka (King's College, London), Steve Whisson (The James Hutton Institute), Gero Steinberg (University of Exeter), Hans Cools (Rothamsted Research), Jason Rudd (Rothamsted Research), Leighton Pritchard (The James Hutton Institute) and Laurence Bindschedler (Royal Holloway, London).</span>
<br/><br/>
<strong style="font-size: 1.2em; color:#000">Internationally:</strong><br/>
<span style="font-size:14px">Regine Kahmann (Max Planck Inst. Terrestial Microbiology, DE), Rosie Bradshaw (Massey University, NZ), Antonio de Pietro (University of Cordoba, SP), Alexandre Amaral (EMBRAPA, BR), Jan van Kan (Wageningen University, NL), John Manners (CSIRO Plant Industry, AUS), Barbara Howlett (University of Melbourne, AUS), Rohan Lowe (University of Melbourne, AUS), Martijn Rep (University of Amsterdam, NL), Pierre de Wit (University of Wageningen, NL), Eric Kemen (Max Planck Inst. Plant Breeding Res, DE), Daren Brown (USDA-ARS - Peoria, USA) and Frances Trail (Michigan State University, USA). </span>

<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
				</p>
			
			
			</div>
			</td>
		  </tr>
		  <tr>
			<td align="left" valign="top">&nbsp;</td>
		  </tr>
		  <tr>
			<td align="left" valign="top" id="publications">
			
			<div style="background:#53A4DE; padding:8px"><a name="toggleText1name" id="displayText1" href="javascript:toggleAll('toggleText1','toggleText1Img');" style="font-size:16px; color:#ffffff; font-weight:bold">
			<img id="toggleText1Img" src="images/plus.jpg" />PUBLICATIONS ON PHI-BASE</a> </div>
			<div id="toggleText1" style="display: none; ">
			
			
			  <p style="font-size:14px">
			
					<br />
					<p style="font-size:14px"> Urban M, Pant R, Raghunath A, Irvine AG, Pedro H and Hammond-Kosack K (2015). The Pathogen-Host Interactions database: additons and future developments.
					<i> Nucleic Acids Res</i>
				        43 (Database Issue): D645-655.	
					<br />
					doi: <a href='http://dx.doi.org/10.1093/nar/gku1165'>10.1093/nar/gku1165</a>
					</p>
			
					<br />
					<p style="font-size:14px"> Winnenburg, R., Urban, M., Beacham, A., Baldwin, T.K., Holland, S., Lindeberg, M., Hansen, H., Rawlings, C., Hammond-Kosack, K.E., and Kohler, J. (2008). PHI-base update: additions to the pathogen host interaction database.
					<i> Nucleic Acids Res</i>
					36, D572-576.
					<br />
					PubMed:
					<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=17942425" target="_blank">17942425</a>
					</p>

					<br />
					<p style="font-size:14px">
					Baldwin, T.K., Winnenburg, R., Urban, M., Rawlings, C., Köhler, J. and Hammond-Kosack, K.E. 2006. The Pathogen-Host Interactions database (PHI-base) provides insights into generic and novel themes of pathogenicity. <i>Mol Plant Microbe Interact</i>. 19(12):1451-62 
					<br />PubMed:<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&amp;db=pubmed&amp;dopt=Abstract&amp;list_uids=17153929" target="_blank">17153929</a>
					</p>

					<br />
					<p style="font-size:14px">
					 Winnenburg, R., Baldwin, T.K., Urban, M., Rawlings, C., Köhler, J. and Hammond-Kosack, K.E. 2006. PHI-base: a new database for pathogen host interactions.
					<i>Nucleic Acids Research</i>
					. 34(Database issue):D459-D464
					<br />
					PubMed:
					<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=16381911" target="_blank">16381911</a>
					
					<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
			
			
			</div>
			</td>
		  </tr>
		  <tr>
			<td align="left" valign="top">&nbsp;</td>
		  </tr>
		  <tr>
			<td align="left" valign="top" id="publications">
			<div style="background:#53A4DE; padding:8px"><a name="toggleText2name" id="displayText2" href="javascript:toggleAll('toggleText2','toggleText2Img');" style="font-size:16px; color:#ffffff; font-weight:bold"><img id="toggleText2Img" src="images/plus.jpg" />PUBLICATIONS CITING PHI-BASE</a> </div>
				<div id="toggleText2" style="display: none;">
				<div class="content" style="width:98.3%; margin-top:5px; font-size:14px">
		
				<p style="font-size:14px"><br/>
					<strong>Topic areas:</strong> original research articles describing single gene function studies and large scale forward genetics screens; characterisation of EST collections; full and partial genome annotation; protein-protein interaction mapping; inter-comparison of specific gene mutants within and between species; bioinformatics analysis; other databases on interactions and review articles.




					<br /><br />
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2015</p>
					<br />

					   Agrawal, Y. et al, (2015). Genome sequence, comparative analysis, and evolutionary insights into chitinases of entomopathogenic fungus <i>Hirsutella thompsonii.</i> <i>Genome biology and evolution</i> doi: <a href='http://dx.doi.org/10.1093/gbe/evv037'>10.1093/gbe/evv037</a>.<br><br>

					   Castelhano Santos, N. et al, (2015). Pathogenicity phenomena in three model systems: from network mining to emerging system-level properties. <i>Brief. Bioinform.</i> doi: <a href='http://dx.doi.org/10.1093/bib/bbt071'>10.1093/bib/bbt071</a> <br><br>

					   Comeau, A. M. et al, (2015). Functional annotation of the <i>Ophiostoma novo-ulmi</i> genome: Insights into the phytopathogenicity of the fungal agent of Dutch Elm Disease. <i>Genome Biology and Evolution</i> doi: <a href='http://dx.doi.org/10.1093/gbe/evu281'>10.1093/gbe/evu281</a>.<br><br>

					   Dang, H. X. et al, (2015). The Alternaria genomes database: a comprehensive resource for a fungal genus comprised of saprophytes, plant pathogens, and allergenic species. <i>BMC Genomics</i> doi: <a href='http://dx.doi.org/10.1186/s12864-015-1430-7'>10.1186/s12864-015-1430-7</a>.<br><br>

					   Durmus, S. et al, (2015). A Review on Computational Systems Biology of Pathogen-Host Interactions. <i>Frontiers in microbiology</i> doi: <a href='http://dx.doi.org/10.3389/fmicb.2015.00235'>10.3389/fmicb.2015.00235</a> <br><br>

					   Jaramillo, V. D. et al, (2015). Identification of horizontally transferred genes in the genus Colletotrichum reveals a steady tempo of bacterial to fungal gene transfer. <i>BMC Genomics</i> doi: <a href='http://dx.doi.org/10.1186/1471-2164-16-2'>10.1186/1471-2164-16-2</a> <br><br>

					   Malagocka, J. et al, (2015). Transcriptome of an entomophthoralean fungus (<i>Pandora formicae</i>) shows molecular machinery adjusted for successful host exploitation and transmission. <i>Journal of Invertebrate Pathology</i> doi: <a href='http://dx.doi.org/10.1016/j.jip.2015.05.001'>10.1016/j.jip.2015.05.001</a>.<br><br>

					   Schulze, S et al (2015). Computation prediction of molecular pathogen-host interactions based on dual transcriptome data.<i> Frontiers in Microbiology</i> doi:<a href='http://dx.doi.org/10.3389/fmicb.2015.00065'>10.3389/fmicb.2015.00065</a>.<br><br>

					   Subramanian, N. et al, (2015). Network representations of immune system complexity. <i>Wiley interdisciplinary reviews. Systems biology and medicine</i> doi: <a href='http://dx.doi.org/10.1002/wsbm.1288'>10.1002/wsbm.1288</a>.<br><br>

					   Troncoso, L. L. et al, (2015). Characterization and comparative analysis of a simian foamy virus complete genome isolated from Brazilian capuchin monkeys. <i>Virus research</i> doi: <a href='http://dx.doi.org/10.1016/j.virusres.2015.05.022'>10.1016/j.virusres.2015.05.022</a>.<br><br>

					   Urban, M. et al, (2015). Whole-genome analysis of Fusarium graminearum insertional mutants identifies virulence associated genes and unmasks untagged chromosomal deletions. <i>BMC genomics</i> doi: <a href='http://dx.doi.org/10.1186/s12864-015-1412-9'>10.1186/s12864-015-1412-9</a>.<br><br>
 
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2014</p>
					<br />

					   Bleves S, Dunger I, Walter MC et al (2014). HoPaCI-DB: host-Pseudomonas and Coxiella interaction database. <i>Nucleic Acids Res.</i> doi: <a href='http://dx.doi.org/10.1093/nar/gkt925'>10.1093/nar/gkt925</a><br><br>

					   de Castro, P. A. et al, (2014). ChIP-seq reveals a role for CrzA in the <i>Aspergillus fumigatus</i> high-osmolarity glycerol response (HOG) signalling pathway. <i>Molecular Microbiology</i> doi: <a href='http://dx.doi.org/10.1111/mmi.12785'>10.1111/mmi.12785</a>.<br><br>

					   Dyawanapelly, S. et al, (2014). RNA interference-based therapeutics: molecular platforms for infectious diseases. <i>Journal of biomedical nanotechnology</i> doi:  <a href='http://dx.doi.org/10.1166/jbn.2014.1929'>10.1166/jbn.2014.1929</a> <br><br>

					   Gao, S. et al, (2014). Genome sequence and virulence variation-related transcriptome profiles of Curvularia lunata, an important maize pathogenic fungus. <i>BMC Genomics</i> doi: <a href='http://dx.doi.org/10.1186/1471-2164-15-627'>10.1186/1471-2164-15-627</a><br><br>

					   Ghosh, S. et al, (2014). Identification and functional analysis of AG1-IA specific genes of <i>Rhizoctonia solani</i>. <i>Current genetics</i> doi: <a href='http://dx.doi.org/10.1007/s00294-014-0438-x'>10.1007/s00294-014-0438-x</a>.<br><br>

					   Guo L, Han L, Yang L et al. (2014). Genome and transcriptome analysis of the fungal pathogen <i>Fusarium oxysporum f. sp.  cubense </i>causing banana vascular wilt disease. <i>PLoS One.</i> doi: <a href='http://dx.doi.org/10.1371/journal.pone.0095543'>10.1371/journal.pone.0095543</a><br><br>

					   Hane, J. K. et al, (2014). Genome sequencing and comparative genomics of the broad host-range pathogen Rhizoctonia solani AG8. <i>PLoS genetics</i> doi: <a href='http://dx.doi.org/10.1371/journal.pgen.1004281'>10.1371/journal.pgen.1004281</a><br><br>

					   Hayden, K. J. et al, (2014). Dual RNA-seq of the plant pathogen Phytophthora ramorum and its tanoak host. <i>Tree Genet Genomes</i> doi: <a href='http://dx.doi.org/10.1007/s11295-014-0698-0'>10.1007/s11295-014-0698-0</a><br><br>

					   Hu, X. et al, (2014). Trajectory and genomic determinants of fungal-pathogen speciation and host adaptation. <i>Proc. Natl. Acad. Sci. U. S. A.</i> doi: <a href='http://dx.doi.org/10.1073/pnas.1412662111'>10.1073/pnas.1412662111</a><br><br>

					   Ke, X. et al, (2014). Transcriptome profiling to identify genes involved in pathogenicity of Valsa mali on apple tree. <i>Fungal Genet. Biol.</i> doi: <a href='http://dx.doi.org/10.1016/j.fgb.2014.04.004'>10.1016/j.fgb.2014.04.004</a><br><br>

					   Kersey PJ, Allen JE, Christensen M et al (2014). Ensembl Genomes 2013: scaling up access to genome-wide data. <i>Nucleic Acids Res.</i>doi: <a href='http://dx.doi.org/10.1093/nar/gkt979'>10.1093/nar/gkt979</a><br><br>

					   Pattemore, J. A. et al, (2014). The genome sequence of the biocontrol fungus <i>Metarhizium anisopliae</i> and comparative genomics of Metarhizium species. <i>BMC Genomics</i> doi: <a href='http://dx.doi.org/10.1186/1471-2164-15-660'>10.1186/1471-2164-15-660</a><br><br>

					   Rech, G. E. et al, (2014). Natural Selection on Coding and Noncoding DNA Sequences Is Associated with Virulence Genes in a Plant Pathogenic Fungus. <i>Genome Biology and Evolution</i> doi: <a href='http://dx.doi.org/10.1093/gbe/evu192'>10.1093/gbe/evu192</a><br><br>

					   Soliai MM, Meyer SE, Udall JA et al. (2014). De novo genome assembly of the fungal plant pathogen <i>Pyrenophora semeniperda</i>.  <i>PLoS One.</i> doi: <a href='http://dx.doi.org/10.1371/journal.pone.0087045'>10.1371/journal.pone.0087045</a><br><br>

					   Srivastava SK, Huang X, Brar HK et al. (2014). The genome sequence of the fungal pathogen <i>Fusarium virguliforme</i> that causes sudden death syndrome in soybean. <i>PLoS One</i> doi: <a href='http://dx.doi.org/10.1371/journal.pone.0081832'>10.1371/journal.pone.0081832</a><br><br>

					   Staats, C. C. et al, (2014). Comparative genome analysis of entomopathogenic fungi reveals a complex set of secreted proteins. <i>BMC Genomics</i> doi: <a href='http://dx.doi.org/10.1186/1471-2164-15-822'>10.1186/1471-2164-15-822</a><br><br>

					   Talhinhas, P. et al, (2014). Overview of the functional virulent genome of the coffee leaf rust pathogen Hemileia vastatrix with an emphasis on early stages of infection. <i>Frontiers in plant science</i> doi: <a href='http://dx.doi.org/10.3389/fpls.2014.00088'>10.3389/fpls.2014.00088</a><br><br>

					   Yu, M. et al, (2014). De novo sequencing and transcriptome analysis of Ustilaginoidea virens by using Illumina paired-end sequencing and development of simple sequence repeat markers. <i>Gene</i> doi: <a href='http://dx.doi.org/10.1016/j.gene.2014.06.008'>10.1016/j.gene.2014.06.008</a><br><br>

					   Zhang, Y.  et al (2014), Specific adaptation of <i>Ustilaginoidea virens</i> in occupying host florets revealed by comparative and functional genomics. <i>Nature communications</i>, doi: <a href='http://dx.doi.org/10.1038/ncomms4849'>10.1038/ncomms4849</a><br><br>


					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2013</p>
					<br />
					Andersson K, Meerupati T, Levander F et al. (2013). Proteome of the Nematode-Trapping Cells of the Fungus <span style="font-style:italic">Monacrosporium haptotylum</span>. <i>Appl. Environ. Microbiol.</i> doi: <a href="http://dx.doi.org/10.1128/AEM.01390-13" target="_blank">10.1128/AEM.01390-13</a><br />
					<br />
					Cai Z, Li G, Lin C et al. (2013). Identifying pathogenicity genes in the rubber tree anthracnose fungus <span style="font-style:italic">Colletotrichum gloeosporioides</span> through random insertional mutagenesis. <i>Microbiol Res.</i> doi: <a href="http://dx.doi.org/10.1016/j.micres.2013.01.005" target="_blank">10.1016/j.micres.2013.01.005</a><br /><br />
					Cools HJ, Hammond-Kosack KE. (2013). Exploitation of genomics in fungicide research: current status and future perspectives. <i>Mol Plant Pathol.</i> doi: <a href="http://dx.doi.org/10.1111/mpp.12001" target="_blank">10.1111/mpp.12001</a><br /><br />
					De la Iglesia D, Garcia-Remesal M, de la Calle G et al. (2013). The impact of computer science in molecular medicine: enabling high-throughput research. <i>Curr Top Med Chemi</i> PMID: 23548020<br /><br />
					Khoshraftar S, Hung S, Khan S et al. (2013). Sequencing and annotation of the <i>Ophiostoma ulmi</i> genome. <i>BMC Genomics.</i> doi: <a href="http://dx.doi.org/10.1186/1471-2164-14-162" target="_blank">10.1186/1471-2164-14-162</a><br /><br />
					Kshirsagar M, Carbonell J, Klein-Seetharaman J. (2013). Multitask learning for host-pathogen protein interactions. <i>Bioinformatics.</i> doi: <a href="http://dx.doi.org/10.1093/bioinformatics/btt245" target="_blank">10.1093/bioinformatics/btt245</a><br /><br />
					Lefebvre F, Joly DL, Labbe C et al. (2013). The transition from a phytopathogenic smut ancestor to an anamorphic biocontrol agent deciphered by comparative whole-genome analysis. <i>Plant Cell.</i> doi: <a href="http://dx.doi.org/10.1105/tpc.113.113969" target="_blank">10.1105/tpc.113.113969</a><br /><br />
					Liu X, Zhang X, Tang WH et al. (2013). eFG: an electronic resource for <span style="font-style:italic">Fusarium graminearum</span>. <i>Database (Oxford).</i> doi: <a href="http://dx.doi.org/10.1093/database/bat042" target="_blank">10.1093/database/bat042</a><br /><br />
					
					Lysenko et al (2013) Network-based data integration for selecting candidate virulence associated proteins in the cereal infecting fungus <span style="font-style:italic">Fusarium graminearum</span>. PLoS ONE. doi: <a href="http://dx.doi.org/10.1371/journal.pone.0067926" target="_blank">10.1371/journal.pone.0067926</a><br /><br />
					
					Mukherjee S, Sambarey A, Prashanthi K, Chandra N. (2013). Current trends in modeling host-pathogen interactions. <i>Data Mining and Knowledge Discovery.</i> doi: <a href="http://dx.doi.org/10.1002/widm.1085" target="_blank">10.1002/widm.1085</a><br /><br />
					
					Thakur K, Chawla V, Bhatti S et al. (2013). De novo transcriptome sequencing and analysis for <span style="font-style:italic">Venturia inaequalis</span>, the devastating apple scab pathogen. <i>PLoS One.</i> doi: <a href="http://dx.doi.org/10.1371/journal.pone.0053937" target="_blank">10.1371/journal.pone.0053937</a><br /><br />
					Xiao-chen B, Jing Y, Sheng-qi W. (2013). Systems biology approach for virus-host interaction and host- directed antiviral strategy. <i>International Journal of AUTOMATION AND COMPUTING.</i> doi: <a href="http://dx.doi.org/10.3867/j.issn.1000-3002.2013.02.001" target="_blank">10.3867/j.issn.1000-3002.2013.02.001</a><br /><br />
					Zhou H, Jin J, Wong L. (2013). Progress in computational studies of host-pathogen interactions. <i>J Bioinform Comput Biol.</i> doi: <a href="http://dx.doi.org/10.1142/S0219720012300018" target="_blank">10.1142/S0219720012300018</a>
					<br /><br />
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2012</p>
					<br />
					Arnold R, Boonen K, Sun MG, Kim PM. (2012). Computational analysis of interactomes: current and future perspectives for bioinformatics approaches to model the host-pathogen interaction space. <i>Methods.</i> doi: <a href="http://dx.doi.org/10.1016/j.ymeth.2012.06.011" target="_blank">10.1016/j.ymeth.2012.06.011</a><br /><br />
					Bakkerena G, Songa X, Panwar V et al. (2012). Functional genomic approaches in cereal rusts. <i>Canadian Journal of Plant Pathology.</i> doi: <a href="http://dx.doi.org/10.1080/07060661.2012.664567" target="_blank">10.1080/07060661.2012.664567</a><br /><br />
					Durmus Tekir SD, Ulgen KO. (2012). Systems biology of pathogen-host interaction: networks of protein-protein interaction within pathogens and pathogen-human interactions in the post-genomic era. <i>Biotechnol J.</i> doi: <a href="http://dx.doi.org/10.1002/biot.201200110" target="_blank">10.1002/biot.201200110</a><br /><br />
					Fernandez D, Tisserant E, Talhinhas P, et al. (2012) 454-pyrosequencing of <span style="font-style:italic">Coffea arabica</span> leaves infected by the rust fungus <span style="font-style:italic">Hemileia vastatrix</span> reveals in planta-expressed pathogen-secreted proteins and plant functions in a late compatible plant-rust interaction.<i> Mol Plant Pathol</i> doi: <a href="http://dx.doi.org/10.1111/j.1364-3703.2011.00723.x" target="_blank">10.1111/j.1364-3703.2011.00723.x</a><br /><br />
					Garcia-Garcia J, Schleker S, Klein-Seetharaman J, Oliva B. (2012). <i>BIPS: BIANA Interolog Prediction Server. </i>A tool for protein-protein interaction inference. <i>Nucleic Acids Res.</i> doi: <a href="http://dx.doi.org/10.1093/nar/gks553" target="_blank">10.1093/nar/gks553</a><br /><br />
					Gonzalez-Fernandez R, Jorrin-Novo JV (2012) Contribution of proteomics to the study of plant pathogenic fungi. <i>J Proteome Res</i> doi: <a href="http://dx.doi.org/10.1021/pr200873p" target="_blank">10.1021/pr200873p</a><br /><br />
					He M, Hu J, Xia Y. (2012). Large scale expressed sequence tag (EST) analysis of <span style="font-style:italic">Metarhizium acridum </span>infecting <span style="font-style:italic">Locusta migratoria</span> reveals multiple strategies for fungal adaptation to the host cuticle. <i>Curr Genet.</i> doi: <a href="http://dx.doi.org/10.1007/s00294-012-0382-6" target="_blank">10.1007/s00294-012-0382-6</a><br /><br />
					Hu J, Chen C, Peever T et al. (2012). Genomic characterization of the conditionally dispensable chromosome in <span style="font-style:italic">Alternaria arborescens</span> provides evidence for horizontal gene transfer. <i>BMC Genomics.</i> doi: <a href="http://dx.doi.org/10.1186/1471-2164-13-171" target="_blank">10.1186/1471-2164-13-171</a><br /><br />
					Hulsegge B, Smits MA, te Pas MF, Woelders H. (2012). Contributions to an animal trait ontology. <i>J Anim Sci.</i> doi: <a href="http://dx.doi.org/10.2527/jas.2011-4251" target="_blank">10.2527/jas.2011-4251</a><br /><br />
					Kour A, Greer K, Valent B et al. (2012). MGOS: development of a community annotation database for <span style="font-style:italic"> Magnaporthe oryzae</span>. <i>Mol Plant Microbe Interact.</i> doi: <a href="http://dx.doi.org/10.1094/MPMI-07-11-0183" target="_blank">10.1094/MPMI-07-11-0183</a><br /><br />
					Lu T, Yao B, Zhang C. (2012). DFVF: database of fungal virulence factors. Database (Oxford). doi: <a href="http://dx.doi.org/10.1093/database/bas032" target="_blank">10.1093/database/bas032</a><br /><br />
					Marcet-Houben M, Ballester AR, de la Fuente B et al. (2012). Genome sequence of the necrotrophic fungus <span style="font-style:italic">Penicillium digitatum</span>, the main postharvest pathogen of citrus. BMC Genomics. doi: <a href="http://dx.doi.org/10.1186/1471-2164-13-646" target="_blank">10.1186/1471-2164-13-646</a><br /><br />
					Schleker S, Garcia-Garcia J, Klein-Seetharaman J, Oliva B. (2012). Prediction and comparison of Salmonella-human and Salmonella-Arabidopsis interactomes. Chem Biodivers. doi: <a href="http://dx.doi.org/10.1002/cbdv.201100392" target="_blank">10.1002/cbdv.201100392</a><br /><br />
					Tanh T, Joshi S, Warren S, et al. (2012) Literature mining of host-pathogen interactions: comparing feature-based supervised learning and language-based approaches. Bioinformatics. doi: <a href="http://dx.doi.org/10.1093/bioinformatics/bts04" target="_blank">10.1093/bioinformatics/bts04</a><br /><br />
					Thieu T, Joshi S, Warren S, Korkin D. (2012). Literature mining of host-pathogen interactions: comparing feature-based supervised learning and language-based approaches. Bioinformatics. doi: <a href="http://dx.doi.org/10.1093/bioinformatics/bts042" target="_blank">10.1093/bioinformatics/bts042</a><br /><br />
					Vargas WA, Martin JM, Rech GE et al. (2012). Plant defense mechanisms are activated during biotrophic and necrotrophic development of <span style="font-style:italic">Colletotricum graminicola</span> in maize. Plant Physiol. doi: <a href="http://dx.doi.org/10.1104/pp.111.190397" target="_blank">10.1104/pp.111.190397</a><br /><br />
					Xiao-Gang Z, Chun-Xin Y, Yu-Mei D. (2012). Progress on nitrogen regulation gene expression of plant pathogenic fungi under nitrogen starvation. HEREDITAS. doi: <a href="http://dx.doi.org/10.3724/SP.J.1005.2012.00848" target="_blank">10.3724/SP.J.1005.2012.00848</a><br /><br />
					Zheng LL, Li YX, Ding J et al. (2012). A comparison of computational methods for identifying virulence factors. PLoS One. doi: <a href="http://dx.doi.org/10.1371/journal.pone.0042517" target="_blank">10.1371/journal.pone.0042517</a><br /><br />
					Zhou XG, Yao CX, Ding YM et al. (2012). Progress on nitrogen regulation gene expression of plant pathogenic fungi under nitrogen starvation. Yi Chuan. PMID: 22805210<br /><br />
					Zhu S, Cao YZ, Jiang C et al. (2012). Sequencing the genome of <span style="font-style:italic">Marssonina brunnea</span> reveals fungus-poplar co-evolution. BMC Genomics. doi: <a href="http://dx.doi.org/10.1186/1471-2164-13-382" target="_blank">10.1186/1471-2164-13-382</a><br /><br /> 
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2011</p>
					<br />
					
					Antoniw J, Beacham AM, Baldwin TK, et al. (2011) OmniMapFree: A unified tool to visualise and explore sequenced genomes.   <i>BMC Bioinformatics  </i>doi: <a href="http://dx.doi.org/10.1186/1471-2105-12-447" target="_blank">10.1186/1471-2105-12-447</a>  
					<br /><br />
					
					Yang J, Wang, L, Ji X, et al.(2011) Genomic and proteomic
					analyses of the fungus <span style="font-style:italic">Arthrobotrys oligospora</span>
					provide insights into nematode-trap formation. <i>PLoS
					Pathogens  </i>doi: <a href="http://dx.doi.org/10.1371/journal.ppat.1002179" target="_blank">10.1371/journal.ppat.1002179</a>  
					<br /><br />
					
					Driscoll T, Gabbard J, Mao C, et al.(2011) Integration and visualization of host-pathogen data related to infectious diseases. <i>Bioinformatics  </i>doi:<a href="http://dx.doi.org/10.1093/bioinformatics/btr391" target="_blank">10.1093/bioinformatics/btr391</a>  
					
					<br /><br />
					
					
					Lucas (2011). Advances in plant disease and pest management. <i>Journal of Agricultural Science.</i> doi: <span style="color:#0548ec">10.1017/s0021859610000997</span><br /><br />
					Kozhenkov et al (2011). BiologicalNetworks--tools enabling the integration of multi-scale data for the host-pathogen studies. <i>BMC Syst Biol.</i> doi: <span style="color:#0548ec">10.1186/1752-0509-5-7</span><br /><br />
					Gao et al (2011). Genome sequencing and comparative transcriptomics of the model entomopathogenic fungi <span style="font-style:italic">Metarhizium anisopliae </span>and M. acridum. </i>PLoS Genetics. doi: <span style="color:#0548ec">10.1371/journal.pgen.1001264</span><br /><br />
					
					Doehlemann et al (2011). Two linked genes encoding a secreted effector and a membrane protein are essential for <span style="font-style:italic">Ustilago maydis-induced tumour</span> formation. <i>Molecular Microbiology.</i> doi: <span style="color:#0548ec">10.1111/j.1365-2958.2011.07728.x</span><br /><br />
					van de Wouw and Howlett (2011). Fungal pathogenicity genes in the age of 'omics'. <i>Mol Plant Pathol.</i> doi: <span style="color:#0548ec">10.1111/j.1364-3703.2010.00680.x</span><br /><br />
					
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2010</p>
					<br />
					
					Sintchenko (2010). Informatics for infectious disease research and control. <i>in: Infectious Disease Informatics.</i> doi: <span style="color:#0548ec">10.1007/978-1-4419-1327-2_1</span><br /><br />
					Sanchez-Rodriguez et al (2010). The potential for pathogenicity was present in the ancestor of the Ascomycete subphylum Pezizomycotina. <i>BMC Evolutionary Biology.</i> doi: <span style="color:#0548ec">10.1186/1471-2148-10-318</span><br />
					<br />
					Lowe et al (2010). A combined (1)H nuclear magnetic resonance and electrospray ionization mass spectrometry analysis to understand the basal metabolism of plant-pathogenic Fusarium spp. <i>Molecular Plant-Microbe Interactions.</i> doi: <span style="color:#0548ec">10.1094/mpmi-04-10-0092</span><br /><br />
					Kumar and Nanduri (2010). HPIDB - a unified resource for host-pathogen interactions. <i>BMC Bioinformatics.</i> doi: <span style="color:#0548ec">10.1186/1471-2105-11-s6-s16</span><br /><br />
					Kim et al. (2010). Combining ChIP-chip and expression profiling to model the<i> MoCRZ1</i> mediated circuit for Ca(2+)/calcineurin signaling in the rice blast fungus. <i>PLoS Pathogens.</i> doi: <span style="color:#0548ec">10.1371/journal.ppat.1000909</span><br />
					<br />
					Javier Fernandez-Acero et al (2010). 2-DE proteomic approach to the Botrytis cinerea secretome induced with different carbon sources and plant-based elicitors. <i>Proteomics.</i> doi: <span style="color:#0548ec">10.1002/pmic.200900408</span><br /><br />
					Flower et al (2010). Computer aided selection of candidate vaccine antigens. <i>Immunome research.</i> doi: <span style="color:#0548ec">10.1186/1745-7580-6-S2-S1</span><br /><br />
					Baldwin et al (2010). A partial chromosomal deletion caused by random plasmid integration resulted in a reduced virulence phenotype in <span style="font-style:italic">Fusarium graminearum.</span> <i>Molecular Plant-Microbe Interactions.</i> doi: <span style="color:#0548ec">10.1094/mpmi-23-8-1083</span><br /><br />
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2009</p>
					<br />
					Zhao et al (2009). FPPI: <span style="font-style:italic">Fusarium graminearum</span> protein-protein interaction database. <i>Journal of Proteome Research.</i> doi: <span style="color:#0548ec">10.1021/pr900415b</span><br /><br />
					Takahara et al (2009). Flow cytometric purification of <span style="font-style:italic">Colletotrichum higginsianum</span> biotrophic hyphae from Arabidopsis leaves for stage-specific transcriptome analysis. <i>Plant Journal.</i> doi: <span style="color:#0548ec">10.1111/j.1365-313X.2009.03896.x</span><br /><br />
					Soderlund (2009). Computational techniques for elucidating plant-pathogen interactions from large-scale experiments on fungi and oomycetes. <i>Briefings in Bioinformatics.</i> doi: <span style="color:#0548ec">10.1093/bib/bbp053</span><br /><br />
					Oeser et al (2009). Expressed sequence tags from the flower pathogen <span style="font-style:italic">Claviceps purpurea.</span> <i>Mol Plant Pathol.</i> doi: <span style="color:#0548ec">10.1111/j.1364-3703.2009.00560.x</span><br /><br />
					Li et al (2009). Towards a comprehensive HBV-human interaction map. <i>2009 International Joint Conference on Bioinformatics Systems Biology and Intelligent Computing Proceedings.</i> doi: <span style="color:#0548ec">10.1109/ijcbs.2009.49</span><br /><br />
					Korves and Colosimo (2009). Controlled vocabularies for microbial virulence factors. <i>Trends in Microbiology.</i> doi: <span style="color:#0548ec">10.1016/j.tim.2009.04.002</span><br /><br />
					Huser et al (2009). Discovery of pathogenicity genes in the crucifer anthracnose fungus <span style="font-style:italic">Colletotrichum higginsianum</span> using random insertional mutagenesis. <i>Molecular Plant-Microbe Interactions.</i> doi:<span style="color:#0548ec"> 10.1094/mpmi-22-2-0143</span><br /><br />	
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2008</p>
					<br />
					Soanes et al (2008). Comparative genome analysis of filamentous fungi reveals gene family expansions associated with fungal pathogenesis. <i>PLoS One.</i> doi:<span style="color:#0548ec"> 10.1371/journal.pone.0002300</span><br />
					<br />
					Kleemann et al (2008). Identification of soluble secreted proteins from appressoria of <span style="font-style:italic">Colletotrichum higginsianum</span> by analysis of expressed sequence tags. <i>Microbiology-Sgm.</i> doi: <span style="color:#0548ec">10.1099/mic.0.2007/014944-0</span><br /><br />
					Jeon et al (2008). Functional genomics in the rice blast fungus to unravel the fungal pathogenicity. <i>Journal of Zhejiang University-Science B.</i> doi: <span style="color:#0548ec">10.1631/jzus.B0860014</span><br /><br />
					He et al (2008). The prediction of protein-protein interaction networks in rice blast fungus. <i>BMC Genomics.</i> doi: <span style="color:#0548ec">10.1186/1471-2164-9-519</span><br />
					<br />
					Haegi et al (2008). Histological and molecular analysis of Rdg2a barley resistance to leaf stripe. <i>Mol Plant Pathol.</i> doi: <span style="color:#0548ec">10.1111/j.1364-3703.2008.00479.x</span><br /><br />
					Frezal and Leblois (2008). Four years of DNA barcoding: Current advances and prospects. <i>Infection Genetics and Evolution.</i> doi:<span style="color:#0548ec"> 10.1016/j.meegid.2008.05.005</span><br /><br />
					Bolton and Thomma (2008). The complexity of nitrogen metabolism and nitrogen-regulated gene expression in plant pathogenic fungi. <i>Physiological and Molecular Plant Pathology.</i> doi: <span style="color:#0548ec">10.1016/j.pmpp.2008.07.001</span><br /><br />
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2007</p>
					<br />
					Yockteng et al (2007). Expressed sequences tags of the anther smut fungus <span style="font-style:italic">Microbotryum violaceum</span> identify mating and pathogenicity genes. <i>BMC Genomics.</i> doi: <span style="color:#0548ec">10.1186/1471-2164-8-272</span><br /><br />
					Xiang et al (2007). PHIDIAS: a pathogen-host interaction data integration and analysis system. <i>Genome Biol.</i> doi: <span style="color:#0548ec">10.1186/gb-2007-8-7-r150</span><br /><br />
					Williamson et al (2007). <span style="font-style:italic">Botrytis cinerea:</span> the cause of grey mould disease. <i>Mol Plant Pathol.</i> doi: <span style="color:#0548ec">10.1111/j.1364-3703.2007.00417.x</span><br /><br />
					van der Does and Rep (2007). Virulence genes and the evolution of host specificity in plant-pathogenic fungi. <i>Mol Plant Microbe Interact.</i> doi: <span style="color:#0548ec">10.1094/MPMI-20-10-1175</span><br /><br />
					van Baarlen et al (2007). Molecular mechanisms of pathogenicity: how do pathogenic microorganisms develop cross-kingdom host jumps? <i>FEMS Microbiology Reviews.</i> doi: <span style="color:#0548ec">10.1111/j.1574-6976.2007.00065.x</span><br /><br />
					Staal and Dixelius (2007). Tracing the ancient origins of plant innate immunity. <i>Trends in Plant Science.</i> doi: <span style="color:#0548ec">10.1016/j.tplants.2007.06.014</span><br /><br />
					Jeon et al (2007). Genome-wide functional analysis of pathogenicity genes in the rice blast fungus. <i>Nature Genetics.</i> doi: <span style="color:#0548ec">10.1038/ng2002</span><br /><br />
					Hane et al (2007). Dothideomycete-plant interactions illuminated by genome sequencing and EST analysis of the wheat pathogen <span style="font-style:italic">Stagonospora nodorum</span>. <i>Plant Cell.</i> doi: <span style="color:#0548ec">10.1105/tpc.107.052829</span><br /><br />
					DiGuistini et al (2007). Generation and annotation of lodgepole pine and oleoresin-induced expressed sequences from the blue-stain fungus <span style="font-style:italic">Ophiostoma clavigerum</span>a mountain pine beetle-associated pathogen. <i>Fems Microbiology Letters.</i> doi: <span style="color:#0548ec">10.1111/j.1574-6968.2006.00565.x</span><br /><br />
					Dickman (2007). Subversion or coersion? Pathogenic deteminants in fungal phytopathogens. <i>Fungal Biology Reviews.</i> doi: <span style="color:#0548ec">10.1016/j.fbr.2007.06.003</span><br /><br />
					Davies et al (2007). Using databases and data mining in vaccinology. <i>Expert opinion on Drug Discovery.</i> doi: <span style="color:#0548ec">10.1517/17460441.2.1.19</span><br /><br />
					Bouzidi et al (2007). Expressed sequence tags from the oomycete <i>Plasmopara halstedii</i> an obligate parasite of the sunflower. <i>BMC Microbiol.</i> doi: <span style="color:#0548ec">10.1186/1471-2180-7-110</span><br /><br />
					<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2006</p>
					<br />
					Sexton and Howlett (2006). Parallels in fungal pathogenesis on plant and animal hosts. <i>Eukaryotic cell.</i> doi: <span style="color:#0548ec">10.1128/ec.00277-06</span><br /><br />
					O'Connell and Panstruga (2006). Tete a tete inside a plant cell: establishing compatibility between plants and biotrophic fungi and oomycetes. <i>New Phytologist.</i> doi: <span style="color:#0548ec">10.1111/j.1469-8137.2006.01829.x</span><br /><br />
					Kohler et al (2006). Ontology based text indexing and querying for the semantic web. <i>Knowledge-Based Systems.</i> doi: <span style="color:#0548ec">10.1016/j.knosys.2006.04.015</span><br /><br />
					Kohler et al (2006). Graph-based analysis and visualization of experimental results with ONDEX. <i>Bioinformatics.</i> doi: <span style="color:#0548ec">10.1093/bioinformatics/bt/081</span>
					
					
					<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
				</p>
				

            </div>
				</div>	
				
			</td>
		  </tr>
		  		  <tr>
			<td align="left" valign="top">&nbsp;</td>
		  </tr>
		    <tr>
    <td align="left" valign="top" id="presentations">
		<div style="background:#53A4DE; padding:8px">
		<a name="toggleText3name" id="displayText3" href="javascript:toggleAll('toggleText3','toggleText3Img');" style="font-size:16px; color:#ffffff; font-weight:bold"><img id="toggleText3Img"src="images/plus.jpg" />PRESENTATIONS AND POSTERS ON PHI-BASE</a> 
		</div>
		<div id="toggleText3" style="display: none;">
		<p style="font-size:14px; margin-top:10px">
		<br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2013</p>
<br />
Urban M, Antoniw J, Martins N, Lysenko A, Grzebyta J, Janowska-Sedja E, Saqi M, Hammond-Kosack K.
<a href="suppl/021MartinUrbanAsilomarPoster2013.pdf" target="_blank">Using the phenotypic information in the PHI-base database to explore pathogen genomes. 27th Fungal Genetics Conference, Asilomar, March 12-17, 2013.</a>
<br /><br />
Same poster presented at The Agriscience Symposium 'Biological and Chemical Approaches Towards Combating Resistance in Agriculture, held at Imperial college, London on 26th Sep 2013. Sponsored by the Royal Society of Chemistry, Biological &amp; Medicinal Chemistry Sector and AGRI-net.
<br /><br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2012</p>
<br />
Posters on PHI-base and Phytopath resources and 2 additional demonstration/user engagement sessions. 11th European Conference on fungal genetics, 30 March - 2 April 2012, Marburg, Germany. 
<br /><br />
K. Hammond-Kosack, J. Grzebyta, M. Urban, M. Saqi. The Phytopath/PHI-base resource. 18th UK PhD conference Molecular Biology of Plant Pathogens (MBPP), Reading University, 16th - 17th April 2012.
<br /><br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2011</p>
<br />
J. Lucas, J. Grzebyta, M. Urban, M. Saqi and K. E. Hammond-Kosack. The pathogen-host interactions database: new developments. The Center for Biomedical Informatics, State University of Campinas, Brazil, 16th Dec 2011<br /><br />
J. Grzebyta, A. Splendiani, M. Urban, K. E. Hammond-Kosack, C. J. Rawlings and M. Saqi. Towards a computational representation of host-pathogen interaction networks. Second SICSA Workshop on Biological Networks, 21st Oct 2011<br /><br />
M. Saqi, Andrea Splendiani, J. Grzebyta, M. Urban, M. Defoin-Platel, E. Janowska-Sejda, C. Rawlings and K. E. Hammond-Kosack. Gene discovery for improved resistance to pests and pathogens. Monogram workshop Session V, Sutton Bonnington, Nottingham UK, 11-13th April 2011
<br /><br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2010</p>
<br />
E. Janowska-Sejda , M. Defoin-Platel, K. E. Hammond-Kosack , M. Urban , S. Tsoka and M. Saqi. A systems biology approach to explore host-pathogen interactions through the use and further development of PHI-base database and newly sequenced pathogen genomes. Molecular Biology of Plant Pathogens Conference , Exeter, UK, 17th - 19th September 2010.<br /><br />
J. Grzebyta, A. Splendiani, M. Urban, K. E. Hammond-Kosack, C. J. Rawlings and M. Saqi. PHI-base 4: A new approach for capturing host-pathogen interactions. Molecular Biology of Plant Pathogens Conference , Exeter, UK,  17th - 19th September 2010.<br /><br />
K. Hammond-Kosack,  M. Urban, J. Rudd, H. Cools and J. Antoniw. The plant pathogen 'omics world  where is it taking us in developing novel options to control fungal diseases ?  9th International Mycology Congress (IMC9), Edinburgh, UK, 1-6 August 2010<br /><br />
A. Beacham, J. Antoniw, A. Freeman, M. Urban, K. Hammond-Kosack. The identification of a virulence factor enriched micro-region in the <i>Fusarium graminearum</i> genome. 9th International Mycology Congress (IMC9), Edinburgh, UK, 1-6 August 2010
<br /><br />


<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2009</p>
<br />
K. Hammond-Kosack, M. Urban, A. Beacham, N. Brown, C. Cavanet, M. Saqi, C. Rawlings and J. Antoniw.   Using genomics to 
reveal the enemy's weapons.  BA festival of Science, University of Surrey, Guildford, Sept 2009 
<br />
<br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2008</p>
<br />
K. Hammond-Kosack, T. Baldwin, A. Beacham, M. Urban, R. Winnenburg, J. Koehler, M. Saqi and C. Rawlings.  Novel ways to 
explore sequenced fungal genomes. European Fungal Genetics Conference, Edinburgh, UK April 2008  
<br />
<br />

A. Beacham, C. Cavanet, J. Taubert, M. Urban, J. Antoniw, C. Rawlings and  K. Hammond-Kosack.   Analysis of the newly sequenced 
Fusarium genomes using PHI-base and ONDEX. 10th International Fusarium and Fusarium genomics workshop. Alghero, Sardinia, Italy, Sept 2008
<br />
<br />

K. Hammond-Kosack, T. Baldwin, M. Urban, R. Winnenburg, J. Koehler, M. Saqi and C. Rawlings.  The plant pathogen 'omics world 
- where is it taking us?   EBI-EMBL joint workshop, Cambridge, UK Oct 2008
<br />
<br />

K. Hammond-Kosack and J. Antoniw. An inter-comparison of the pathogenicity, virulence  and effector gene complement of the six Dothidiomycete 
genomes.  Dothidiomycetes genome jamboree, DOE, Joint Genome Institute, Walnut Creek, California, USA Nov 2008
<br />
<br />
K. Hammond-Kosack, M. Urban, A. Beacham, N. Brown, C. Cavanet, M. Saqi, C. Rawlings and J. Antoniw   How can molecular 
genetic information on plant pathogens benefit disease management. British Society for Plant Pathology, Presidential conference, Queen Mary College, 
London, Dec 2008. 
<br />
<br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2007</p>
<br />
K. Hammond-Kosack, M. Urban, J. Rudd and K. Kanyuka    Comparative genomics of pathogenesis and innate immunity.   Joint Rothamsted 
Research - Institute of Animal Health Workshop, held at The Compton Laboratory, England,  May 2007
<br />
<br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2006</p>
<br />

J. Köhler, R. Winnenburg, C. Rawlings, T. Baldwin, M. Urban and K. Hamond-Kosack<br />
Pathogen-Host Interactions Database (Phi-Base)<br />
COGEME interest group meeting, 7th - 8th November 2006, Chancellors Hotel and Conference Centre, Manchester, UK
<br />
<br />
T. K. Baldwin, R. Winnenburg, M. Urban, C. Rawlings, J. Köhler and K. E. Hammond-Kosack <br />
PHI-base: A database of experimentally verified pathogenicity, virulence and effector genes in fungal and Oomycete pathogens of animals and plants<br />
8th European Conference on Fungal Genetics in the Symposium "Mechanisms of human pathogenesis" 8th &amp; 11th April 2006, Vienna, Austria<br />
Online:<a href="http://www.ecfg.info/" target="_blank">Conference</a>
<a href="suppl/PHI-base_at_Rothamsted-Vienna%20April%2006.ppt" target="_blank">Presentation</a>
<br />
<br />
<p style="font-size:16px; font-weight:bold; width:99.5%; background: #f4f2f3; padding:3px 0 3px 3px">2005</p>
<br />
T. Baldwin, R. Winnenburg, J. Köhler, M. Urban and K. Hammond-Kosack<br /> 
Bioinformatic and molecular genetic tools for identifying genes involved in pathogenicity<br />
XVI Molecular Biology of Plant Pathogens meeting, Ambleside 19-21th September 2005<br />
ESF-EMBO Symposium on Comparative Genomics of Eukaryotic Microorganisms, Sant Feliu de Guixols, Spain. November 2005<br />
(Oral and poster presentations)
set undofile
<br />
<br />

T. Baldwin, R. Winnenburg, J. Köhler, M. Urban and K. Hammond-Kosack.<br />
Bioinformatic and molecular genetic tools for identifying genes involved in the pathogenicity of <i>Fusarium graminearum</i> on wheat ears. <br />
COGEME users meeting - Manchester University November 2005<br />
Online:<a href="http://www.cogeme.man.ac.uk/" target="_blank">(http://www.cogeme.man.ac.uk/)

<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
			
		</div>	
	</td>
  </tr>
  
  <tr>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top" id="futurework">
		<div style="background:#53A4DE; padding:8px">
		<a name="toggleText4name" id="displayText4" href="javascript:javascript:toggleAll('toggleText4','toggleText4Img');" style="font-size:16px; color:#ffffff; font-weight:bold"><img id="toggleText4Img" src="images/plus.jpg" />FUTURE DEVELOPMENTS FOR PHI-base</a> 
		</div>
		<div id="toggleText4" style="display: none; font-size:14px">
						  <br />
<strong class="headline_year" >PHASE 1 - </strong>Link the new ENSEMBL genome browser interface to the contents of PHI-base in a gene centric manner - achieved October 2011
<br /><br />
<strong class="headline_year" >PHASE 2 - </strong>Train others in the data curation process to clear the peer-reviewed paper backlog - on track
<br /><br />
<strong class="headline_year" >PHASE 3 - </strong>Development of a prototype self-entry data curation interface
<br /><br />
<strong class="headline_year" >PHASE 4 - </strong>Beta testing of the curation interface for several species
<br /><br />
<strong class="headline_year" >PHASE 5 - </strong>Launch the new database scheme as PHI-base version 4
<br /><br />
<strong class="headline_year" >PHASE 6 - </strong>Development of tools to permit basic pathogen comparative analysis directly within PHI-base 
<br /><br />

We intend to show relationships between proteins in PHI-base using network representations where the nodes represent the proteins and the edges 
reflect the degree of sequence similarity between the proteins. The nodes in these clusters of related proteins would be colour and shape coded 
according to whether the pathogens were plant/animal and according to phenotype (see beneath for prototype image using the ONDEX (Kohler et al, (2006) 
set undofile
Bioinformatics, 22:1383-90) data integration and visualisation software). The curation tool would automatically assign a new sequence to a cluster (if 
related) thereby allowing the annotator to view its biological context. Additionally the user would be able to select groups of related proteins and 
retrieve the corresponding sequences and perform multiple sequence alignments. This would allow the patterns of sequence conservation to be examined 
in the context of the type of pathogen and the associated phenotype.
<br />
<br />
<br />
<b><strong class="headline_year" >Figure:</strong> Part of an Ondex screenshot showing a cluster of related 
sequences from PHI-base (triangles) coloured according to outcome (phenotype) and 
showing relationships to associated KEGG pathways (stars). </b>The PHI-base 
proteins were clustered using MCL clustering. Some edges in the graph are not 
shown for increased clarity. We hope to develop a link from the proposed curation 
tool to an Ondex  web service to allow a new putative sequence involved in a 
pathogen-host interaction to be assigned to a cluster (if appropriate) and the 
Ondex graph returned. Inspection of the graph would then allow the curator to 
view the context of the new sequence in relation to existing PHI-base sequences 
and pathway information. 
The tightly connected cluster are polygalacturinases (part of glycosyl hydrolase 
28 family)
Mappings  to KEGG - include Pentose and Glucuronate interconversion, Starch and 
sucrose metabolism,  Aminosugars metabolism. Some edges are not shown for 
clarity.
<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
<br />
<br />
<strong class="headline_year" id="geneontology" >set undofile</strong>
<br /><br />
<img width="900" height="493" alt="Ondex Example" src="images/ondex_example.jpg" > 
</p>
<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
		</div>	
	</td>
  </tr>
  
  
		</table>

	<div style="width:99%; height:150px; margin:35px 0px ">
	<div align="left" class="wrapper">
<p style="width:250px;" class="pageheading" id="resources">OTHER RESOURCES </p>
<hr style="color:#e4e3e3;">


	<div style="width:28%; height:auto; float:left; padding:10px ">
	<a href="generalplant.htm"><span class="pageheading" >General Plant Pathology </span></a>
	<br />
	<p style="margin-top:5px"></p>
	<span style="font-size: 14px;">General Plant Pathology </span>
		<br />
		<span style="font-size: 14px;">de Bary, H. A. 1879. The Phenomenon of Symbiosis. Strasbourg. </span>
	</div>
	<div style="width:28%; float:left; margin-left:20px; padding:10px">
	<a href="generalplant.htm#q2"><span class="pageheading" >Sequenced Fungal and Oomycete Genomes </span></a>
	<br />
	<p style="margin-top:5px"></p>
	<span style="font-size: 14px;">Cantu D, Segovia V, MacLean D et al (2013). Genome analyses of the wheat yellow (stripe) rust pathogen <span style="font-style:italic">Puccinia striiformis </span> f. sp. <span style="font-style:italic">tritici</span> ........</span> 
	</div>
	<div style="width:28%; height:100px; float:left; margin-left:20px; padding:10px">
	<a href="generalplant.htm#q3"><span class="pageheading" >Reviews on Pathogenicity</span></a>
	<br />
	<p style="margin-top:5px"></p>
	<span style="font-size: 14px;">
	Ma LJ, Geiser DM, Proctor RH et al (2013). Fusarium pathogenomics Annu Rev Microbiol. doi: <a href="http://dx.doi.org/10.1146/annurev-micro-092412-155650" target="_blank">10.1146/annurev-micro-092412-155650</a>
	</span> 
	</div>
	</div>
	
</div>

<p style="width:250px" class="pageheading" id="ondexscreenshot">GENE ONTOLOGY </p>
<hr style="color:#e4e3e3;">
<p style="font-size:14px">
<strong>Torto-Alalibo, T., Collmer, C. W. and Gwinn-Giglio, M., 2009. The Plant-Associated Microbe Gene Ontology (PAMGO) Consortium:   community development of new Gene Ontology terms describing biological processes involved in microbe-host interactions. <em>BMC Microbiology</em> 9 (Suppl I): SI. Review. <br />
PubMed:<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&amp;db=pubmed&amp;dopt=Abstract&amp;list_uids=19278549">19278549</a> </strong><br />
<br />
<strong> Gene-Ontology-Consortium., 2006. The Gene Ontology (GO) project in 2006. <em>Nucl. Acids Res.</em> 34:D322-D326. <br />
PubMed:<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&amp;db=pubmed&amp;dopt=Abstract&amp;list_uids=16381878">16381878</a> </strong><br />
<br />
<strong> PAMGO - Plant-Associated Microbe Gene Ontology (2005)<br />
A   collaborative effort has establishment of 585 terms in the GO Biological   Process ontology. Four hundred and seventy two (472) of these terms,   have  recently incorporated into the Biological Process ontology   describe more specific processes involved in the interaction between   microbes and their hosts. </strong><br />
<br />
<strong id="ondexscreenshot2">  Featured below are some high order terms developed by PAMGO, which can   be accessed from the Gene Ontology browser (AMIGO:   http://www.godatabase.org). </strong>
</p>
<br />
<img src="images/pamgo.gif" width="784" height="635"  />

<a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
	</p>
	<a style="float:right" href="#"><img width="29" height="41" src="images/top.jpeg"></a>
