package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.loginentity;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String Email=request.getParameter("Email");
		System.out.println("Email");
		String password=request.getParameter("password");
		System.out.println("password");
		
		String Email1="admin@123";
		String password1="123";
		if(Email.equals(Email1)&&password.equals(password1))
		{
			HttpSession  session=request.getSession();
			session.setAttribute("Email", Email1);
			System.out.println("Success");
			response.sendRedirect("Dashboard.jsp");
			
		}
		else {
			request.setAttribute("message","Invaild userId or Password");
			RequestDispatcher rd=request.getRequestDispatcher("loginpage.jsp");
			rd.forward(request, response);
					
		}
		
		
		
	}

}