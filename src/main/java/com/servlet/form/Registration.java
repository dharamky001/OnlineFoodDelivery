package com.servlet.form;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/RigistrationServlet")
public class Registration extends HttpServlet{

	Connection conn= null;
	String sql = "INSERT INTO registrationform(name,email,password,confirmPassword)values(?,?,?,?)";
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		String name = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String cpassword = req.getParameter("confirmPassword");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			pw.println(e.getMessage());
			e.printStackTrace();
		}
		
		String dbURL = "jdbc:mysql://localhost/fooddelivery";
		String username = "root";
		String passwords ="dharam";
		PreparedStatement ps;
		
		try {
			
			conn = DriverManager.getConnection(dbURL, username, passwords);
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, cpassword);
			int row = ps.executeUpdate();
			if(row > 0) {
				resp.setContentType("text/html");
				pw.print("<h3 style='color:green'>User registered successfully</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/home.jsp");
				rd.include(req, resp);
			}else
			{
				resp.setContentType("text/html");
				pw.print("<h3 style='color:red'>User not registered</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/Registration.jsp");
				rd.include(req, resp);
			}
		} catch (SQLException es) {
			// TODO Auto-generated catch block
			pw.println(es.getMessage());
			es.printStackTrace();
		}
		
		
		pw.close();
		
	}

}
