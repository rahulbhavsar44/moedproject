package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.logindata.StoreData;

public class StoreDataDao {

	String INSERT_USERS = "INSERT INTO users (fname, uname, mobileno, email, pass) VALUES (?, ?, ?, ?, ?);";
	
	String url = "jdbc:mysql://localhost:3306/moeddatabase";
	String username = "root";
	String password = "rdmsql09";

	public int registerUser(StoreData store) {
		int result=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(INSERT_USERS);
			st.setString(1, store.getFullname());
			st.setString(2, store.getUsername());
			st.setString(3, store.getMobile_no());
			st.setString(4, store.getEmail());
			st.setString(5, store.getPassword1());
			
			System.out.println(st);

			result = st.executeUpdate();
		
				
				
				
				
		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

		return result;
	}
	

}
