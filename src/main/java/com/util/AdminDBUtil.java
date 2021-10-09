package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Admin;


public class AdminDBUtil {
	
	private static boolean success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnectAdmin.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				success = true;
			} else {
				success = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return success;
	}
	
	public static List<Admin> getAdmin(String userName) {
			
			ArrayList<Admin> admin = new ArrayList<>();
			
			try {
				
				con = DBConnectAdmin.getConnection();
				stmt = con.createStatement();
				String sql = "select * from admin where username='"+userName+"'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String username = rs.getString(5);
					String password = rs.getString(6);
					
					Admin cus = new Admin(id,name,email,phone,username,password);
					admin.add(cus);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return admin;	
	}
	
	public static boolean insertAdmin(String name, String email, String phone, String username, String password) {
	    	
	    	boolean success = false;
	    	
	    	try {
	    		con = DBConnectAdmin.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into admin values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			success = true;
	    		} else {
	    			success = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return success;
	    }
	
	public static boolean updateAdmin(String id, String name, String email, String phone, String username, String password) {
	    	
	    	try {
	    		
	    		con = DBConnectAdmin.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update admin set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			success = true;
	    		}
	    		else {
	    			success = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return success;
	    }
	
	public static List<Admin> getAdminDetails(String Id) {
	    	
	    	int newID = Integer.parseInt(Id);
	    	
	    	ArrayList<Admin> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnectAdmin.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from admin where id='"+newID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String email = rs.getString(3);
	    			String phone = rs.getString(4);
	    			String username = rs.getString(5);
	    			String password = rs.getString(6);
	    			
	    			Admin a = new Admin(id,name,email,phone,username,password);
	    			cus.add(a);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	
	public static boolean deleteAdmin(String id) {
	    	
	    	int newId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnectAdmin.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from admin where id='"+newId+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if (rs > 0) {
	    			success = true;
	    		}
	    		else {
	    			success = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return success;
	    }
}
