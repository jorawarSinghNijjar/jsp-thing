package com.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopping.model.User;

public class UserDao {
	private Connection connection;
	private PreparedStatement ps;
	private ResultSet rs;
	private String query;
	
	public UserDao(Connection connection) {
		this.connection = connection;
	}
	
	public User login(String email, String password) {
		User user = null;
		
		query = "SELECT * FROM users WHERE email=? AND password=?";
		
		try {
			ps = this.connection.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				user = new User();
				
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
}
