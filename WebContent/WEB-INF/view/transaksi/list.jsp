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
		<c:url var="updateLink" value="/transaksi/showFormForUpdate">
			<c:param name="pemasukanId" value="${pemasukan.id }" />
		</c:url>
			
		<div>${pemasukan} <a href="${updateLink }">Update</a></div> <br/>
	</c:forEach>
	
	<c:forEach var="nota" items="${notas}">
			<c:url var="updateLink2" value="/transaksi/showFormForUpdateNota">
			<c:param name="notaId" value="${nota.nid }" />
		</c:url>
		<div>${nota} <a href="${updateLink2 }">Update</a> </div> <br/>
	</c:forEach>
</body>
</html>