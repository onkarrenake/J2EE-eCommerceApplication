<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Checkout Form</title>
	<style>
		.button {
	  padding: 15px 25px;
	  font-size: 24px;
	  text-align: center;
	  cursor: pointer;
	  outline: none;
	  color: #fff;
	  background-color: black;
	  border: none;
	  border-radius: 15px;
	  box-shadow: 0 9px #999;
	}
	
	.button:hover {background-color: #d0d1cf}
	
	.button:active {
	  background-color: black;
	  box-shadow: 0 5px #666;
	  transform: translateY(4px);
	}
		html { 
  		background: url(Images/s5.jpeg) no-repeat center center fixed; 
  		-webkit-background-size: cover;
  		-moz-background-size: cover;
  		-o-background-size: cover;
 		 background-size: cover;
	}
	</style>
</head>
<body>
<h1>Checkout Form</h1>
<form action = "#pyment_get_way" method = "post">
  <table style="width:50%" align="left">
  <tr>
  <th><h3 align="left">Billing Address</h3></th>
  <th><h3 align="left">Payment </h3></th>
  </tr>
  <tr><td>First Name</td>
  <td>Accepted cards</td></tr>
   <tr><td><input type="text" name="firstname" required></td>
   <td> <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i></td>
   </tr>
   
   <tr><td>Email</td>
   <td>Name on Card</td></tr>
   <tr><td><input type="text" name="email" required></td>
   <td><input type="text" name="name" required></td></tr>
   
   <tr><td>Address</td>
   <td>Credit card number</td></tr>
   <tr><td><input type="text" name="address" required></td>
   <td><input type="text" name="card_num" required></td></tr>
   
   <tr><td>City</td>
   <td>Exp. Month</td></tr>
   <tr><td><input type="text" name="city" required></td>
   <td><input type="text" name="exp_month" required></td></tr>
   
   <tr><td>State</td>
   <td>Exp. Year</td></tr>
   <tr><td><input type="text" name="state" required></td>
   <td><input type="text" name="exp_year" required></td></tr>
   
   <tr><td>Zip Code</td>
   <td>CVV</td></tr>
   <tr><td><input type="text" name="zip_code" required></td>
   <td><input type="text" name="cvv" required></td></tr>
   <tr><td><input class="button" type="submit" value="Confirm To Proceed ";style="width:40%"></td></tr>
   </table>
   
  </form>
  </body>
  </html>