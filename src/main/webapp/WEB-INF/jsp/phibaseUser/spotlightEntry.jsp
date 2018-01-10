<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="js/jquery.min.js"></script>
<script src="js/phibase.js"></script>
  
<style>
#form-main {
	width: 100%;
}

#form-div {
	width: 650px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	margin: 0 auto;
}

.feedback-input {
	color: #3c3c3c;
	font-weight: 500;
	font-size: 15px;
	border-radius: 5;
	line-height: 22px;
	background-color: #f3f3f3;
	padding: 5px 13px 6px 4px;
	margin-bottom: 10px;
	width: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	border: 1px solid #ccc;
}

.feedback-input:focus {
	background: #fff;
	box-shadow: 0;
	border: 1px solid #3498db;
	color: #3498db;
	outline: none;
	padding: 5px 13px 6px 4px;
}

.focused {
	color: #30aed6;
	border: #30aed6 solid 1px;
}

textarea {
	width: 100%;
	height: 150px;
	line-height: 150%;
	resize: vertical;
}

input:hover, textarea:hover, input:focus, textarea:focus {
	background-color: white;
}

#button-blue {
	float: left;
	width: 100%;
	border: #fbfbfb solid 4px;
	cursor: pointer;
	background-color: #3498db;
	color: white;
	font-size: 16px;
	padding-top: 10px;
	padding-bottom: 10px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
	font-weight: 700;
	ma
}

#button-blue:hover {
	background-color: #3498db;
	color: #000000;
}

.submit:hover {
	color: #3498db;
}
</style>
<div style="background: #f3f1f2; height: 65px;">

	<div class="innerpageheadings">Please enter spotlight details</div>
	<br />
	<div class="clear"><a href="spotLightlogout.htm">Logout</a></div>
</div>


<div
	style="width: 80%; height: auto; margin: 0 auto; font-size: 14px; text-align: justify;">

	<div id="form-main" style="margin: 0 auto">	
		
		<p class="name"><b>${message }</b></p></br>
	
	
		<form name="spotlightEntryForm" action="spotLightaddSpotlightEntry.htm" enctype="multipart/form-data" method="post">
			
			<input type="hidden" name="spotlightId">
			
			<p class="name">
				<span style="font-size: 16px; color: #0877D0;">*Title:</span>
				<input type="text" class="feedback-input" name="title" placeholder="Title" />
			</p>
			<p class="name">
				<span style="font-size: 16px; color: #0877D0;">*Description:</span>
				<!-- <input type="text" class="feedback-input" placeholder="Description" /> -->
				<textarea rows="7" cols="8" name="description"></textarea>
			</p>
			<p class="name">
				<span style="font-size: 16px; color: #0877D0;">*Image:</span>
				<input type="file" class="feedback-input" name="image" placeholder="Your name" />
			</p>
			<div class="submit" align="center">
				<input type="button" value="Submit" onclick="validateSpotlightEntryForm()" />
			</div>
		</form>		
	</div>
	
	
	
	<c:if test="${not empty spotlightBeans }">
		</br>
		<div id="tableDiv">
			<table id="spotlightTbl" class="spotlightTbl">
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Image</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<c:forEach items="${spotlightBeans}" var="bean">
					<tr id="rw_${bean.id }">
						<td width="8%">${bean.title }</td>
						<td width="55%">${bean.description }</td>
						<td><img  src="${bean.imageStr }"/></td>
						<td><a href="javascript:editSpotLight(${bean.id },'${bean.title }', '${bean.description }')">Edit</a></td>
						<td><a href="javascript:deleteSpotLight(${bean.id})">Delete</a></td>
					</tr>
				</c:forEach>
			</table>		
		</div>
		</br>
	</c:if>
</div>