<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
	
		<form:form action="savePemasukan" modelAttribute="pemasukan" method="POST">
		
			<table>
				<tbody>
					<tr>
						<td><label>Tanggal:</label></td>
						<td><form:input path="tanggal" /></td>
					</tr>
				
					<tr>
						<td><label>Total:</label></td>
						<td><form:input path="total" /></td>
					</tr>

					<tr>
						<td><label>Dari:</label></td>
						<td><form:input path="dari" /></td>
					</tr>
					
						<tr>
						<td><label>Catatan:</label></td>
						<td><form:input path="catatan" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/transaksi/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










