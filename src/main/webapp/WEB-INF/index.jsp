<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Book Club</title>
</head>
<body>
	<div class="container pt-4">
		<h2 class="text-primary">Book Club</h2>
		<p>A place for friends to share thoughts on books.</p>
	</div>
	<div class="d-flex justify-content-evenly p-3">
		<form:form action="/register" method="post" modelAttribute="newUser">
			<h3>Register</h3>
	        <div class="form-group">
	            <label>User Name:</label>
	            <form:input path="userName" class="form-control" />
	            <form:errors path="userName" class="text-danger" />
	        </div>
	        <div class="form-group">
	            <label>Email:</label>
	            <form:input path="email" class="form-control" />
	            <form:errors path="email" class="text-danger" />
	        </div>
	        <div class="form-group">
	            <label>Password:</label>
	            <form:password path="password" class="form-control" />
	            <form:errors path="password" class="text-danger" />
	        </div>
	        <div class="form-group">
	            <label>Confirm Password:</label>
	            <form:password path="confirm" class="form-control" />
	            <form:errors path="confirm" class="text-danger" />
	        </div>
	        <input type="submit" value="Register" class="btn btn-primary mt-3" />
	    </form:form>
	    <form:form action="/login" method="post" modelAttribute="newLogin">
	    	<h3>Log in</h3>
        	<div class="form-group">
            	<label>Email:</label>
            	<form:input path="email" class="form-control" />
            	<form:errors path="email" class="text-danger" />
        	</div>
        	<div class="form-group">
            	<label>Password:</label>
            	<form:password path="password" class="form-control" />
            	<form:errors path="password" class="text-danger" />
        	</div>
        	<input type="submit" value="Login" class="btn btn-primary mt-3" />
    	</form:form>
   </div>
</body>
</html>