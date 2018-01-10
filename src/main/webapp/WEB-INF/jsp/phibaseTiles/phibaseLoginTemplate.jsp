<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PHI-base :: Pathogen Host Interactions</title>
 <!--[if lt IE 9]>
      <script src="js/html5shiv.js" type="text/javascript"></script>
      <script src="js/respond.min.js" type="text/javascript"></script>
      <![endif]-->
      <!-- The fav icon -->
<style>

body {
text-align:center;
margin:0px auto;
}

#page{
	/* The main container div */
	width:715px;
	margin:0px auto 40px auto;
}



#searchForm{
	/* The search form. */
	background:url(images/head_back1.jpg) repeat-x;
	padding:50px 50px 30px;
	-moz-border-radius:16px;
	-webkit-border-radius:16px;
	border-radius:16px;
}

fieldset{
	border:none;
}

#searchInputContainer{
	/* This div contains the transparent search box */
	width:420px;
	height:36px;
	background:url("img/searchBox.png") no-repeat;
	float:left;
	margin-right:12px;
}

#s{
	/* The search text box. */

	border:none;
	color:#888888;
	background:url("img/searchBox.png") no-repeat;
	float:left;
	font-size:15px;
	height:36px;
	line-height:36px;
	margin-right:0px;
	outline:medium none;
	padding:0 0 0 35px;
	text-shadow:1px 1px 0 white;
	width:485px;
}

/* The UL that contains the search type icons */

.icons{
	list-style:none;
	margin:10px 0 0 395px;
	height:19px;
	position:relative;
}

.icons li{
	color:#fff;
	float:left;
	height:19px;
	cursor:pointer;
	margin-right:5px;
}

/* Styling each icon */

li.web{ width:125px; font-size:13px; text-decoration:underline; font-style:italic}
li.web.active,
li.web:hover{ background-position:left bottom;}

li.images{ width:22px; background-position:-18px 0;}
li.images.active,
li.images:hover{ background-position:-18px bottom;}

li.news{ width:14px; background-position:-44px 0;}
li.news.active,
li.news:hover{ background-position:-44px bottom;}

li.videos{ width:17px; background-position:right 0;}
li.videos.active,
li.videos:hover{ background-position:right bottom;}

span.arrow{
	/* The little arrow that moves below the icons */

	width:11px;
	height:6px;
	margin:21px 0 0 5px;
	position:absolute;
	background:url('img/arrow.png') no-repeat;
	left:0;
}


/* The submit button */


#submitButton{
	background:url('img/buttons.png') no-repeat;
	width:83px;
	height:36px;
	text-indent:-9999px;
	overflow:hidden;
	text-transform:uppercase;
	border:none;
	cursor:pointer;
}

#submitButton:hover{
	background-position:left bottom;
}


/* The Search tutorialzine.com / Search the Web radio buttons */


#searchInContainer{
	float:left;
	margin-top:12px;
	width:330px;
}

label{
	color:#DDDDDD;
	cursor:pointer;
	font-size:11px;
	position:relative;
	right:-2px;
	top:-2px;
	margin-right:10px;
	white-space:nowrap;
	/*float:left;*/
}

input[type=radio]{
	cursor:pointer;
	/*float:left;*/
}


/* Styling the search results */


.pageContainer{
	/* Holds each page with search results. Has an inset bottom border. */
	border-bottom:1px solid #5e7481;
	margin-bottom:50px;

	/* Adding a dark bottom border with box shadow */

	-moz-box-shadow:0 1px 0 #798e9c;
	-webkit-box-shadow:0 1px 0 #798e9c;
	box-shadow:0 1px 0 #798e9c;
}


p.notFound{
	text-align:center;
	padding:0 0 40px;
}


/* Web & news results */


.webResult{ text-shadow:1px 1px 0 #586a75;margin-bottom:50px;}
.webResult h2{
	background-color:#5D6F7B;
	font-size:18px;
	font-weight:normal;
	padding:8px 20px;

	/* Applying CSS3 rounded corners */
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
}
.webResult h2 b{ color:#fff; }
.webResult h2 a{ color:#eee;border:none;}
.webResult p{ line-height:1.5;padding:15px 20px;}
.webResult p b{ color:white;}
.webResult > a{ margin-left:20px;}


/* Image & video search results */


.imageResult{
	float:left;
	height:180px;
	margin:0 0 20px 40px;
	text-align:center;
	width:152px;
	overflow:hidden;
}
.imageResult img{ display:block;border:none;}
.imageResult a.pic{
	border:1px solid #fff;
	outline:1px solid #777;
	display:block;
	margin:0 auto 15px;
}

/* The show more button */

#more{
	width:83px;
	height:24px;
	background:url('img/more.png') no-repeat;
	cursor:pointer;
	margin:40px auto;
}

#more:hover{
	background-position:left bottom;
}



/* Giving Credit */

p.credit{
	margin:20px 0;
	text-align:center;
}

p.credit a{
	background-color:#4B5A64;
	border:1px solid;/searchFacet.htm?queryTerm=
	border-color:#3D4D57 #788E9B #788E9B #3D4D57;
	color:#c0d0d8;
	font-size:10px;
	padding:4px 8px;
	text-shadow:1px 1px 0 #38464F;
}

p.credit a:hover{
	background-color:#38464f;
	border-color:#38464f #788E9B #788E9B #38464f;
}

a, a:visited {
	text-decoration:none;
	outline:none;
	border-bottom:1px dotted #97cae6;
	color:#2466a3;
}

a:hover{
	border-bottom:1px dashed transparent;
}

.clear{
	clear:both;
}

<!-- query scroll CSS -->

.clear {
    clear:both;
    display:block;
    overflow:hidden;
    visibility:hidden;
    line-height:0;
    width:0;
    height:0
}

.wrapper {
    width:900px;
    margin:0 auto 20px auto;
}

.jScroll {
    width:920px;
    z-index:1
}

.jScroll-item {
    float:left;
    width:197px;
    height:260px;
    position:relative;
    padding:0 15px;
}

.jScroll-item img {
    width:200px;
    margin:0 auto
}

.jScroll-item p {
    text-align:justify;
    font-family:Verdana,Arial,sans-serif;
    font-size:12px;
    color:#484848;
    line-height:20px;
	margin:0;
    padding:0
}

<!-- end query scroll CSS -->
</style>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" ></link>

<!-- start nav -->

<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>

</head>
<body style="min-width:950px; max-width:100%">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; margin:0 auto" bgcolor="#f3f1f1" >
	<tbody>
	<tr>
      <td  colspan="0"  bgcolor="#f3f1f1"><tiles:insertAttribute name="header" /></td>
    </tr>

    <td height="27" colspan="0" align="center" valign="top" style="background:#ffffff; text-align:center" >

     <tiles:insertAttribute name="body"/>

    </td>
    </tr>
    <tr>
        <td height="27" colspan="2">

         <tiles:insertAttribute name="footer" />

      </td>
    </tr>

</tbody>
</table>

<script type="text/javascript">
   var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
   document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>

<script type="text/javascript">
   try {
     var pageTracker = _gat._getTracker("UA-12077899-5");
     pageTracker._trackPageview();
   } catch(err) {}
</script>
</body>
</html>
