package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.formentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class formservlet
 */
@WebServlet("/formservlet")
public class formservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formservlet() {
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
		String  name=request.getParameter("nm");
		System.out.println(name);
		String Product=request.getParameter("name");
		System.out.println(Product);
		String Quantity=request.getParameter("qty");
		System.out.println(Quantity);
		String Price=request.getParameter("prc");
		System.out.println(Price);
		String Date=request.getParameter("dt");
		System.out.println(Date);
		String Time=request.getParameter("tm");
		System.out.println(Time);
		String Total=request.getParameter("tt");
		System.out.println(Total);
		
		formentity  obj=new  formentity();
		obj.setName(name);
		obj.setProduct(Product);
		obj.setQuantity(Quantity);
		obj.setPrice(Price);
		obj.setDate(Date);
		obj.setTime(Time);
		obj.setTotal(Total);
		
		try {
			pro_modules p= new pro_modules(connection.getConnection());
 			boolean b=p.insert(obj);
			if(b) {
				System.out.println("insert data ");
				response.sendRedirect("tabledata.jsp");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}


	}

