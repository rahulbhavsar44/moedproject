package com.login.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.logindata.CalculateUnits;



public class CalculateDao {

	
	
//String calc = "select * from calcdata where appliance_name =" + appliance_name +" and watt =" + 10;;
//where appliance_name = 'fan' and watt = 10 and no_of_appliance = 2 and "
//		+ "appliance_load = 1 and summer_hours=4 and winter_hours = 2 and monsoon_hours = 3;";
	
	String url = "jdbc:mysql://localhost:3306/moeddatabase";
	String username = "root";
	String password = "rdmsql09";
	
	
	CalculateUnits cus=new CalculateUnits();
	public CalculateUnits calculateUnit(String appliance_name) {
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			Statement st= con.createStatement();
			ResultSet result = st.executeQuery("select * from calcdata where appliance_name = '"  + appliance_name + "'" );
			
			
			if(result.next()) {
				cus.setAppliance_name(result.getString("appliance_name"));
				cus.setWatt(result.getInt("watt"));
				cus.setSummer_hours(result.getInt("summer_hours"));
			}
			
			
			System.out.println(st);
			
			

			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return cus;
	}
	
	
	public CalculateUnits.CalculateWatt calculateWatt(String appliance_name1) 
	{
		CalculateUnits.CalculateWatt cus_watt=cus.new CalculateWatt();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			Statement st1= con.createStatement();
			ResultSet result1 = st1.executeQuery("select * from appliance_watt where appliances = '"  + appliance_name1 + "'" );
			
			if(result1.next()) {
				cus_watt.setWatt(result1.getString("watt"));
			}
			
	}
		 catch (Exception e) {
				
				System.out.println(e);
			}
		return cus_watt;

}
}
