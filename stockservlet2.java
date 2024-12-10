package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.formentity;
import com.entity.oilentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class stockservlet2
 */
@WebServlet("/stockservlet2")
public class stockservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stockservlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param resp 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int   id2=Integer.parseInt(request.getParameter("id2"));
		System.out.println(id2);
		try {
			pro_modules p=new pro_modules(connection.getConnection());
			oilentity z=p.check2(id2);
			resp.getWriter().println(z.getQuantity());
			System.out.println(resp);
		} catch ( Exception e) {


			e.printStackTrace();
		}
		}

		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}