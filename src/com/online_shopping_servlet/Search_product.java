package com.online_shopping_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Search_product")
public class Search_product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con;
	private static Statement stmnt;
    public Search_product() {
        super();
     }
    public void init(ServletConfig config)
    {
    	try{
        	Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Shopping","root","Sadguru@123");
        	System.out.println(con);
        	stmnt = con.createStatement();
        }catch(Exception e){
        	System.out.println(e);
        }
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Product_type = request.getParameter("search");
        PrintWriter out = response.getWriter();
		try {
			ResultSet result = stmnt.executeQuery("Select * from product where Product='"+Product_type+"'");
	       if(result.next())
	       {
	    	//System.out.println("true");
			RequestDispatcher rd1 = request.getRequestDispatcher("Search_item.jsp");
			rd1.forward(request, response);
	       }
	       else{
	        
			out.println("<html>");
			out.println("<body align='center'>");
			out.println("<br>");
			out.println("<h1>Product is not Available</h1>");
			out.println("<body>");
			out.println("</html>");
		}
		} catch (Exception e) {
			System.out.println(e);
		}
		

	}
	

}
