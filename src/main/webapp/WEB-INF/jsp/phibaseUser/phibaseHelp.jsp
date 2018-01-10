<div  style="background: #f3f1f2; height:65px; ">
<!--<img src="images/bar.jpg" width="509" height="85" border="0" usemap="#Map" style="float:right; position:relative; margin-top:-1px" />
<map name="Map" id="Map">
  <area shape="rect" coords="395,18,419,40" href="login.htm" /><area shape="rect" coords="431,18,452,41" href="#" />
  <area shape="rect" coords="470,17,487,41" href="#" /></map> -->   
	    <div class="innerpageheadings">
	    Help
		</div>
	    <br />
	   <div class="clear"></div>
	   
	</div>
	<div style="width:100%; height:200px; background: #fbf9fa; padding:10px 0px">
		  <div class="content" style="margin:0 auto">
			<div style="width:80%; padding:5px 10px 10px 10px; margin:0 auto ">
				<span class="pageheading">This help section contains the following information:</span>
				<br><br>
				<a style="text-decoration:none" href="#syntax"><span style="font-size:14px; color:#0877D0">Search syntax</span></a><br><br>
				<a style="text-decoration:none" href="#structure"><span style="font-size:14px; color:#0877D0">The structure of PHI-base</span></a><br><br>
				<a style="text-decoration:none" href="#fields"><span style="font-size:14px; color:#0877D0">PHI-base fields</span></a><br><br>
				<a style="text-decoration:none" href="#curation"><span style="font-size:14px; color:#0877D0">Curation guideline</span></a>
				<br>
			</div>
		</div>
		</div>
<div style="width:80%; height:auto;  margin:10px auto 0 auto; font-size: 13px; text-align: justify;">


        <!-- CHANGED BY ALISTAIR 2014-09-04 -->
		For general information, questions concerning the content of PHI-base and technical support please contact
Email Address <a href="mailto:rothamsted.phibase@rothamsted.ac.uk">rothamsted.phibase@rothamsted.ac.uk</a>
<br /><br />
        <b class="info">If you do not find the information you are looking for on this page please email your questions to: 
       
       <a href="mailto:contact@phi-base.org">contact@phi-base.org</a>
        <br>
        <br>
        <b class="info">Alternatively, you can subscribe to our mailing list and submit your question to the user community: 
           <a href="https://www.lists.rothamsted.ac.uk/mailman/listinfo/users" target="_blank" >PHI-base Users Mailing List</a>
        <br><br>
        To subscribe, follow the instructions in the "Subscribing to PHI-base Users" section.       
        <br>        
        </b>
	<br>
        <!-- END CHANGE -->
      </b>

       <span id="description" class="pageheading"><a name="syntax">PHI-base Search Rules and Syntax:</a></span>

      <br /> <br /> 
          <span class="pageheading">QUICK SEARCH:</span>
		  <br />  <br /> 
       <span class="pageheading">
          Boolean Syntax:</span>
		  <br /> 
          Add more than one term and they will be implicitly processed with AND Boolean connectors in between.<br>
          For example, 'tomato fusarium' will return all entries which contain both terms.<br>
        <br />
         <span class="pageheading">Truncation:</span>
        <br />
          To truncate a term, use an asterisk (*) at the end of a search term.<br> 
          For example, 'fusar*' will retrieve all entries concerning <i>Fusarium</i> culmorum, <i>Fusarium</i> graminearum, <i>Fusarium</i> oxysporum and <i>Fusarium</i> sporotrichioides.

	  <br /><br /> 
      <span class="pageheading"> <a name="structure">The structure of PHI-base as an ER diagram:</a></span>

	  <br /><br /> 
       <img width="750" height="430" border="1" alt="ER Diagramm" src="images/phi-base_ER_visio2e.gif">
	 
	   <br />

	  <br /><br />
	    <a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
      <span class="pageheading">  <a name="fields">PHI-base contains the following fields:</a></span>
	   	  <br /> <br />

	  <table class="help-cotent-field" width="100%" cellspacing="0" cellpadding="5" border="0" align="left" >
	 <tbody>
	 <tr bgcolor="#53A4DE" style="color:#ffffff">
 	 <td width="200">

 Column name
  </td>
  <td>

Description
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">PHI-base
  accession</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Stable
  accession number for each database entry to aid curation</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Obsolete accession</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">PHI-base record was replaced with new version  or deleted because of duplication</p>
  </td>
 </tr>
