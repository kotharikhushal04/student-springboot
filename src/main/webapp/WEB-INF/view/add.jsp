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
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	  <!-- Brand -->
	  <a class="navbar-brand" href="#"> Management System</a>
	
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
	<br>
<br>
	<div class = "container">
		<div class = "row">
			<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class = "text-center"> Create New Student </h1>
				<div class = "card-body">
					<f:form action="insert" method="post" modelAttribute="logvo">
						<div class ="form-group">
							<label> Student First Name </label>
							<f:input 
							path="firstName"
							type = "text"
							name = "firstName"
							
							class = "form-control"
							placeholder="Enter Student First Name" 
							/>
							
						</div>
						
						<div class ="form-group">
							<label> Student Last Name </label>
							<f:input
							path="lastName"
							type = "text"
							name = "lastName"
							
							class = "form-control"
							placeholder="Enter Student Last Name" 
							/>
						</div>
						
						<div class ="form-group">
							<label> Student Email </label>
							<f:input
							path="email"
							type = "text"
							name = "email"
							
							class = "form-control"
							placeholder="Enter Student Email" 
							/>
						</div>
						
						<div class = "box-footer">
							<button type="submit" class = "btn btn-primary">
								Submit
							</button>
						</div>
					</f:form>
				
			
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>