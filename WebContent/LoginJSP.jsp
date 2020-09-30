<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
	<style>
		#First{
			font-size : 50px;
			text-align : center;
		}
		.box{
			border : 1px solid black;
			box-padding : 100px;
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

<div style='position:absolute;zindex:0;left:0;top:0;width:100%;height:100%' class = "box">
<form action = "LoginServlet" method = "post">
</br></br></br>
    <h1 id="First">Welcome To Login</h1>
    	<%
			request.getAttribute("username");
			if(session.getAttribute("username") != null)
			{
				out.println("<h1 align = 'center' style='color:red'>oops.. username / password wrong</h1>");
			}else{
			}
		%>
	<table align = "center">
		<tr>
			<td><b>User Name</b></td><td><input type = "text" name = "Email_ID" autofocus required placeholder = "Email ID @gmail.com"></td>
		</tr>
		<tr>
			<td><b>Password</b></td><td><input type = "Password" name = "Password" required placeholder = "Password"></td>
		</tr>
		<tr>
			<td><input type = "submit" value = "Login"></td>
		</tr>
		<tr>
		<td><a href = "CreateAccount.jsp">Create Your Shopping Account</a></td>
		</tr>
	</table>
</form>
</div>
</body>
</html>