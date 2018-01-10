var suggestions = new Array("");
	
	var outpGene;
	var outpDisease;
	var outpHost;
	var outpPathogen;
	var outpAntiInfective;
	var outpMutant;
	var outpExperimental;
	var outpHostTarget;
	
	var suggestField;
	var outp;
	var textBoxId;
	var oldins;
	var posi = -1;
	var words = new Array();
	var input;
	var key;

	function setVisible(visi,textBoxId){
		var x = document.getElementById("shadow_"+textBoxId);
		var t = document.getElementsByName(textBoxId)[0];
		x.style.position = 'absolute';
		
		x.style.visibility = visi;
	}

	function init(){
		
		outpGene = document.getElementById("output_GN_NAME");
		outpDisease = document.getElementById("output_DISEASE_NAME");
		outpHost = document.getElementById("output_HOST_SPECIES");
		outpPathogen = document.getElementById("output_PATHOGEN_SPECIES");
		outpAntiInfective = document.getElementById("output_Anti_infective_agent");
		outpMutant = document.getElementById("output_MUTANT_PHENOTYPE");
		outpExperimental = document.getElementById("output_EXPERIMENTAL_TECHNIQUE");
		outpHostTarget = document.getElementById("output_Host_target");
		
		setVisible("hidden","GN_NAME");
		setVisible("hidden","DISEASE_NAME");
		setVisible("hidden","HOST_SPECIES");
		setVisible("hidden","PATHOGEN_SPECIES");
		setVisible("hidden","Anti_infective_agent");
		setVisible("hidden","MUTANT_PHENOTYPE");
		setVisible("hidden","EXPERIMENTAL_TECHNIQUE");
		setVisible("hidden","Host_target");
		
		document.onkeydown = keygetter; //needed for Opera...
		document.onkeyup = keyHandler;
	}

	function findPosX(obj)
	{
		var curleft = 0;
		if (obj.offsetParent){
			while (obj.offsetParent){
				curleft += obj.offsetLeft;
				obj = obj.offsetParent;
			}
		}
		else if (obj.x)
			curleft += obj.x;
		return curleft;
	}

	function findPosY(obj)
	{
		var curtop = 0;
		if (obj.offsetParent){
			curtop += obj.offsetHeight;
			while (obj.offsetParent){
				curtop += obj.offsetTop;
				obj = obj.offsetParent;
			}
		}
		else if (obj.y){
			curtop += obj.y;
			curtop += obj.height;
		}
		return curtop;
	}

	function lookAt(textBox){
		textBoxId=textBox;
		switch(textBoxId){
			case 'GN_NAME':outp=outpGene;
							suggestField="geneSuggest";
							break;
			case 'DISEASE_NAME':outp=outpDisease;
								suggestField="diseaseSuggest";
								break;
			case 'HOST_SPECIES':outp=outpHost;
								suggestField="hostSuggest";
								break;
			case 'PATHOGEN_SPECIES':outp=outpPathogen;
									suggestField="pathogenSuggest";
									break;
			case 'Anti_infective_agent':outp=outpAntiInfective;
										suggestField="antiInfectiveSuggest";
										break;
			case 'MUTANT_PHENOTYPE':outp=outpMutant;
									suggestField="phenotypeSuggest";
									break;
			case 'EXPERIMENTAL_TECHNIQUE':outp=outpExperimental;
									suggestField="experimentalSuggest";
										break;
			case 'Host_target':outp=outpHostTarget;
			suggestField="hostTargetSuggest";
				break;
		}
		
		var ins = document.getElementsByName(textBoxId)[0].value;
		
		if (oldins == ins) return;
		else if (posi > -1);
		else if (ins.length > 0){
			words = autosuggest(ins);
			
		}
		else{
			setVisible("hidden",textBoxId);
			posi = -1;
		}
		oldins = ins;
	}

	function addWord(word){
		
		var sp = document.createElement("div");
		sp.appendChild(document.createTextNode(word));
		sp.onmouseover = mouseHandler;
		sp.onmouseout = mouseHandlerOut;
		sp.onclick = mouseClick;
		sp.onkeyup = keyHandler;
		outp.appendChild(sp);
	}

	function clearOutput(){
		
		while (outp.hasChildNodes()){
			noten=outp.firstChild;
			outp.removeChild(noten);
		}
		posi = -1;
	}

	function autosuggest(beginning){

		var url="autoSuggestAdvance.htm?query="+beginning+"&suggestField="+suggestField;
		
		dojo.xhrGet({
			// The URL of the request
		    url: url,
		    // The success callback with result from server
		    load: function(newContent) {
		    	if(newContent == '{}'){
					clearOutput(outp);
					setVisible("hidden",textBoxId);
					posi = -1;
				}else{
					var obj=JSON.parse(newContent)
			    	 words=new Array();
			    	words=obj.suggestion

					if (words.length > 0){
						clearOutput(outp);
						for (var i=0;i<words.length; ++i) {
							addWord (words[i]);
						}
						
						setVisible("visible",textBoxId);
						
						input = document.getElementsByName(textBoxId)[0].value;
						
					}
				}

		    },
		    // The error handler
		    error: function() {

		    }
		});
	}
	/*function getWord(beginning){





		for (var i=0;i<suggestions.length; ++i){
			var j = -1;
			var correct = 1;
			while (correct == 1 && ++j < beginning.length){
				if (suggestions[i].charAt(j) != beginning.charAt(j)) correct = 0;
			}
			if (correct == 1) words[words.length] = suggestions[i];
		}

		return autosuggest(beginning);
	}*/

	function setColor (_posi, _color, _forg){
		console.log(outp.childNodes);
		outp.childNodes[_posi].style.background = _color;
		outp.childNodes[_posi].style.color = _forg;
	}

	function keygetter(event){
		if (!event && window.event) event = window.event;
		if (event) key = event.keyCode;
		else key = event.which;
	}

	function keyHandler(event){
		
		if (document.getElementById("shadow_"+textBoxId).style.visibility == "visible"){
		var textfield = document.getElementsByName(textBoxId)[0];
		if (key == 40){ //Key down
			//alert (words);
			if (words.length > 0 && posi < words.length-1){
				if (posi >=0) setColor(posi, "#fff", "black");
				else input = textfield.value;
				setColor(++posi, "#59a6da", "white");
				textfield.value = outp.childNodes[posi].firstChild.nodeValue;
			}
		}
		else if (key == 38){ //Key up
			if (words.length > 0 && posi >= 0){
				if (posi >=1){
					setColor(posi, "#fff", "black");
					setColor(--posi, "#59a6da", "white");
					textfield.value = outp.childNodes[posi].firstChild.nodeValue;
				}
				else{
					setColor(posi, "#fff", "black");
					textfield.value = input;
					textfield.focus();
					posi--;
				}
			}
		}
		else if (key == 27){ // Esc
			textfield.value = input;
			setVisible("hidden",textBoxId);
			posi = -1;
			oldins = input;
		}
		else if (key == 8){ // Backspace
			posi = -1;
			oldins=-1;
		}else if(key == 13){
			textfield.value = outp.childNodes[posi].firstChild.nodeValue;
			setVisible("hidden",textBoxId);
			oldins =outp.childNodes[posi].firstChild.nodeValue;
			posi = -1;
		}
		}
	}

	var mouseHandler=function(){
		
		for (var i=0;i<words.length;++i){
			console.log(words[i])
			setColor (i, "white", "black");
		}
		

		this.style.background = "#59a6da";
		this.style.color= "white";
	}

	var mouseHandlerOut=function(){
		this.style.background = "white";
		this.style.color= "black";
	}

	var mouseClick=function(){
		
		document.getElementsByName(textBoxId)[0].value = this.firstChild.nodeValue;
		setVisible("hidden",textBoxId);
		posi = -1;
		oldins = this.firstChild.nodeValue;
	}
	var hideSuggest=function(event){
		setVisible("hidden",event);
	}
	