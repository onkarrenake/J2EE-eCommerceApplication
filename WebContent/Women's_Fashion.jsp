<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Women's Fashion</title>

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

<h1 style="text-align:center">Women's Fashion</h1>
<hr>
<a href = "Home.jsp"><button>Back</button></a>
<h2 style="text-align:center">Dress</h2>
<table align = "center">
	<tr>
		<td>
		<div class="card">
		  <img src="Dress/dress_1.jpg" style="width:100%">
		  <h1>Salvar</h1>
		  <p class="price">Rs. 14019.99</p>
		  <p class="price">Discount 40%</p>
		  <p>the sky is the limit! Every other day we spot a new style, a new silhouette, and a completely new design.</p>
		 <% 
		  	int ProductIDW1 = 301;
		  	Object ProductNameW1 = "Salvar";
		  	int PriceW1 = 14019;
		  	int DiscountW1 = 20;
		  	Object ImageNameW1 = "Dress/dress_1.jpg";
		  	session.setAttribute("ProductIDW1",ProductIDW1);
		  	session.setAttribute("ProductNameW1",ProductNameW1);
		  	session.setAttribute("PriceW1",PriceW1);
		  	session.setAttribute("DiscountW1",DiscountW1);
		  	session.setAttribute("ImageNameW1",ImageNameW1);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "301">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="Dress/dress_2.jpg" style="width:100%">
		  <h1>White Full Dress</h1>
		  <p class="price">Rs. 19000.99</p>
		  <p class="price">Discount 40%</p>
		  <p>The sky is the limit! Every other day we spot a new style, a new silhouette, and a completely new design.</p>
			<% 
		  	int ProductIDW2 = 302;
		  	Object ProductNameW2 = "Salvar";
		  	int PriceW2 =  19000;
		  	int DiscountW2 = 40;
		  	Object ImageNameW2 = "Dress/dress_2.jpg";
		  	session.setAttribute("ProductIDW2",ProductIDW2);
		  	session.setAttribute("ProductNameW2",ProductNameW2);
		  	session.setAttribute("PriceW2",PriceW2);
		  	session.setAttribute("DiscountW2",DiscountW2);
		  	session.setAttribute("ImageNameW2",ImageNameW2);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "302">Add to Cart</button>
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
		  <img src="Dress/dress_3.jpg" alt="Denim Jeans" style="width:90%">
		  <h1>Shadi Dress for Girls</h1>
		  <p class="price">Rs. 10019.99</p>
		  <p class="price">Discount 40%</p>
		  <p>The sky is the limit! Every other day we spot a new style, a new silhouette, and a completely new design.</p>
		  <% 
		  	int ProductIDW3 = 303;
		  	Object ProductNameW3 = "Shadi Dress for Girls";
		  	int PriceW3 = 10019;
		  	int DiscountW3 = 40;
		  	Object ImageNameW3 = "Dress/dress_3.jpg";
		  	session.setAttribute("ProductIDW3",ProductIDW3);
		  	session.setAttribute("ProductNameW3",ProductNameW3);
		  	session.setAttribute("PriceW3",PriceW3);
		  	session.setAttribute("DiscountW3",DiscountW3);
		  	session.setAttribute("ImageNameW3",ImageNameW3);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "303">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="Dress/dress_4.jpg" style="width:100%">
		  <h1>Red Indian Bridal Lehenga</h1>
		  <p class="price">Rs. 11099.99</p>
		  <p class="price">Discount 40%</p>
		  <p>The sky is the limit! Every other day we spot a new style, a new silhouette, and a completely new design.</p>
		  <% 
		  	int ProductIDW4 = 304;
		  	Object ProductNameW4 = "Red Indian Bridal Lehenga";
		  	int PriceW4 = 11099;
		  	int DiscountW4 = 40;
		  	Object ImageNameW4 = "Dress/dress_4.jpg";
		  	session.setAttribute("ProductIDW4",ProductIDW4);
		  	session.setAttribute("ProductNameW4",ProductNameW4);
		  	session.setAttribute("PriceW4",PriceW4);
		  	session.setAttribute("DiscountW4",DiscountW4);
		  	session.setAttribute("ImageNameW4",ImageNameW4);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "304">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
	</tr>
</table>

</body>
</html>