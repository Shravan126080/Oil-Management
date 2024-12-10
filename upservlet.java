package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.oilentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class upservlet
 */
@WebServlet("/upservlet")
public class upservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upservlet() {
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
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		String quantity=request.getParameter("qty");
		String price=request.getParameter("prc");
		String total=request.getParameter("tt");

		oilentity d=new oilentity();
		d.setId(id);
		d.setQuantity(quantity);
		d.setPrice(price);
		d.setTotal(total);
		try {
			pro_modules p=new pro_modules(connection.getConnection());
			boolean b2=p.udateoil(d);
			if(b2) {
				response.sendRedirect("oiltable.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		

	}
	

}