package com.garage.handler;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.garage.dao.UserDao;
import com.garage.bean.UserBean;

public class UserHandler extends HttpServlet {
	private static String INSERT = "/user.jsp";
	private static String Edit = "/edit.jsp";
	private static String UserRecord = "/listUser.jsp";
	private UserDao dao;

	public UserHandler() {
		super();
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String redirect = "";
		String uId = request.getParameter("id");
		String action = request.getParameter("action");
		if (!((uId) == null) && action.equalsIgnoreCase("insert")) {
			int id = Integer.parseInt(uId);
			UserBean user = new UserBean();
			user.setId(id);
			user.setVehicleType(request.getParameter("vehicleType"));
			user.setNumberplate(request.getParameter("numberplate"));
			user.setBrand(request.getParameter("brand"));
			user.setModel(request.getParameter("model"));
			user.setColor(request.getParameter("color"));
			user.setType(request.getParameter("type"));
			user.setManufacturingDate(request.getParameter("manufacturingDate"));
			user.setEngine(request.getParameter("engine"));
			user.setTransmission(request.getParameter("transmission"));
			user.setFuel(request.getParameter("fuel"));
			user.setMilage(request.getParameter("milage"));
			user.setDetails(request.getParameter("details"));
			dao.addUser(user);
			redirect = UserRecord;
			request.setAttribute("vehicles", dao.getAllUsers());
			System.out.println("Record Added Successfully");
		} else if (action.equalsIgnoreCase("delete")) {
			String userId = request.getParameter("userId");						// before userId
			int uid = Integer.parseInt(userId);
			dao.removeUser(uid);
			redirect = UserRecord;
			request.setAttribute("vehicles", dao.getAllUsers());
			System.out.println("Record Deleted Successfully");
		} else if (action.equalsIgnoreCase("editform")) {
			redirect = Edit;
		} else if (action.equalsIgnoreCase("edit")) {
			String userId = request.getParameter("id");							// before userId
			int uid = Integer.parseInt(userId);
			UserBean user = new UserBean();
			user.setId(uid);
			user.setVehicleType(request.getParameter("vehicleType"));
			user.setNumberplate(request.getParameter("numberplate"));
			user.setBrand(request.getParameter("brand"));
			user.setModel(request.getParameter("model"));
			user.setColor(request.getParameter("color"));
			user.setType(request.getParameter("type"));
			user.setManufacturingDate(request.getParameter("manufacturingDate"));
			user.setEngine(request.getParameter("engine"));
			user.setTransmission(request.getParameter("transmission"));
			user.setFuel(request.getParameter("fuel"));
			user.setMilage(request.getParameter("milage"));
			user.setDetails(request.getParameter("details"));
			dao.editUser(user);
			request.setAttribute("user", user);
			redirect = UserRecord;
			System.out.println("Record updated Successfully");
		} else if (action.equalsIgnoreCase("listUser")) {
			redirect = UserRecord;
			request.setAttribute("vehicles", dao.getAllUsers());
		} else {
			redirect = INSERT;
		}

		RequestDispatcher rd = request.getRequestDispatcher(redirect);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}