<tr valign="top" bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">EMBL
  accession</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Link-out
  to EMBL Nucleotide Sequence Database</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Locus ID</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Obtained from genomic sequence</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Gene
  name</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Name
  of the fungal gene that was disrupted in the published study</p>
  </td>
 </tr>
  <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">  Genome location
</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Chromosome number where gene is located or name of pathogenicity island
</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Amino
  acid sequence</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Amino
  acid sequence of the gene product</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Nucleotide
  sequence</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Nucleotide
  sequence of the gene </p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Multiple mutation
</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> PHI-base accessions of other genes in case multiple gene mutations were tested in one strain
</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Pathogen
  NCBI Taxonomy ID</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> NCBI
  taxonomy ID of the pathogenic species</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Pathogen
  species</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Systematic
  name of the pathogenic species</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Strain</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Strain, in which gene function was tested
</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Disease
  name</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Name
  of the disease caused by the pathogen host interaction</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Monocot
  / Dicot plant</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Number
  of cotyledons, if the host is a plant</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Host
  NCBI Taxonomy ID</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> NCBI
  taxonomy ID of the host organism</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Experimental
  host</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Common
  name of the host organism</p>
  </td>
  </tr>
  <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">GO annotation</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Gene ontology annotation that describes gene products in terms of their associated biological processes, cellular components and molecular functions in a species-independent manner  (<a href="http://www.geneontology.org" target="_blank">http://www.geneontology.org</a>).</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Pathway</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Name
  of the pathway the disrupted gene is involved in</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Phenotype of mutant
 
 

 
 </p>
  </td>
  <td class="result">
 <p class="pageheading">Definition of phenotypes:</p>

 <ul>
<li class="info"> <strong>Loss of pathogenicity</strong> - the transgenic strain fails to cause disease
</li>
<li class="info"> <b>Reduced virulence</b> - the transgenic strain still causes some disease formation but this is less than the wild-type strain (ie. a quantitative effect). Synonymous with the term reduced aggressiveness.
</li>
<li class="info"> <b>Unaffected pathogenicity</b> - the transgenic strain which expresses no or reduced levels of a specific gene product(s) has wild-type disease causing ability
</li>
<li class="info"> <b>Increased virulence (Hypervirulence)</b> - the transgenic strain causes higher levels of disease than the wild-type strain
</li>
<li class="info"> <b>Effector (plant avirulence determinant)</b> - currently a plant pathogen specific term which was previously known as an avirulence gene. An effector gene is required for the direct or indirect recognition of a pathogen only in resistant host genotypes which possess the corresponding disease resistance gene. Positive recognition leads to activation of plant defences and the pathogen fails to cause disease. Note some effector genes are required to cause disease on susceptible hosts but most are not.
</li>
<li class="info"> <b>Lethal</b> - the transgenic strain which expresses no or reduced levels of a specific gene product(s) is not viable. The gene product is essential for life.
</li>
<li class="info"> <b>Enhanced antagonism</b> - the transgenetic strain of a endophyte which shows no asymptomatic colonisation, but is gaining the upperhand of the pathogen-host-interaction.
</li>
<li class="info"> <b>Wild-type mutualism</b> - the transgenetic strain of a endophyte which shows no difference in the pathogen-host-interaction comparing to the wild-type
</li>
<!--</p>-->
</ul>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Mating
  defect</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Yes/No
  If the gene disruption causes a mating defect affecting pathogenicity</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Pre-penetration
  defect</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Yes/No
  If the gene disruption causes a block in the disease process before
  penetration e.g. Formation of appressoria</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Penetration
  defect</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Yes/No
  If the gene disruption causes a block in the disease process at penetration</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p >Post-penetration defect</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Yes/No
  If the gene disruption causes a block in the disease process after
  penetration</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Vegetative
  spores</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Defects
  in asexual sporulation caused by the gene disruption e.g reduced sporulation</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Sexual
  spores</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Defects
  in sexual sporulation caused by the gene disruption e.g reduced sporulation</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">In
  vitro growth</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Growth
  defects in culture caused by the gene disruption e.g. reduced growth</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Spore
  germination</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Defects
  in spore germination caused by the gene disruption</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Essential
  gene </p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Lethal
  effect from gene disruption</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Inducer</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> For
  cases where a particular compound is needed to induce gene expression e.g.
  Pectin</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Host
  response</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Details
  any difference in the host defence response to a pathogen with a disrupted gene</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Experimental
  evidence</p>
 
  
  </td>
  <td class="result">
  
   <ul>
  <li class="info"> 
  Gene disruption
 </li>
