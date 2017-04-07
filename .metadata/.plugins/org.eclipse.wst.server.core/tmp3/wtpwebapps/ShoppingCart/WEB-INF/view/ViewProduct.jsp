<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<link href="${ctx}/resources/css/style1.css" rel="stylesheet">

<%@include file="header.jsp"%>
</head>
<body
	style="background: url('E:/DemoProject/ShoppingCart/src/main/webapp/resources/images/floral_pattern.jpg'); background-size: cover;">
	<center>

		<table border="3">
			<tr>
				<th>Product Image</th>
				<th>Product Name</th>
				<th>Product Quantity</th>
				<th>Product Price</th>
				<th>Product Description</th>
				<th>Product Category</th>
				<th>Product Supplier</th>
				<th></th>
				<th></th>
				<th></th>

			</tr>
			<c:forEach items="${products}" var="pro">
				<tr>
					<td><img alt=""
						src="${ctx}/resources/images/Product/${pro.productid}.jpg"
						height="100px" width="100px" /></td>
					<td>${pro.productName}</td>
					<td>${pro.quantity}</td>
					<td>${pro.price}</td>
					<td>${pro.productdescription}</td>
					<td>${pro.productCategory}</td>
					<td>${pro.productSupplier}</td>
					<td><a class="btn icon-btn btn-success"
						href="${ctx }/sp/${pro.productid}"><span
							class="glyphicon btn-glyphicon glyphicon-eye-open img-circle text-success"></span>View</a></td>
					<c:if test="${not empty smg}">
						<td><a class="btn icon-btn btn-success"
							href="${ctx }/update/${pro.productid}"><span
								class="glyphicon btn-glyphicon glyphicon-edit img-circle text-success"></span>Edit</a></td>
						<td><a class="btn icon-btn btn-danger"
							href="${ctx }/delete/${pro.productid}"><span
								class="glyphicon btn-glyphicon glyphicon-trash img-circle text-danger"></span>Delete</a></td>
					</c:if>
				</tr>
			</c:forEach>

		</table>
		<c:if test="${not empty smg}">
		<a class="btn icon-btn btn-success" href="addproduct"><span
			class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add
			Product</a>
		</c:if>
	</center>
	<%@include file="footer.jsp"%>
</body>
</html>