package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Admin;
import com.util.AdminDBUtil;


@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("adminid");
		boolean isTrue;
		
		isTrue = AdminDBUtil.deleteAdmin(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/adminCreate.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Admin> adminDetails = AdminDBUtil.getAdmin(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/adminAccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
