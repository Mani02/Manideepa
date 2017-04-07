<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
</head>
<body
	style="background: url('resources/images/floral_pattern.jpg'); background-size: cover;">
	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<div class="jumbotron jumbotron-sm">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<h3 class="h3">
						Contact Us 
					</h3>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="well well-sm">
					<form>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Name</label> <input type="text"
										class="form-control" id="name" placeholder="Enter name"
										required="required" />
								</div>
								<div class="form-group">
									<label for="email"> Email Address</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="email" class="form-control" id="email"
											placeholder="Enter email" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="subject"> Subject</label> <select id="subject"
										name="subject" class="form-control" required="required">
										<option value="na" selected="">Choose One:</option>
										<option value="suggestions">Suggestions</option>
										<option value="product">Product Review</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Message</label>
									<textarea name="message" id="message" class="form-control"
										rows="9" cols="25" required="required" placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<button type="submit" class="btn button3 pull-right"
									id="btnContactUs">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4">
				<form>
					<legend>
					<span class="glyphicon glyphicon-globe"></span><font size="4"> Our Office</font>
					</legend>
					<address><font size="4">
						<strong>Blossoms, Inc.</strong><br> NIIT Kakurghachi More,<br>
						West Bengal, Kolkata-700054<br> <abbr title="Phone"> Phone:</abbr>
						(+91) 9830340892
						</font>
					</address>
					<address><font size="4">
						<strong>Email:</strong><br> <a href="mailto:#">moni.manideepa920208@gmail.com</a>
						</font>
					</address>
					
				</form>
			</div>
		</div>
	</div>
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