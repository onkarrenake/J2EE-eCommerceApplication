<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
  
}

.card button:hover {
  opacity: 0.7;
}
</style>
</head>
<body>

		<table style="width:75%" align="left" >
		<tr>
		  <td>
		  <div class="card" ">
		  <img src="Images/p1.jpeg" width="200" height="200">
		  <h3>Product 1</h3>
		  <p class="price">$Price</p>
		  <h4>Some text about the product.</h4>
		  <button><a href="Payment.jsp"/>Buy Now!</a></button>
		  </div>
		  </td>
		</tr>
		
		<tr>
		  <td>
		  <div class="card" ">
		  <img src="Images/p2.jpg" width="200" height="200">
		  <h3>Product 2</h3>
		  <p class="price">Rs. Price</p>
		  <h4>cosmetics.</h4>
		  <button><a href="Payment.jsp"/>Buy Now!</a></button>
		  </div>
		  </td>
		</tr>
		
		<tr>
		  <td>
		  <div class="card" ">
		  <img src="Images/p3.jpg" width="200" height="200">
		  <h3>Product 3</h3>
		  <p class="price">Rs. Price</p>
		  <h4>cosmetics.</h4>
		  <button><a href="Payment.jsp"/>Buy Now!</a></button>
		  </div>
		  </td>
		</tr>
		</table>		
</body>
</html>		