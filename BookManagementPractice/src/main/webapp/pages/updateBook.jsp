<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update</title>
	</head>
	<body>
		<div class="container">
			<%@include file="header.jsp" %>
			<div class="panel panel-primary">
			    <div class="panel panel-heading"><h1>Update Book<h1></div>
			    <c:if test="${message ne null }">
			    	<div class="alert alert-danger">${message }</div>
			    </c:if>
			    
			    <div class="panel panel-body">
			    	<form action="editBook" method="post"> <!-- login mapping with post  -->
			    		<input type="hidden" value="${book.bookId }" name="bookId"/>
			    		
			    		<div class="row">
							<div class="col-md-3">Name</div><div class="col-md-9"><input type="text" value="${book.name }" name="name"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">page</div><div class="col-md-9"><input type="text" value="${book.page }"name="page"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Author</div><div class="col-md-9"><input type="text" value="${book.author }" name="author"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Publisher</div><div class="col-md-9"><input type="text" value="${book.publisher }" name="publisher"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Email</div><div class="col-md-9"><input type="text"  value="${book.email }" name="email"/></div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3">Password</div><div class="col-md-9"><input type="text"value="${book.password }" name="password"/></div>
						</div>
						<button type="submit" class="btn btn-success">Update</button>
						<button type="reset" class="btn btn-danger">Reset</button>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>