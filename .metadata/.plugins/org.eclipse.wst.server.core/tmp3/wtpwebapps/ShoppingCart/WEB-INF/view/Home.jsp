<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blossoms</title>
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@include file="header.jsp"%>

</head>
<body
	style="background: url('resources/images/floral_pattern.jpg'); background-size: cover;">



	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>

		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox" align="center">

			<div class="item active">
				<img src="resources/images/saree1.jpg">
			</div>

			<div class="item">
				<img src="resources/images/chudidar1.jpg">
			</div>

			<div class="item">
				<img src="resources/images/Formal_Shirt.jpg">
			</div>

			<div class="item">
				<img src="resources/images/shoes.jpg">
			</div>

			<div class="item">
				<img src="resources/images/bags.jpg">
			</div>


		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<br>



	<div class="container">
		<h3>Products</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="${ctx}/viewproduct/Women" target="_blank"> <img
						src="resources/images/7.anshika-lifestyle- cotton silk mix saree.jpeg"
						alt="Women" width="350" height="550">
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="${ctx}/viewproduct/Men" target="_blank"> <img
						src="resources/images/4.Men's pink-blue-lawman-original shirt.jpeg"
						alt="Men" width="350" height="550">
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="${ctx}/viewproduct/Shoes" target="_blank"> <img
						src="resources/images/19. Adidas VITORIA II Training Shoes  (Grey, Pink, Silver).jpeg"
						alt="Shoes" width="350" height="550">
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="${ctx}/viewproduct/Bags" target="_blank"> <img
						src="resources/images/4. BUTTERFLIES Hand-held Bag  (Yellow).jpeg"
						alt="Bags" width="350" height="550">
					</a>
				</div>
			</div>
		</div>
	</div>
	<div id=footer>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>