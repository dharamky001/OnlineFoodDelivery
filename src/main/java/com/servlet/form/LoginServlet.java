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

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	Connection conn=null;
//	PreparedStatement preparedStatement;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			pw.println(e.getMessage());
			e.printStackTrace();
			
		}
		
		String dbURL = "jdbc:mysql://localhost/fooddelivery";
		String username = "root";
		String passwordd ="dharam";
		
		try {
			conn = DriverManager.getConnection(dbURL, username, passwordd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String mygmail = req.getParameter("Gmail");
		String password = req.getParameter("password");
		try {
			String query = "SELECT * FROM registrationform WHERE email=? and password=?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
           preparedStatement.setString(1,mygmail );
           preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
            	HttpSession session = req.getSession();
            	//String name = resultSet.getString("name");
                //session.setAttribute("name", name);
            	pw.print("<h3 style='color:green'>login success</h3>");
            	RequestDispatcher rd = req.getRequestDispatcher("/Index.jsp");
            	rd.include(req, resp); 
                 
            }else {
				pw.write("<h3 style='color:red'>Email id and password didn't match</h3>");
            	RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
            	rd.include(req, resp);
            }
		 
		} catch (SQLException es) {
			// TODO Auto-generated catch block
			es.printStackTrace();
		}

			
		
	}

}
