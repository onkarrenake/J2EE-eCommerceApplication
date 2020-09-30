package com.online_shopping_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Add_Product")
public class Add_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static Connection con;
    private static Statement stmnt;
    private static ResultSet result;
    public Add_Product() {
        super();
    }
    
    public void init(ServletConfig config){
    	
    		try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Shopping","root","Sadguru@123");
				stmnt = con.createStatement();
				//stmnt = con.createStatement();
    		} catch (Exception e) {
				System.out.println(e);
			}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			if(LoginServlet.LoginID == 1){
			try {
				PrintWriter out1 = response.getWriter();
				HttpSession session = request.getSession(false);
				String user = (String)session.getAttribute("username");
				result = stmnt.executeQuery("select * from product where EmailID = '"+user+"'");
				
				out1.println("<style>html {background: url(Images/s1.jpg) no-repeat center center fixed;-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;background-size: cover;}</style>");
				out1.println("<html>");
				out1.println("<body>");
				out1.println("<div style='background-image: url('Images/j6.jpg');'>");
				out1.println("<h1 align = 'center' style = 'color:pink'>Product information </h1>");
				out1.println("<hr>");
				out1.println(user);
				out1.println("<table border  = 1  align = 'center'>");
				out1.println("<tr>");
				out1.println("<th>");
				out1.println("EmailID");
				out1.println("</th>");
				
				out1.println("<th>");
				out1.println("ProductID");
				out1.println("</th>");
				
				out1.println("<th>");
				out1.println("ProductName");
				out1.println("</th>");
				
				out1.println("<th>");
				out1.println("Price");
				out1.println("</th>");
				
				out1.println("<th>");
				out1.println("Discount");
				out1.println("</th>");
				
				out1.println("<th>");
				out1.println("Delete");
				out1.println("</th>");
				
				out1.println("</tr>");
				
				while(result.next()){

					out1.println("<tr>");
					out1.println("<th>");
					out1.println(result.getString(1));
					out1.println("</th>");
					
					out1.println("<th>");
					out1.println(result.getString(2));
					out1.println("</th>");
					
					out1.println("<th>");
					out1.println(result.getString(3));
					out1.println("</th>");
					
					out1.println("<th>");
					out1.println(result.getString(4));
					out1.println("</th>");
					
					out1.println("<th>");
					out1.println(result.getString(5));
					out1.println("</th>");
					
					out1.println("<th>");
					out1.println("<a href = 'DeleteServlet?email="+result.getString(1)+"&PID="+result.getString(2)+"'>Delete Item</a>");
					out1.println("</th>");
					
					out1.println("</tr>");
				}
				out1.println("</table>");
			   	out1.println("<button><a href = 'Home.jsp'>Home</a></button>");
				out1.println("</div>");
			   	out1.println("</html>");
				out1.println("</body>");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
