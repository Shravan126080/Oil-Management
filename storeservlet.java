package com.controller;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.formentity;
import com.modules.pro_modules;

/**
 * Servlet implementation class storeservlet
 */
@WebServlet("/storeservlet")
public class storeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public storeservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param res 
	 * @param resp 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	    int id = Integer.parseInt(request.getParameter("id"));
	 
	System.out.println(id);
	try {
		pro_modules p=new pro_modules(connection.getConnection());
		formentity z=p.checkpro(id);
		resp.getWriter().println(z.getPrice());
		System.out.println(resp);
	} catch ( Exception e) {


		e.printStackTrace();
	}
	}

	
	}