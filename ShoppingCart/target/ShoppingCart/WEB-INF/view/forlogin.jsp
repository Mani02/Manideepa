<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
</head>
<body
	style="background: url('C:/Users/Moni/Pictures/images/floral_pattern.jpg'); background-size: cover;">
	<nav class="navbar navbar-light" style="background-color: #333300;">
	 
	<div class="container-fluid">
		   
		<div class="navbar-header">
			      <a class="navbar-brand" href="#"><b><i><font
						face="monotype corsiva" ;
						size=30pt; color=ff0066>Blossoms</font></i></b></a>
			   
		</div>
		    
		<ul class="nav navbar-nav">
			<li class="active"><a href="${ctx}/home"><b>Home</b></a></li>       
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><b>Product</b><span
					class="caret"></span></a>

				<ul class="dropdown-menu"
					style="background-color: #86cc74;color=gold">
					    
					<li><a href="${ctx}/viewpro"><font color=gold><b>All
									Product</b></font></a></li>    
					<li><a href="${ctx}/viewpro/Men"><font color=gold><b>Men</b></font></a></li>
					         
					<li><a href="${ctx}/viewpro/Women"><font color=gold><b>Women</b></font></a></li>
					         
					<li><a href="${ctx}/viewpro/Bags"><font color=gold><b>Bags</b></font></a></li>
					<li><a href="${ctx}/viewpro/Shoes"><font color=gold><b>Shoes</b></font></a></li>
					  
				</ul>       </li>
			<li class="active"><a href="${ctx }/aboutus"><b>About Us</b></a></li>
			<li class="active"><a href="#"><b>Contact Us</b></a></li>  
		</ul>

		<ul class="nav navbar-nav navbar-right">
			  
			<c:if test="${empty successmessage}">
    			<li><a href="${ctx }/Login"><b>Login</b></a></li>
			</c:if>
			<c:if test="${not empty successmessage}">
				<li><a href="${ctx}/logout"><b>Logout</b></a></li>
			</c:if>
			        
		</ul>
		<div class="message">

			<c:if test="${not empty successmessage}">
				<font size="4" color="white"><b>${successmessage}</b></font>
				<font size="4" color="white"><b>${abc}</b></font>
				<font size="4" color="white"><b>${welcomemsg}</b></font>
				<font size="4" color="white"><b>${unameuser}</b></font>
				<font size="4" color="white"><b>${abc}</b></font>
			</c:if>
		</div>
		 
	</div>
	</nav>

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
				<img src="C:\Users\Moni\Pictures\images\saree1.jpg">
			</div>

			<div class="item">
				<img src="C:\Users\Moni\Pictures\images\chudidar1.jpg">
			</div>

			<div class="item">
				<img src="C:\Users\Moni\Pictures\images\Formal_Shirt.jpg">
			</div>

			<div class="item">
				<img src="C:\Users\Moni\Pictures\images\shoes.jpg">
			</div>

			<div class="item">
				<img src="C:\Users\Moni\Pictures\images\bags.jpg">
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
	<div id=footer>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>