<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link rel="shortcut icon" href="images/favicon.ico" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
 <!--[if lt IE 9]>
      <script src="js/html5shiv.js" type="text/javascript"></script>
      <script src="js/respond.min.js" type="text/javascript"></script>
      <![endif]-->
      <!-- The fav icon -->
<!-- start nav -->

<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.js" type="text/javascript"></script>

<style type="text/css">
body {

margin:0px auto;
}

.CSSTableGenerator {
	margin:0px;padding:0px;
	width:99%;
	-moz-border-radius-bottomleft:12px;
	-webkit-border-bottom-left-radius:12px;
	border-bottom-left-radius:12px;
	-moz-border-radius-bottomright:12px;
	-webkit-border-bottom-right-radius:12px;
	border-bottom-right-radius:12px;
	-moz-border-radius-topright:12px;
	-webkit-border-top-right-radius:12px;
	border-top-right-radius:12px;
	-moz-border-radius-topleft:12px;
	-webkit-border-top-left-radius:12px;
	border-top-left-radius:12px;


}
.CSSTableGenerator table{
	width:100%;
	height:100%;
	margin:0px;padding:0px;
	}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:12px;
	-webkit-border-bottom-right-radius:12px;
	border-bottom-right-radius:12px;

}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:12px;
	-webkit-border-top-left-radius:12px;
	border-top-left-radius:12px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:12px;
	-webkit-border-top-right-radius:12px;
	border-top-right-radius:12px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:12px;
	-webkit-border-bottom-left-radius:12px;
	border-bottom-left-radius:12px;
}.CSSTableGenerator tr:hover td{
	background-color:;
}
.CSSTableGenerator td{
	vertical-align:middle;
	background-color:#efedee;


	text-align:left;
	padding:7px;
	font-size:12px;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
	background:-o-linear-gradient(bottom, #aad4f3 5%, #53a4de 100%);
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #aad4f3), color-stop(1, #53a4de) );
	background:-moz-linear-gradient( center top, #aad4f3 5%, #53a4de 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#aad4f3", endColorstr="#53a4de");
	background: -o-linear-gradient(top,#efedee,efedee);
	background-color:#efedee;
	border:0px solid #efedee;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:1em;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff7f00 5%, #bf5f00 100%);
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf5f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #bf5f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf5f00");
	background: -o-linear-gradient(top,#ff7f00,bf5f00);
	background-color:#ff7f00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

<!-- tab--->

#tabs_container {
	border-bottom: 1px solid #ccc;
}
#tabs {
	list-style: none;
	padding: 5px 0 4px 0;
	margin: 0px;
	font: 0.75em arial;
}
#tabs li {
	display: inline;
}
#tabs li a {
	border: 1px solid #ccc;
	padding: 4px 6px;
	text-decoration: none;
	background-color: #eeeeee;
	border-bottom: none;

}
#tabs li a:hover {
	background-color: #dddddd;
	padding: 4px 6px;
}
#tabs li.active a {
	border-bottom: 1px solid #fff;
	background-color: #fff;
	padding: 4px 6px 5px 6px;
	border-bottom: none;
}
#tabs li.active a:hover {
	background-color: #eeeeee;
	padding: 4px 6px 5px 6px;
	border-bottom: none;
}

#tabs li a.icon_accept {

	background-repeat: no-repeat;

}
#tabs li a.icon_accept:hover {
	padding-left: 24px;
}

#tabs_content_container {

	border-top: none;
	padding: 10px;
	width: 400px;
}
.tab_content {
	display: none;
}

 #gallery {
    width: 600px;
    overflow: hidden;
    position: relative;
    z-index: 1;
    margin: 100px auto;
    border: 2px solid #003C72;
  }
  #navigation {
    list-style: none;
    padding: 0;
    margin: 0;
    float: left;
  }
  #navigation li {
    padding: 0;
    margin: 0;
    float: left;
    clear: both;
  }
  #navigation li a img {
    display: block;
    border: none;
  }
  #navigation li a {
    display: block;
  }
  #full-picture {
    width: 500px;
    height: 375px;
    overflow: hidden;
    float: left;
  }

  <!-- tab css -->
  #tabs_container {
	border-bottom: 1px solid #ccc;
}
#tabs {
	list-style: none;
	padding: 5px 0 4px 0;
	margin: 0 0 0 10px;
	font-size: 0.75em;
}
#tabs li {
	display: inline;
}
#tabs li a {
	border: 1px solid #ccc;
	padding: 4px 6px;
	text-decoration: none;
	background-color: #eeeeee;
	border-bottom: none;
	outline: none;
	border-radius: 5px 5px 0 0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-top-left-radius: 5px;
	-webkit-border-top-right-radius: 5px;
}
#tabs li a:hover {
	background-color: #dddddd;
	padding: 4px 6px;
}
#tabs li.active a {

	background-color: #fff;
	padding: 4px 6px 5px 6px;

	font-size:1.5em;
	font-weight:bold;

}
#tabs li.active a:hover {
	background-color: #eeeeee;
	padding: 4px 6px 5px 6px;
	border-bottom: none;
}

#tabs li a.icon_accept {
	background-image: url(accept.png);
	background-position: 5px;
	background-repeat: no-repeat;
	padding-left: 24px;
}
#tabs li a.icon_accept:hover {
	padding-left: 24px;
}

#tabs_content_container {

	padding: 10px;
	width: 400px;
	background:#ffffff;
}
.tab_content {
	display: none;
}
</style>


	<script>
		$(document).ready(function() {
		  $('.nav-toggle').click(function(){
			//get collapse content selector
			var collapse_content_selector = $(this).attr('href');

			//make the collapse content to be shown or hide
			var toggle_switch = $(this);
			$(collapse_content_selector).toggle(function(){
			  if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
				toggle_switch.html('Show');
			  }else{
                                //change the button label to be 'Hide'
				toggle_switch.html('Hide');
			  }
			});
		  });

		});


		/* <![CDATA[ */

/* ]]> */


function hideDivs(){

}

// Back To Top
$(document).ready(function(){
  $('.top').click(function() {
     $(document).scrollTo(0,500);
  });
});
		</script>
</head>
<body style="min-width:950px; max-width:100%">

<div class="wrap" style="width:100%">
	<div class="wrapper" style="width:100%">
		<table border="1" style="border-collapse: collapse; background: #ffffff; margin: 0 auto;" cellpadding="2" cellspacing="2" align="left" width="100%" height="100%"  class="jtable ui-widget-content">
			<tbody>
			<tr>
		        <td colspan="2"><tiles:insertAttribute name="header" /></td>
		    </tr>
		    <tr>

		        <td valign="top" style="vertical-align: top">

		         <tiles:insertAttribute name="body" />

		        </td>
		    </tr>
		    <tr>
		        <td  colspan="2">

		         <tiles:insertAttribute name="footer" />

		        </td>
		    </tr>
		</tbody>
		</table>
	</div>
</div>

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
