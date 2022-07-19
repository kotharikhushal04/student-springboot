<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	  <!-- Brand -->
	  <a class="navbar-brand" href="#">Management System</a>
	
	  <!-- Toggler/collapsibe Button -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <!-- Navbar links -->
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="search">Student Management</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Teacher Management</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class ="container">
		<div class = "row">
			<h1> List Students </h1>
		</div>
		
		<div class = "row">
			<div class = "col-lg-3">
				<a href = "addnow.html" class = "btn btn-primary btn-sm mb-3"> Add Student</a>
			</div>
			
			
		</div>
		<table class = "table table-striped table-bordered">
			<thead class = "table-dark">
				<tr>
					<th> Student First Name</th>
					<th> Student Last Name</th>
					<th> Student Email </th>
					<th> Actions </th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach items="${searchList}" var="p" varStatus="j">
					<tr id="myUL">
						
						<td>${p.firstName}</td>
						<td>${p.lastName}</td>
						<td>${p.email}</td>
						
						<td><a href = "delete?id=${p.id}"
						 class = "btn btn-danger">Delete</a>
						 
						<a href = "edit?id=${p.id}"
						 class = "btn btn-primary">  Update</a></td>
					</tr>
				</c:forEach>
				
				
			</tbody>
		
		</table>
		
	</div>
	
</body>
</html>