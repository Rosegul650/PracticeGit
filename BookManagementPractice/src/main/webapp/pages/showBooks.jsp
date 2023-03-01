<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
			
			<%@include file="header.jsp" %>
			<h1 class="text-center">Welcome to Library home page </h1>
			
			 <table class="table table-bordered table-hover">
			    <thead class="thead-dark">
			      <tr>
			        <th>Name</th>
			        <th>page</th>
			        <th>Author</th>
			        <th>Publisher</th>
			        <th>Email</th>
			        <th>Password</th>
			      </tr>
			    </thead>
			    <tbody>
			      <c:forEach items="${books }" var="st">
				 	<tr>
				        <td>${st.name }</td>
				        <td>${st.page }</td>
				        <td>${st.author }</td>
				        <td>${st.publisher }</td>
				        <td>${st.email }</td>
				        <td>${st.password}</td>
				        <td>
					        <a href="getBookDetails?id=${st.bookId }">Book Details</a>
					        <a href="deleteBook?id=${st.bookId }"><img alt="" src="img/delete.png" style="height:30px"></a>
					        <a href="updateBook?id=${st.bookId }"><img alt="" src="img/edit.png" style="height:30px"></a>
				        </td>
			       </tr>
				 </c:forEach>
			      
			    </tbody>
			 </table>
		</div>
</body>
</html>