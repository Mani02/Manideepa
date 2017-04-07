<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
</head>
<body

	style="background: url('E:/DemoProject/ShoppingCart/src/main/webapp/resources/images/floral_pattern.jpg'); background-size: cover;">
	
	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<div id="main_section">
		<h4>${b4cart}</h4>
		<h4>${msg}</h4>
		<br>
		<h2 align="center">Specific Product Details</h2>
		<div id="left" style="float: left; width: 50%;">
			<img class="image-responsive"
				src="${ctx}/resources/images/Product/${p.productid}.jpg" alt=""
				width="400" height="700">

		</div>
		<div id="right" style="float: right; width: 50%;">
			<table class="prod-table">
				<thead>

					<tr>
						<th align="center">Product Details</th>
						<th align="center"></th>

					</tr>

				</thead>
				<tbody>
					<tr>
						<td>Product Code</td>
						<td>${p.productid}</td>
					</tr>
					<tr>
						<td>Product Name</td>
						<td>${p.productName}</td>
					</tr>
					<tr>
						<td>Product Category</td>
						<td>${p.productCategory}</td>
					</tr>
					<tr>
						<td>Description</td>
						<td>${p.productdescription}</td>
					</tr>
					<tr>
						<td>Price</td>
						<td>${p.price}</td>
					</tr>
					<tr>
						<td>Supplier</td>
						<td>${p.productSupplier}</td>
					</tr>
					<form  id="addToCart" action="${ctx}/myCart/add/${p.productid}"  method="post">
					<tr>
						<td>Quantity</td>
						<td><select name="quantity">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select></td>
					</tr>
					<tr>
					<td>
						<button class="button" id="addToCart" form="Cart">
							<span style="margin-right: 20px"
								class="glyphicon glyphicon-shopping-cart" ></span><b>ADD TO CART</b>
						</button>
					</td>
					</form>
					
					<form  id="addToCart" action="${ctx}/view2/${p.productid}"  method="post">
					<td>
					<button class="button1" ><span class="glyphicon glyphicon-flash"><b>BUY NOW</b></span></button>
					 
					</td>
					</form>
					</tr>
					
				</tbody>
			</table>
		</div>

		<div id="footer">
			<%@include file="footer.jsp"%>

		</div>
	</div>



</body>

</html>