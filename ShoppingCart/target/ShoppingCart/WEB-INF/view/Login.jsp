<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<link href="${ctx}/resources/css/style1.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body
	style="background: url('C:/Users/Moni/Pictures/images/floral_pattern.jpg'); background-size: cover;">
	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<div id="main_section">
		<center>
			<form action="validate" method="post">
				<table border=0>
					<tr>
						<td><font size="4">User Name:</font></td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td><font size="4">Password:</font></td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td><input type="Submit" class="button" value="Login"></td>
						<td><input type="Reset" class="button" value="Reset"></td>
					</tr>

				</table>
			</form>
		</center>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>