<li class="info"> 
Gene disruption; gene mutation
</li>
<li class="info"> 
Gene disruption; gene mutation; characterised
</li>
<li class="info"> 
Gene disruption; gene deletion; complementation
</li>
<li class="info"> 
Gene disruption; gene deletion
</li>
<li class="info"> 
Gene disruption; complementation
</li>
<li class="info"> 
Gene disruption; complementation; other evidence
</li>
<li class="info"> 
Gene disruption; altered gene expression / gene regulation: overexpression
</li>
<li class="info"> 
Gene disruption; altered gene expression / gene regulation: overexpression; complementation
</li>
<li class="info"> 
Gene deletion
</li>
<li class="info"> 
Gene deletion; altered gene expression / gene regulation: overexpression
</li>
<li class="info"> 
Gene deletion; complementation
</li>
<li class="info"> 
Gene deletion; complementation; biochemical evidence
</li>
<li class="info"> 
Cluster gene deletion
</li>
<li class="info"> 
Altered gene expression / gene regulation
</li>
<li class="info"> 
Altered gene expression / gene regulation: downregulation
</li>
<li class="info"> 
Altered gene expression / gene regulation: overexpression
</li>
<li class="info"> 
Altered gene expression / gene regulation: silencing
</li>
<li class="info"> 
Altered gene expression / gene regulation: down- and upregulation
</li>
<li class="info"> 
Altered gene expression / gene regulation; complementation
</li>
<li class="info"> 
Biochemical analysis
</li>
<li class="info"> 
Biochemical analysis; mutation: characterised
</li>
<li class="info"> 
Biochemical analysis; mutation: characterised; complementation
</li>
<li class="info"> 
Functional test in host
</li>
<li class="info"> 
Functional test in host: direct injection
</li>
<li class="info"> 
Functional test in host: transient expression
</li>
<li class="info"> 
Mutation
</li>
<li class="info"> 
Mutation: characterised
</li>
<li class="info"> 
Mutation: characterised; complementation
</li>
<li class="info"> 
Complementation
</li>
<li class="info"> 
Sequence analysis of sensitive and resistant strains
</li>
<li class="info"> 
Sexual cross, sequencing of resistance conferring allele
</li>
<li class="info"> 
Other evidence
</li>
</ul>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Species Expert</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Research scientist outside Rothamsted with excellent knowledge on specific pathogen species, who contributes  to databaseby suggesting new entries and by revising existing entries
</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Entered
  by</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Name
  of the curator who entered the interaction to the database</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Reference</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Related literature to the database entry, linked to PubMed or via DOI to the full publication where possible; Fulltext reference is given, if the article is not available online.</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Comments</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Field
  provided for any further free text information</p>

  </td>
 </tr>
 
 
 
  <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">CAS</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> CAS Registry Number (often referred to as a CAS Number)
</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Anti-infective (Chemical)</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Chemical name</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Compound</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Accepted (or proposed) common name for an individual active ingredient expected to appear on the product label as definition of the product.</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Target site</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Target Site of Action: The biochemical mode of action is given.</p>

  </td>
 </tr>
 
  <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Group name</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> The Group names listed are widely accepted in literature. They are based on different sources (mode of action, first important representative, chemical group).</p>
  </td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Chemical group</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Sub-grouping due to chemical considerations.

</p>
  </td>
 </tr>
 <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  Mode in planta

  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Describes how chemical protects plant against pathogen attack, i. e.systemic - taken up by the plant's leaves or roots and spread throughout the plant's system.</p></td>
 </tr>
 <tr bgcolor="#f6f6f6">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">FRAC CODE
</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Numbers and letters are used to distinguish the anti-infective according to their cross resistance behaviour (see www.frac.info).</p>

  </td>
 </tr>
  <tr valign="top" bgcolor="#eaeaea">
  <td class="result">
  <p style="text-align:justify" class="MsoNormal">Comments
</p>
  </td>
  <td class="result">
  <p style="text-align:justify" class="MsoNormal"> Field provided for any further free text information for anti-infective information

</p></td>
 </tr>
 
 
 
</tbody>
</table>
       <a href="#" style="float:right"><img src="images/top.jpeg" width="29" height="41" /></a>
	  <br />  
	  <p></p>
       <span class="pageheading" ><a name="curation" style="text-decoration:none">Curation guidelines:</a></span>
	   <!--<br />-->
    
        <!-- The curation guideline for this database (MS Word document) can be accessed <a href="images/PHI-base_Curators_Guideline3_0.doc">here</a>.-->    
        <a href="images/PhibaseCuratorGuidelines_2015-10-07.pdf">Click here to download the full curation guidelines for PHI-base</a>    
     <br /> <br />
</div>
