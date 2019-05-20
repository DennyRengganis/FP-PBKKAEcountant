<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Dashboard</title>
 
  <!-- Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/nucleo/css/nucleo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css">
  <!-- CSS -->
   <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath}/resources/css/argon.css?v=1.0.1">
 
  
</head>

<body>

<h1>Summation</h1>
	Pemasukan : ${jumlah}
	<br>
	Pengeluaran : ${jumlah2}
	<br>
	Keuntungan : ${jumlah3}
	<c:forEach var="pemasukan" items="${pemasukans}">
		<div>${pemasukan}</div> <br/>
	</c:forEach>
	<c:forEach var="nota" items="${notas}">
		<div>${nota}</div> <br/>
	</c:forEach>
	<c:forEach var="notaJan" items="${notasJan}">
		<div>${notaJan}</div> <br/>
	</c:forEach>

</body>

</html>