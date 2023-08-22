package com.mvcjsp.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvcjsp.connection.DbConnection;
import com.mvcjsp.dao.UserDao;
import com.mvcjsp.pojo.User;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean addNewUser(User user) {
		try (Connection con = DbConnection.getDatabaseConnection()){
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO"
					+ " user VALUES(?,?,?,?,?,?,?,?)");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getName());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getContact_no());
			pst.setString(6, user.getAddress());
			pst.setString(7, user.getCity());
			pst.setString(8, user.getMembership());
			
			int count = pst.executeUpdate();
			
			if(count > 0)
				return true;
			else
				return false;
			
		} catch (NullPointerException e) {
			System.out.println("connection with database is not"
					+ " available");
			return false;
		}
		catch(SQLException exc) {
			exc.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkUserCredentials(User user) {
		try (Connection con = DbConnection.getDatabaseConnection()){
			
			PreparedStatement pst = con.prepareStatement("SELECT * FROM"
					+ " user WHERE username = ? AND userpass = ?");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst())
				return true;
			else
				return false;
			
		} catch (NullPointerException e) {
			System.out.println("connection with database is not"
					+ " available");
			return false;
		}
		catch(SQLException exc) {
			exc.printStackTrace();
			return false;
		}
	}
}
