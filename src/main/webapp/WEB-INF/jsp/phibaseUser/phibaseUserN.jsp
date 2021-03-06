<!DOCTYPE html>
<html >
<head>

	<link rel="stylesheet" href="js/dijit/themes/claro/claro.css">
	
	<script>dojoConfig = {parseOnLoad: true}</script>
	<script src='js/dojo/dojo.js'></script>
	
	<script>
require(["dijit/layout/TabContainer", "dijit/layout/ContentPane", "dojo/domReady!"], function(TabContainer, ContentPane){
    var tc = new TabContainer({
        style: "height: 100%; width: 100%;"
    }, "tc1-prog");

    var cp1 = new ContentPane({
         title: "Food",
         content: "We offer amazing food"
    });
    tc.addChild(cp1);

    var cp2 = new ContentPane({
         title: "Drinks",
         content: "We are known for our drinks."
    });
    tc.addChild(cp2);

    tc.startup();
});
	</script>
</head>
<body class="claro">
    <div style="width: 350px; height: 290px">
    <div id="tc1-prog"></div>
</div>
</body>
</html>