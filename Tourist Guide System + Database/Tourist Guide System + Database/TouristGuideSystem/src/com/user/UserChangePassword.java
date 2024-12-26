package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.algorithm.AES;
import com.connection.DatabaseConnection;

@WebServlet("/UserChangePassword")
public class UserChangePassword extends HttpServlet {
	final String secretKey = "%@ajdhdklddf";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpassword = request.getParameter("cpassword");
		String encryptCurrentPassword=AES.encrypt(cpassword, secretKey);
		String password = request.getParameter("password");
		String confpass = request.getParameter("confpass");
		String pass = "";
		HttpSession session = request.getSession();
		try {
			Connection con = DatabaseConnection.getConnection();
			Statement statement = con.createStatement();
			ResultSet resultset = statement.executeQuery("select upass from tbluser where upass='" + encryptCurrentPassword+ "' and uname='" + session.getAttribute("uname") + "'");
			if (resultset.next()) {
				pass = resultset.getString(1);
			}
			if (password.equals(confpass)) {
				if (pass.equals(encryptCurrentPassword)) {
					String encryptNewPassword=AES.encrypt(password,secretKey);
					int i = statement.executeUpdate("update tbluser set upass='" + encryptNewPassword + "' where uname='" + session.getAttribute("uname") + "' ");
					response.sendRedirect("user-change-password.jsp");
				} else {
					response.sendRedirect("user-change-password.jsp");
				}
			} else {
				response.sendRedirect("user-change-password.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
