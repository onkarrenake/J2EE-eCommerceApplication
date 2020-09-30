package com.online_shopping_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;
	public static Statement stmnt;
    public SignupServlet() {
        super();
    }
    public void init(ServletConfig config){
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Shopping","root","Sadguru@123");
    		stmnt = con.createStatement();
    	}catch(Exception e){
    		System.out.println(e);
    	}
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Firstname = request.getParameter("Firstname");
		String Lastname = request.getParameter("Lastname");
		String Mobile_no = request.getParameter("Mobile_no");
		String Email_ID = request.getParameter("Email_ID");
		String Password = request.getParameter("Password");
		try {
			stmnt.executeUpdate("insert into Login_Signup values('"+Firstname+"','"+Lastname+"','"+Mobile_no+"','"+Email_ID+"','"+Password+"')");
		} catch (Exception e) {
			System.out.println(e);
		}
		RequestDispatcher RD1 = request.getRequestDispatcher("Home.jsp");
		RD1.include(request, response);
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Succesfully Created Account</h1>");
		out.println("Go to Login and Enjoy Shopping With Discount");
		out.println("<a href = 'LoginJSP.jsp'> Login </a>");
		out.println("</body>");
		out.println("</html>");	
	}
}
