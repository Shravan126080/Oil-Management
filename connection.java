package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;


public class connection {
	public static Connection com;
	public static Connection getConnection()
	
	{
		{
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				com=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","123456");
				
				
			} catch (Exception e) {

			System.out.println("Exception"+e.getMessage());
			}
		}
		return com;
		
	}

}