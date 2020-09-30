package com.online_shopping_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static Connection con;
    private static Statement stmnt;
    public DeleteServlet() {
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
		String PID = (request.getParameter("PID"));
		String EmailID = request.getParameter("email");
		try {	//System.out.println(PID);
			stmnt.executeUpdate("DELETE FROM product WHERE EmailID = '"+EmailID+"' and ProductID = '"+PID+"'");
		} catch (Exception e) {
			System.out.println(e);
		}
		RequestDispatcher rd = request.getRequestDispatcher("Add_Product");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
