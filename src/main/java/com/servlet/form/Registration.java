package com.servlet.form;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
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
		String passwords ="Dharam@3436";
		PreparedStatement preparedstatement;
		
		try {
			
			conn = DriverManager.getConnection(dbURL, username, passwords);
			preparedstatement = conn.prepareStatement(sql);
			preparedstatement.setString(1, name);
			preparedstatement.setString(2, email);
			preparedstatement.setString(3, password);
			preparedstatement.setString(4, cpassword);
			int row = preparedstatement.executeUpdate();
			if(row == 0) {
				pw.println("record not store into datase");
			}else
			{
				pw.println("record store into datase");
			}
		} catch (SQLException es) {
			// TODO Auto-generated catch block
			pw.println(es.getMessage());
			es.printStackTrace();
		}
		
		
		pw.close();
		
	}

}
