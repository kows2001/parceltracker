//package com.chainsys.parcelTracker.dao;
//
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//import com.chainsys.parcelTracker.pojo.Customer;
//
//public class Customerdao{
//	
//	private static Connection getConnection() {
//		String drivername = "oracle.jdbc.driver.OracleDriver";
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	    String username = "system";
//	    String password = "oracle";
//	    Connection con =null;
//	    try {
//	    	Class.forName(drivername);
//	    	con = DriverManager.getConnection(url,username, password);
//	      
//	    }catch (ClassNotFoundException e) {
//	    	 e.printStackTrace();
//	    } catch (SQLException e) {
//			e.printStackTrace();
//		}
//	    return con;
//	}
//	public static java.sql.Date convertToSqlDate(java.util.Date date){
//		java.sql.Date sdate = new java.sql.Date(date.getTime());
//		return sdate;
//	}
//	
//	public static int insertCustomer(Customer newcustomer) {
//		Connection con  = getConnection();
//		String insertquery = "insert into CUSTOMER(Customer_id,Name,Gender,Date_of_joining,Email,Password,Phone_number,City,State) values(?,?,?,?,?,?,?,?,?";
//				PreparedStatement state = null;
//				int row = 0;
//				try {
//					state = con.prepareStatement(insertquery);
//					state.setInt(1, newcustomer.getCustomer_id());
//					state.setString(2,newcustomer.getName());
//					state.setString(3, newcustomer.getGender());
//					state.setDate(4, convertToSqlDate(newcustomer.getDate_of_joining()));
//					state.setString(5, newcustomer.getEmail());
//					state.setString(6, newcustomer.getPassword());
//					state.setLong(7, newcustomer.getPhone_number());
//					state.setString(8, newcustomer.getCity());
//					state.setString(9, newcustomer.getState());
//					row = state.executeUpdate();
//				} catch (SQLException e) {
//					e.printStackTrace();
//				} finally {
//					try {
//						state.close();
//					} catch (SQLException e) {
//						e.printStackTrace();
//					}
//					try {
//						con.close();
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				}
//				return row;
//			}
//	}
//	
//
