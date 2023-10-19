package com.servlet.form;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.jdbc.CallableStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	Connection conn=null;
//	PreparedStatement preparedStatement;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw = resp.getWriter();
		pw.println("hii");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			pw.println(e.getMessage());
			e.printStackTrace();
			
		}
		
		String dbURL = "jdbc:mysql://localhost/fooddelivery";
		String username = "root";
		String passwordd ="Dharam@3436";
		
		try {
			conn = DriverManager.getConnection(dbURL, username, passwordd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String gmail = req.getParameter("Gmail");
		String password = req.getParameter("password");
		System.out.println("hello0");
		try {
			String query = "SELECT * FROM registrationform WHERE email = "+gmail + "AND password = "+password;
            PreparedStatement preparedStatement = conn.prepareStatement(query);
//            preparedStatement.setString(1, );
//            preparedStatement.setString(2, "1234");
            ResultSet resultSet = preparedStatement.executeQuery();
           pw.println(gmail+password);
            while (resultSet.next()) {
                // Process the retrieved data
            	System.out.println("data foun");
            }
		 
		} catch (SQLException es) {
			// TODO Auto-generated catch block
			es.printStackTrace();
		}

			
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
