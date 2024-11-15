package com.qn.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Car {
	private String username;
	private String carmodel;
	private String cartype;
	private String carnum;
	private String serviceRequest;
	private String serviceStatus;
    Connection con;
	public Car(String username, String carmodel, String cartype, String carnum, String serviceRequest,
			String serviceStatus) {
		super();
		this.username = username;
		this.carmodel = carmodel;
		this.cartype = cartype;
		this.carnum = carnum;
		this.serviceRequest = serviceRequest;
		this.serviceStatus = serviceStatus;
	}
	public Car() {
		super();
	}
	{
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_service_system_june", "root", "Root");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCarmodel() {
		return carmodel;
	}
	public void setCarmodel(String carmodel) {
		this.carmodel = carmodel;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getServiceRequest() {
		return serviceRequest;
	}
	public void setServiceRequest(String serviceRequest) {
		this.serviceRequest = serviceRequest;
	}
	public String getServiceStatus() {
		return serviceStatus;
	}
	public void setServiceStatus(String serviceStatus) {
		this.serviceStatus = serviceStatus;
	}
	
	public int carDetails() {
		try {
			String s = "insert into car values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, username);
			pstmt.setString(2, carmodel);
			pstmt.setString(3, cartype);
			pstmt.setString(4, carnum);
			pstmt.setString(5, "NA");
			pstmt.setString(6, "NA");
			
			int rows = pstmt.executeUpdate();
			return rows;
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return 0;
	}
	
	public int serviceRequest() {
		try {
			String s = "update car set service_request=?, service_status=? where username=? and car_registration_number=?";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, serviceRequest);
			pstmt.setString(2, "Pending");
			pstmt.setString(3, username);
			pstmt.setString(4, carnum);
			int rows = pstmt.executeUpdate();
			return rows;
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return 0;
		
	}
	public String serviceStatus() {
		try {
			String s = "select * from car where car_registration_number=? and username=?";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, carnum);
			pstmt.setString(2, username);
			ResultSet res = pstmt.executeQuery();
			if(res.next()) {
				serviceStatus= res.getString(6);
				return serviceStatus;
			}
		}
		catch(Exception e ) {
			e.printStackTrace();
			return null;
		}
		return null;
	}
	
}
