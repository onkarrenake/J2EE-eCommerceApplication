<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Men's Fashion</title>

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
<body>

<h1 style="text-align:center">Men's Fashion</h1>
<hr>
<a href = "Home.jsp"><button>Back</button></a>
<h2 style="text-align:center">Dress</h2>
<table align = "center">
	<tr>
		<td>
		<div class="card">
		  <img src="Dress/m1.jpg" style="width:100%">
		  <h1>MEGA OFFER</h1>
		  <p class="price">Rs. 2419.99</p>
		  <p class="price">Discount 20 %</p>
		  <p>Royal Blue Colour Silk Fabric Men's Indowestern With Matching Patiala is Embellished With Lace,Thread Work to add a grace.</p>
		   <% 
		  	int ProductIDM1 = 201;
		  	Object ProductNameM1 = "SHADI MEGA OFFER";
		  	int PriceM1 = 2419;
		  	int DiscountM1 = 20;
		  	Object ImageNameM1 = "Dress/m1.jpg";
		  	session.setAttribute("ProductIDM1",ProductIDM1);
		  	session.setAttribute("ProductNameM1",ProductNameM1);
		  	session.setAttribute("PriceM1",PriceM1);
		  	session.setAttribute("DiscountM1",DiscountM1);
		  	session.setAttribute("ImageNameM1",ImageNameM1);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "201">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="Dress/m2.jpg" style="width:100%">
		  <h1>SHADI SPECIAL</h1>
		  <p class="price">Rs. 2900.99</p>
		  <p class="price">Discount 25 %</p>
		  <p>Royal Blue Colour Silk Fabric Men's Indowestern With Matching Patiala is Embellished With Lace,Thread Work to add a grace.</p>
		  <% 
		  	int ProductIDM2 = 202;
		  	Object ProductNameM2 = "SHADI SPECIAL";
		  	int PriceM2 = 2900;
		  	int DiscountM2 = 30;
		  	Object ImageNameM2 = "Dress/m2.jpg";
		  	session.setAttribute("ProductIDM2",ProductIDM2);
		  	session.setAttribute("ProductNameM2",ProductNameM2);
		  	session.setAttribute("PriceM2",PriceM2);
		  	session.setAttribute("DiscountM2",DiscountM2);
		  	session.setAttribute("ImageNameM2",ImageNameM2);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "202">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
	</tr>
</table>
<!-- Women's wares -->

<table align = "center">
	<tr>
		<td>
		<div class="card">
		  <img src="Dress/m3.jpg" style="width:90%">
		  <h1>RAWADI STYLE</h1>
		  <p class="price">Rs. 1019.99</p>
		  <p class="price">Discount 30 %</p>
		  <p>Royal Blue Colour Silk Fabric Men's Indowestern With Matching Patiala is Embellished With Lace,Thread Work to add a grace.</p>
		  <% 
		  	int ProductIDM3 = 203;
		  	Object ProductNameM3 = "RAWADI STYLE";
		  	int PriceM3 = 1019;
		  	int DiscountM3 = 25;
		  	Object ImageNameM3 = "Dress/m3.jpg";
		  	session.setAttribute("ProductIDM3",ProductIDM3);
		  	session.setAttribute("ProductNameM3",ProductNameM3);
		  	session.setAttribute("PriceM3",PriceM3);
		  	session.setAttribute("DiscountM3",DiscountM3);
		  	session.setAttribute("ImageNameM3",ImageNameM3);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "203">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="Dress/m4.jpg" style="width:87%">
		  <h1>Tailored Jeans</h1>
		  <p class="price">Rs.1099.99</p>
		  <p class="price">Discount 40 %</p>
		  <p>Tamatina South Indian Actors Poster - Allu Arjun - HD Quality Wall Poster.Dimensions - 18 inches x 12 inches.</p>
		  <% 
		  	int ProductIDM4 = 203;
		  	Object ProductNameM4 = "RAWADI STYLE";
		  	int PriceM4 = 1099;
		  	int DiscountM4 = 25;
		  	Object ImageNameM4 = "Dress/m4.jpg";
		  	session.setAttribute("ProductIDM4",ProductIDM4);
		  	session.setAttribute("ProductNameM4",ProductNameM4);
		  	session.setAttribute("PriceM4",PriceM4);
		  	session.setAttribute("DiscountM4",DiscountM4);
		  	session.setAttribute("ImageNameM4",ImageNameM4);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "204">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
	</tr>
</table>

</body>
</html>