<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Address</title>
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
	<center><h3>Billing Details</h3></center>
	<div id="main_section">
		<center>
		<form:form action="${ctx}/shipping" method="post" modelAttribute="u">	
				<table id="billing">
					<tr>
						<td><font size="4">First Name</font></td>
						<td><input type="text" name="firstname" size="35" value="${u.firstname}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">Last Name</font></td>
						<td><input type="text" name="lastname" size="35" value="${u.lastname}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">Contact No.</font></td>
						<td><input type="text" name="contactNo" size="35" value="${u.contactNo}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">Address</font></td>
						<td><input type="text" name="address" size="35" value="${u.address}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">City</font></td>
						<td><input type="text" name="city" size="35" value="${u.city}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">Pin Code</font></td>
						<td><input type="text" name="pincode" size="35" value="${u.pincode}" disabled></td>
					</tr>
					<tr>
						<td><font size="4">Landmark</font></td>
						<td><input type="text" name="landmark" size="35" value="${u.landmark}" disabled></td>
					</tr>
					<tr>
						<td><input type="Submit" class="button" value="Next"></td>
					</tr>
				</table>
				</form:form>
				</center>
	</div><br>
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