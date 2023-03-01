<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" >
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
	<c:if test=" ${sessionScope.myData.name ne null} ">
	          Welcome: ${sessionScope.myData.name }
	</c:if>
		<img alt="" src="img/Library.jpeg" height="30%" width="30%">
			<!-- Navigation bar -->
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				  <ul class="navbar-nav">
				    <li class="nav-item active">
				      <a class="nav-link" href="home">Home</a>
				    </li>
				    <li class="nav-item">
				      <a class="nav-link" href="allbooks">AllBook</a>
				    </li>
				    <li class="nav-item">
				      <a class="nav-link" href="registration">Registration</a>
				    </li>
				     <c:choose>
				      <c:when test="${sessionScope.myData.name ne null}">
				        <li class="nav-item">
				      <a class="nav-link " href="logout">Logout</a>
				      </li>
				      </c:when>
				      <c:otherwise>
				       <li class="nav-item">
				      <a class="nav-link " href="login">Login</a>
				       </li>
				      </c:otherwise>
				      </c:choose>
				  </ul>
			</nav>
	</div>
</body>
</html>