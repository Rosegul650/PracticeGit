
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	
		<title>Registration</title>
	</head>
	<body>
		<div class="container">
		<%@include file="header.jsp" %>
			
			
			<div class="panel panel-primary">
			    <div class="panel panel-heading"><h1>Register New Book<h1></div>
			    <c:if test="${message ne null }">
			    	<div class="alert alert-danger">${message }</div>
			    </c:if>
			    
			    <div class="panel panel-body">
			    	<form action="createbook" method="post"> <!-- login mapping with post  -->
			    	  <div class="row">
							<div class="col-md-3">BookID</div><div class="col-md-9"><input type="number" name="bookId"/></div>
						</div>
						</br>
			    	
			    		<div class="row">
							<div class="col-md-3">Name</div><div class="col-md-9"><input type="text" name="name"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">page</div><div class="col-md-9"><input type="text" name="page"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Author</div><div class="col-md-9"><input type="text" name="author"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Publisher</div><div class="col-md-9"><input type="text" name="publisher"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Email</div><div class="col-md-9"><input type="text" name="email"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Password</div><div class="col-md-9"><input type="text" name="password"/></div>
						</div>
						<button type="submit" class="btn btn-success">Create</button>
						<button type="reset" class="btn btn-danger">Reset</button>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>