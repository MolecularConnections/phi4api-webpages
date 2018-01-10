<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<h2>Phibase Spotlight Login</h2>

<p style="color:red;">${message }</p>


		<form action="authenticateSpotLight.htm" method="post">
		
			<table>
				<tr>
					<td>User name:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>
					<input type="submit" value="Login" />
					</td>
				</tr>
			</table>
			
			
			
		</form>
</body>
</html>