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
<h1>Historis Transaksi</h1>

	<c:forEach var="pemasukan" items="${pemasukans}">
		${pemasukan} <br/>
	</c:forEach>
	
	<c:forEach var="nota" items="${notas}">
		${nota} <br/>
	</c:forEach>
	
	
</body>
</html>