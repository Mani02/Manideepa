<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
<%@include file="header.jsp"%>
</head>
<body
	style="background: url('E:/DemoProject/ShoppingCart/src/main/webapp/resources/images/floral_pattern.jpg'); background-size: cover;">
	<center>
		<form:form action="${cp}/editsave" method="post" modelAttribute="p"
			enctype="multipart/form-data">
			<table>

				<tr>
					<td></td>
					<td><input type="hidden" name="productid"
						value="${p.productid}"></td>
				</tr>
				<tr>
					<td>File to upload</td>
					<td><input type="file" name="file" value="${p.myurl}"
						size="60"></td>
				</tr>

				<tr>
					<td>Product Name</td>
					<td><input type="text" name="productName"
						value="${p.productName}" size="60"></td>
				</tr>
				<tr>
					<td>Product Quantity</td>
					<td><input type="text" name="quantity" value="${p.quantity}"
						size="60"></td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td><input type="text" name="price" value="${p.price}"
						size="60"></td>
				</tr>
				<tr>
					<td>Product Description</td>
					<td><input type="text" name="productdescription"
						value="${p.productdescription}" size="60"></td>
				</tr>
				<tr>
					<td>Product Category</td>
					<td><input type="text" name="productCategory"
						value="${p.productCategory}" size="60"></td>
				</tr>
				<tr>
					<td>Product Supplier</td>
					<td><input type="text" name="productSupplier"
						value="${p.productSupplier}" size="60"></td>
				</tr>
			</table>
			
				<input type="Submit" class="button" value="Submit">
				
			

		</form:form>
	</center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>

</body>
</html>