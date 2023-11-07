package com.shopping.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection connection = null;
	
	static {
	    try { Class.forName("com.mysql.cj.jdbc.Driver"); }
	    catch(ClassNotFoundException ex) {
	    System.err.println("Driver not found: " + ex.getMessage());
	    }
	};
	
	public static Connection getConnection() throws SQLException {
		if(connection != null) return connection;
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart", "root", "password");
		System.out.println("Connected to mysql");
		return connection;
	}
}
