<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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