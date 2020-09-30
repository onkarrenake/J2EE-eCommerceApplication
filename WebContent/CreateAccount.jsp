<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.online_shopping_servlet.*" %>
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Account</title>
	<style>
		#First{
			font-size : 50px;
			text-align : center;
		}
		.box{
			//border : 1px solid black;
			//box-padding : 50px;
			background-size: 50% 100%;
		}
		html { 
  		background: url(Images/ba1.jpg) no-repeat center center fixed; 
  		-webkit-background-size: cover;
  		-moz-background-size: cover;
  		-o-background-size: cover;
 		 background-size: cover;
	}
	</style>
</head>
<body>
</br></br></br>
<h1 id="First">Welcome</h1>
<div  class = "box" >
	<form action = "SignupServlet" method = "post">
	<table align = "center">
	<tr>
	<td>First Name</td><td><input type = "text" name = "Firstname" autofocus required placeholder = "First name"></td>
	</tr>
	<tr>
	<td>Last Name</td><td><input type = "text" name = "Lastname" required placeholder = "Last name"></td>
	</tr>
	<tr>
	<td>Mobile_No.</td><td><input type = "text" name = "Mobile_no" required placeholder = "Mobile_no"></td>
	</tr>
	<tr>
	<td>Email ID</td><td><input type = "text" name = "Email_ID" required placeholder = "Email_ID"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type = "Password" name = "Password" required placeholder = "Password"></td>
	</tr>
	<tr>
	<td>Confirm Password</td><td><input type = "Password" name = "Confirm_Password" required placeholder = "Confirm_Password"></td>
	</tr>
	<tr>
	<td><input type = "submit" value = "Submit"></td>
	</tr>
	</table>
	</form>
</div>
</body>
</html>