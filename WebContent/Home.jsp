<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 14px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: left;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #e00909;
  color: black;
}

.topnav a.active {
  background-color: #e00909;
  color: white;
}

.topnav .search-container {
  float: left;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 20px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}

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

<!-- Navigation -->

<div style = "background-image:'Image/online_shopping.jpg'" class="topnav">
  <a class="active" href="Home.jsp"> Home </a> 
    <a href="Home.jsp">About</a>
  	<a href="#contact">Contact</a>
  
		<div class="dropdown">
	  		<button class="dropbtn">Categories</button>
	  		<div class="dropdown-content">
	   			<a href="Electronics.jsp">Electronics</a>
	    		<a href="Women's_Fashion.jsp">Women's Fashion</a>
	    		<a href="Men's_Fashion.jsp">Men's Fashion</a>
	 		</div>
		</div>
	   	<div  align = "center" class = "search-container">
		    <form action = "Search_item.jsp" method = "post">
		    	<input type="text" placeholder="Search.." name="search">
		    	<button type="submit"> @</button>
		    </form>
	    </div>
  	<a href="CartServlet"><i class='fas fa-cart-arrow-down' style='font-size:20px;color:red;margin-top: 0px;'></i>Cart</a>
	
  	<%
		if(session.getAttribute("username") != null){
			String user = (String)session.getAttribute("username");
			out.println("Welcome : " + user);
		}
		else{
			out.println("<a href='LoginJSP.jsp'>Login/Signup</a>");
		}
	%>
	<%
		if(session.getAttribute("username") != null){
			out.println("<a href='LogoutServlet'>Logout</a>");
		}
		else{
		}
	%>
	
<!-- Slide Show -->
	<section>
	  <img class="mySlides" src="Images/j4.jpg" style="width:100%">
	  <img class="mySlides" src="Images/j5.jpg" style="width:100%">
	</section>

	<!-- Band Description -->
	<section class="w3-container w3-center w3-content" style="max-width:200px">
	  <h2 align = "center" class="w3-wide">THE BAND</h2>
	  <p align = "center"  class="w3-opacity"><i>We love Shopping</i></p>
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
		  <img src="mobile/mobile_3.jpg" style="width:90%">;
		  <h1>Vivo V19</h1>
		  <p class="price">Rs.69999.99</p>
		  <p class="price">Discount 25% off</p>
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
	</section>

		<script>
		// Automatic Slideshow - change image every 3 seconds
		var myIndex = 0;
		carousel();
		
		function carousel() {
		    var i;
		    var x = document.getElementsByClassName("mySlides");
		    for (i = 0; i < x.length; i++) {
		       x[i].style.display = "none";
		    }
		    myIndex++;
		    if (myIndex > x.length) {myIndex = 1;}
		    x[myIndex-1].style.display = "block";
		    setTimeout(carousel, 3000);
		}
		</script>
</div>
</body>
</html>