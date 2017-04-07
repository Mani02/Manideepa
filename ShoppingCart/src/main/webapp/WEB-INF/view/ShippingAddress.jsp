<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Address</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
</head>
<body
	style="background: url('resources/images/floral_pattern.jpg'); background-size: cover;">
	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<center>
		<h3>Shipping Details</h3>
	</center>
	<div id="main_section">
		<center>
			<form action="${ctx}/orderconfirm" method="post"
				modelAttribute="s">
				<table >
					<tr>
						<td><font size="4">First Name</font></td>
						<td><input type="text" name="firstName" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Last Name</font></td>
						<td><input type="text" name="lastName" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Email Id</font></td>
						<td><input type="text" name="email" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Contact No.</font></td>
						<td><input type="text" name="contactno" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Address</font></td>
						<td><input type="text" name="address" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">City</font></td>
						<td><input type="text" name="city" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Pin Code</font></td>
						<td><input type="text" name="pincode" size="35"></td>
					</tr>
					<tr>
						<td><font size="4">Landmark</font></td>
						<td><input type="text" name="landmark" size="35"></td>
					</tr>
					<tr>
						<td><input class=button type="submit" value="Next"></td>
								
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