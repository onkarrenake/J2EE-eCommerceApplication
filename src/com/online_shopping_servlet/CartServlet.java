package com.online_shopping_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletConfig;
import java.sql.*;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;
	public static Statement stmnt;

    public CartServlet() {
        super();
    }
    public void init(ServletConfig config){
    	try {
    		Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Shopping","root","Sadguru@123");
			stmnt = con.createStatement();
    	} catch (Exception e) {
			System.out.println(e);
		}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		//session.invalidate();
		if(session != null){
			String user = (String)session.getAttribute("username");
			if(LoginServlet.LoginID == 1){
				out.println("<html>");
				out.println("<body>");//alert("Hello! I am an alert box!!");
				//out.println("<a href = 'Add_Product' ><h1>See added products</h1></a>");
				out.println("<body onload='myFunction()'>");
				//out.println("alert('successfully added your product')" + user);
				out.println("</body>");
				out.println("<script>function myFunction() {alert('Hello! successfully added your product');window.open('Add_Product');}</script>");
				out.println("</html>");
				int ProductID = Integer.parseInt(request.getParameter("ProductID1"));
				out.println(ProductID);
				
						if(ProductID == 101){
							System.out.println("first");
							Object ProductName = session.getAttribute("ProductName1");
							int Price = (Integer) session.getAttribute("Price1");
							int Discount = (Integer) session.getAttribute("Discount1");
							Object ImageName = session.getAttribute("ImageName1");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 102){
							System.out.println("second");
							Object ProductName = session.getAttribute("ProductName2");
							int Price = (Integer) session.getAttribute("Price2");
							int Discount = (Integer) session.getAttribute("Discount2");
							Object ImageName = session.getAttribute("ImageName2");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 103){
							System.out.println("third");
							Object ProductName = session.getAttribute("ProductName3");
							int Price = (Integer) session.getAttribute("Price3");
							int Discount = (Integer) session.getAttribute("Discount3");
							Object ImageName = session.getAttribute("ImageName3");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 104){
							System.out.println("foru");
							Object ProductName = session.getAttribute("ProductName4");
							int Price = (Integer) session.getAttribute("Price4");
							int Discount = (Integer) session.getAttribute("Discount4");
							Object ImageName = session.getAttribute("ImageName4");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 105){
							System.out.println("five");
							Object ProductName = session.getAttribute("ProductName5");
							int Price = (Integer) session.getAttribute("Price5");
							int Discount = (Integer) session.getAttribute("Discount5");
							Object ImageName = session.getAttribute("ImageName5");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 106){
							System.out.println("six");
							Object ProductName = session.getAttribute("ProductName6");
							int Price = (Integer) session.getAttribute("Price6");
							int Discount = (Integer) session.getAttribute("Discount6");
							Object ImageName = session.getAttribute("ImageName6");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 201){
							System.out.println("M1");
							Object ProductName = session.getAttribute("ProductNameM1");
							int Price = (Integer) session.getAttribute("PriceM1");
							int Discount = (Integer) session.getAttribute("DiscountM1");
							Object ImageName = session.getAttribute("ImageNameM1");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 202){
							System.out.println("M2");
							Object ProductName = session.getAttribute("ProductNameM2");
							int Price = (Integer) session.getAttribute("PriceM2");
							int Discount = (Integer) session.getAttribute("DiscountM2");
							Object ImageName = session.getAttribute("ImageNameM2");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 203){
							System.out.println("M3");
							Object ProductName = session.getAttribute("ProductNameM3");
							int Price = (Integer) session.getAttribute("PriceM3");
							int Discount = (Integer) session.getAttribute("DiscountM3");
							Object ImageName = session.getAttribute("ImageNameM3");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 204){
							System.out.println("M4");
							Object ProductName = session.getAttribute("ProductNameM4");
							int Price = (Integer) session.getAttribute("PriceM4");
							int Discount = (Integer) session.getAttribute("DiscountM4");
							Object ImageName = session.getAttribute("ImageNameM4");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 301){
							System.out.println("W1");
							Object ProductName = session.getAttribute("ProductNameW1");
							int Price = (Integer) session.getAttribute("PriceW1");
							int Discount = (Integer) session.getAttribute("DiscountW1");
							Object ImageName = session.getAttribute("ImageNameW1");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 302){
							System.out.println("W2");
							Object ProductName = session.getAttribute("ProductNameW2");
							int Price = (Integer) session.getAttribute("PriceW2");
							int Discount = (Integer) session.getAttribute("DiscountW2");
							Object ImageName = session.getAttribute("ImageNameW2");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 303){
							System.out.println("W3");
							Object ProductName = session.getAttribute("ProductNameW3");
							int Price = (Integer) session.getAttribute("PriceW3");
							int Discount = (Integer) session.getAttribute("DiscountW3");
							Object ImageName = session.getAttribute("ImageNameW3");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
						if(ProductID == 304){
							System.out.println("W4");
							Object ProductName = session.getAttribute("ProductNameW4");
							int Price = (Integer) session.getAttribute("PriceW4");
							int Discount = (Integer) session.getAttribute("DiscountW4");
							Object ImageName = session.getAttribute("ImageNameW4");
							try {
							stmnt.executeUpdate("insert into product values('"+user+"','"+ProductID+"','"+ProductName+"','"+Price+"','"+Discount+"','"+ImageName+"')");
							} catch (Exception e) {
								System.out.println(e);
							}
						}
			}
			else{
				RequestDispatcher RD = request.getRequestDispatcher("LoginJSP.jsp");
				RD.include(request, response);
			}	
		}else{
			RequestDispatcher RD = request.getRequestDispatcher("LoginJSP.jsp");
			RD.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
