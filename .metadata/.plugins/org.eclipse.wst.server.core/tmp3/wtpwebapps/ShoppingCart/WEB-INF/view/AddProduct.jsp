<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<%@include file="header.jsp"%>
<body
	style="background: url('resources/images/floral_pattern.jpg'); background-size: cover;">

	<form:form action="${ctx}/addProduct" method="post" modelAttribute="p"
		enctype="multipart/form-data">
		<center>
			<table>
				<tr>
					<td>File to upload</td>
					<td><input type="file" name="file" size="60"></td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td><input type="text" name="productName" size="60"></td>
				</tr>
				<tr>
					<td>Product Quantity</td>
					<td><input type="text" name="quantity" size="60"></td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td><input type="text" name="price" size="60"></td>
				</tr>
				<tr>
					<td>Product Description</td>
					<td><input type="text" name="productdescription" size="255"></td>
				</tr>
				<tr>
					<td>Product Category</td>
					<td><input type="text" name="productCategory" size="60"></td>
				</tr>
				<tr>
					<td>Product Supplier</td>
					<td><input type="text" name="productSupplier" size="60"></td>
				</tr>
			</table>

			<input type="Submit" class="button" value="Submit">
		</center>
	</form:form>

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