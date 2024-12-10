package com.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.formentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class updatetable
 */
@WebServlet("/updatetable")
public class updatetable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatetable() {
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
		String Name=request.getParameter("nm");
		String Product=request.getParameter("name");
		String Quantity=request.getParameter("qty");
		String Price=request.getParameter("prc");
		String Date=request.getParameter("dt");
		String Time=request.getParameter("tm");
		String Total=request.getParameter("tt");
		
		formentity d=new formentity();
		d.setId(id);
		d.setName(Name);
		d.setProduct(Product);
		d.setQuantity(Quantity);
		d.setPrice(Price);
		d.setDate(Date);
		d.setTime(Time);
		d.setTotal(Total);
		try {
			pro_modules p=new pro_modules(connection.getConnection());
			boolean b2=p.udateform(d);
			if(b2) {
				response.sendRedirect("tabledata.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		

	}

}