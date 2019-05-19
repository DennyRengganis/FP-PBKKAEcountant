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
		
		<c:url var="deleteLink" value="/transaksi/deletePemasukan">
			<c:param name="pemasukanId" value="${pemasukan.id }" />
		</c:url>
		<div>${pemasukan} <a href="${updateLink }">Update</a>|<a href="${deleteLink}"
		onclick="if(!(confirm('Are you sure want to delete this income ?'))) return false">Delete</a></div> <br/>
	</c:forEach>
	
	<c:forEach var="nota" items="${notas}">
		<c:url var="updateLink2" value="/transaksi/showFormForUpdateNota">
			<c:param name="notaId" value="${nota.nid }" />
		</c:url>
		<c:url var="deleteLink2" value="/transaksi/deleteNota">
			<c:param name="notaId" value="${nota.nid }" />
		</c:url>
		<div>${nota} <a href="${updateLink2 }">Update</a> | <a href="${deleteLink2}"
		onclick="if(!(confirm('Are you sure want to delete this income ?'))) return false">Delete</a></div> <br/>
	</c:forEach>
	
	<script src="${pageContext.request.contextPath}/resources/vendor/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/headroom/headroom.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Optional JS -->
	<script src="${pageContext.request.contextPath}/resources/js/argon.js?v=1.0.1"></script>
</body>
</html>