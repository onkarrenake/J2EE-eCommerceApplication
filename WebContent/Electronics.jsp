<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Electronics</title>

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

<h1 style="text-align:center">Electronics Product</h1>
<hr>
<a href = "Home.jsp"><button>Back</button></a>
<h2 style="text-align:center">Mobiles</h2>
<table align = "center">
	<tr>
		<td>
		<div class="card">
		  <img src="mobile/mobile_1.jpg" style="width:88%">
		  <h1>Mobile Mate-1</h1>
		  <p class="price">Rs. 71055.99</p>
		  <p class="price">Discount 20% off</p>
		  <p>Dual Sim,HD Display, Volte, Android, 4G Smartphone (Gold) (Reliance Jio 4G Sim Support).</p>
		  <% 
		  	int ProductID1 = 101;
		  	Object ProductName1 = "Mobile Mate-1";
		  	int Price1 = 71055;
		  	int Discount1 = 20;
		  	Object ImageName1 = "mobile/mobile_1.jpg";
		  	//Object ImageName1 = "<tr><td><a href='Payment.jsp'><img src = 'mobile/mobile_1.jpg' style='width:88%'></a></td></tr>";
		  	session.setAttribute("ProductID1",ProductID1);
		  	session.setAttribute("ProductName1",ProductName1);
		  	session.setAttribute("Price1",Price1);
		  	session.setAttribute("Discount1",Discount1);
		  	session.setAttribute("ImageName1",ImageName1);
		  	//out.println("<a href = 'CartServlet'><button name = '101'>Add to Cart</button></a>");
		  %>
		  	<form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "101">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="mobile/mobile_2.jpg" style="width:88%">
		  <h1>XiuFen Mate30 Pro</h1>
		  <p class="price">Rs.71090.99</p>
		  <p class="price">Discount 25% off</p>
		  <p>Android 9.1 new interactive design makes operation simple and convenient.Supports facial recognition.</p>
		  <% 
		  	int ProductID2 = 102;
		  	Object ProductName2 = "XiuFen Mate30 Pro";
		  	int Price2 = 50055;
		  	int Discount2 = 20;
		  	Object ImageName2 = "mobile/mobile_2.jpg";
		  	session.setAttribute("ProductID2",ProductID2);
		  	session.setAttribute("ProductName2",ProductName2);
		  	session.setAttribute("Price2",Price2);
		  	session.setAttribute("Discount2",Discount2);
		  	session.setAttribute("ImageName2",ImageName2);
		  	//out.println("<a href = 'CartServlet'><button name = '102'>Add to Cart</button></a>");
		  %>
		  <form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "102">Add to Cart</button>
		  </form>
		  <a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="mobile/mobile_3.jpg" style="width:85%">
		  <h1>Vivo V19</h1>
		  <p class="price">Rs.69999.99</p>
		  <p>(Mystic Silver, 8GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers.</p>
		<% 
		  	int ProductID3 = 103;
		  	Object ProductName3 = "Vivo V19";
		  	int Price3 = 71055;
		  	int Discount3 = 20;
		  	Object ImageName3 = "mobile/mobile_3.jpg";
		  	session.setAttribute("ProductID3",ProductID3);
		  	session.setAttribute("ProductName3",ProductName3);
		  	session.setAttribute("Price3",Price3);
		  	session.setAttribute("Discount3",Discount3);
		  	session.setAttribute("ImageName3",ImageName3);
		  	//out.println("<a href = 'CartServlet'><button>Add to Cart</button></a>");
		  %>
		  <form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "103">Add to Cart</button>
		  </form>
		  <a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
	</tr>
</table>
<!-- Electronics Gadgets -->

<h2 style="text-align:center">Electronics Gadgets</h2>
<table align = "center">
	<tr>
		<td>
		<div class="card">
		  <img src="electronics/E1.jpg" style="width:64%">
		  <h1>LED TV MAX PRO</h1>
		  <p class="price">Rs. 50190.99</p>
		  <p>With an experience of over 22 years, CARE is one of the leading manufacturers of LED TV in the country..</p>
		  <% 
		  	int ProductID4 = 104;
		  	Object ProductName4 = "LED TV MAX PRO";
		  	int Price4 = 71055;
		  	int Discount4 = 20;
		  	Object ImageName4 = "electronics/E1.jpg";
		  	session.setAttribute("ProductID4",ProductID4);
		  	session.setAttribute("ProductName4",ProductName4);
		  	session.setAttribute("Price4",Price4);
		  	session.setAttribute("Discount4",Discount4);
		  	session.setAttribute("ImageName4",ImageName4);
		  	//out.println("<a href = 'CartServlet'><button>Add to Cart</button></a>");
		  %>
		  <form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "104">Add to Cart</button>
		  </form>
		  <a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="electronics/E2.jpg" style="width:100%">
		  <h1>LG 32'' Full HD TV</h1>
		  <p class="price">Rs. 71191.99</p>
		  <p>Picture Wizard II (Easy Picture Calibration) *Simplink Smart *Energy Saving *Invisible Speaker System.</p>
		  <% 
		  	int ProductID5 = 105;
		  	Object ProductName5 = "LG 32'' Full HD TV";
		  	int Price5 = 71055;
		  	int Discount5 = 20;
		  	Object ImageName5 = "electronics/E2.jpg";
		  	session.setAttribute("ProductID5",ProductID5);
		  	session.setAttribute("ProductName5",ProductName5);
		  	session.setAttribute("Price5",Price5);
		  	session.setAttribute("Discount5",Discount2);
		  	session.setAttribute("ImageName5",ImageName5);
		  	//out.println("<a href = 'CartServlet'><button>Add to Cart</button></a>");
		  %>
		  <form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "105">Add to Cart</button>
		  	</form>
		  	<a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
		<td>
		<div class="card">
		  <img src="electronics/E3.jpg" style="width:75%">
		  <h1>Foldable HD 720p</h1>
		  <p class="price">Rs. 47059.99</p>
		  <p>Clear,crisp and smooth HD videos in which you remain in sharp focus,whether you're near or far from webcam.</p>
		  <% 
		  	int ProductID6 = 106;
		  	Object ProductName6 = "Foldable HD 720p";
		  	int Price6 = 71055;
		  	int Discount6 = 20;
		  	Object ImageName6 = "electronics/E3.jpg";
		  	session.setAttribute("ProductID6",ProductID6);
		  	session.setAttribute("ProductName6",ProductName6);
		  	session.setAttribute("Price6",Price6);
		  	session.setAttribute("Discount6",Discount6);
		  	session.setAttribute("ImageName6",ImageName6);
		  	//out.println("<a href = 'CartServlet'><button>Add to Cart</button></a>");
		  %>
		  <form  action="CartServlet" method="get">
		  		<button name = "ProductID1" value = "106">Add to Cart</button>
		  </form>
		  <a href = "Payment.jsp"><button>Buy_now</button></a>
		</div>
		</td>
	</tr>
</table>

</body>
</html>