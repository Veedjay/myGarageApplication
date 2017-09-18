package com.garage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.garage.bean.UserBean;
import com.garage.dbconnection.ConnectionProvider;

public class UserDao {

	private Connection conn;

	public UserDao() {
		conn = ConnectionProvider.getConnection();
	}

	public void addUser(UserBean userBean) {
		try {
			String sql = "INSERT INTO vehicles (id, vehicleType, numberplate, brand, model, color, type, manufacturingDate, engine, transmission, fuel, milage, details)" + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, userBean.getId());
			ps.setString(2, userBean.getVehicleType());
			ps.setString(3, userBean.getNumberplate());
			ps.setString(4, userBean.getBrand());
			ps.setString(5, userBean.getModel());
			ps.setString(6, userBean.getColor());
			ps.setString(7, userBean.getType());
			ps.setString(8, userBean.getManufacturingDate());
			ps.setString(9, userBean.getEngine());
			ps.setString(10, userBean.getTransmission());
			ps.setString(11, userBean.getFuel());
			ps.setString(12, userBean.getMilage());
			ps.setString(13, userBean.getDetails());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void removeUser(int userId) {
		try {
			String sql = "DELETE FROM vehicles WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void editUser(UserBean userBean) {
		try {
			String sql = "UPDATE vehicles SET vehicleType=?, numberplate=?, brand=?, model=?, color=?, type=?, manufacturingDate=?, engine=?, transmission=?, fuel=?, milage=?, details=?" + " WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userBean.getVehicleType());
			ps.setString(2, userBean.getNumberplate());
			ps.setString(3, userBean.getBrand());
			ps.setString(4, userBean.getModel());
			ps.setString(5, userBean.getColor());
			ps.setString(6, userBean.getType());
			ps.setString(7, userBean.getManufacturingDate());
			ps.setString(8, userBean.getEngine());
			ps.setString(9, userBean.getTransmission());
			ps.setString(10, userBean.getFuel());
			ps.setString(11, userBean.getMilage());
			ps.setString(12, userBean.getDetails());
			ps.setInt(13, userBean.getId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List getAllUsers() {
		List users = new ArrayList();
		try {
			String sql = "SELECT * FROM vehicles";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UserBean userBean = new UserBean();
				userBean.setId(rs.getInt("id"));
				userBean.setVehicleType(rs.getString("vehicleType"));
				userBean.setNumberplate(rs.getString("numberplate"));
				userBean.setBrand(rs.getString("brand"));
				userBean.setModel(rs.getString("model"));
				userBean.setColor(rs.getString("color"));
				userBean.setType(rs.getString("type"));
				userBean.setManufacturingDate(rs.getString("manufacturingDate"));
				userBean.setEngine(rs.getString("engine"));
				userBean.setTransmission(rs.getString("transmission"));
				userBean.setFuel(rs.getString("fuel"));
				userBean.setMilage(rs.getString("milage"));
				userBean.setDetails(rs.getString("details"));
				users.add(userBean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public UserBean getUserById(int userId) {
		UserBean userBean = new UserBean();
		try {
			String sql = "SELECT * FROM vehicles WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				userBean.setId(rs.getInt("id"));
				userBean.setVehicleType(rs.getString("vehicleType"));
				userBean.setNumberplate(rs.getString("numberplate"));
				userBean.setBrand(rs.getString("brand"));
				userBean.setModel(rs.getString("model"));
				userBean.setColor(rs.getString("color"));
				userBean.setType(rs.getString("type"));
				userBean.setManufacturingDate(rs.getString("manufacturingDate"));
				userBean.setEngine(rs.getString("engine"));
				userBean.setTransmission(rs.getString("transmission"));
				userBean.setFuel(rs.getString("fuel"));
				userBean.setMilage(rs.getString("milage"));
				userBean.setDetails(rs.getString("details"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userBean;
	}
}