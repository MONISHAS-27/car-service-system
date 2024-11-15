package com.qn.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qn.model.Car;



public class CarDetail extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String carmodel = request.getParameter("carmodel");
		String cartype = request.getParameter("cartype");
		String carnum = request.getParameter("carnum");
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("susername");
		Car c = new Car();
		c.setUsername(username);
		c.setCarmodel(carmodel);
		c.setCartype(cartype);
		c.setCarnum(carnum);
		
	
		int status = c.carDetails();
		if(status==0) {
			response.sendRedirect("/car-service-system/carDetailsFailure.jsp");
		}
		else {
			response.sendRedirect("/car-service-system/carDetailsSucccess.jsp");
		}
	}
}
