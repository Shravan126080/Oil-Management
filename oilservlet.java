package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.formentity;
import com.entity.oilentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class oilservlet
 */
@WebServlet("/oilservlet")
public class oilservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public oilservlet() {
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
	
	String name = request.getParameter("name");
	String quantity=request.getParameter("qty");
	System.out.println(quantity);
	String price=request.getParameter("prc");
	System.out.println(price);
	String date = request.getParameter("date");
	String total=request.getParameter("tt");
	System.out.println(total);
	
	oilentity  obj=new  oilentity();
	
	obj.setName(name);
	obj.setQuantity(quantity);
	obj.setPrice(price);

	obj.setDate(date);
	obj.setTotal(total);
	
	try {
		pro_modules p= new pro_modules(connection.getConnection());
			boolean b=p.insertoil(obj);
		if(b) {
			System.out.println("insert data ");
			response.sendRedirect("oiltable.jsp");


		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
}

}