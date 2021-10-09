package com.controller;

import static java.lang.System.out;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.AdminDBUtil;

@WebServlet("/AdminCreateServlet")
public class AdminCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean result;
		
		result = AdminDBUtil.insertAdmin(name, email, phone, username, password);
		
		if(result == true) {
			RequestDispatcher dis = request.getRequestDispatcher("jsp/createAdminSuccess.jsp");
			dis.forward(request, response);
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("jsp/createAdminUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
