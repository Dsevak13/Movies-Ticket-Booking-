package com.demo.dao4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao2.mDao;

public class showDao {
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int show (com.demo1.show s) {
		 
		int status =0;
	       
        Connection con =mDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into newshow name,screen,time,shows) values(?,?,?,?,)");
		
			
				ps.setString(1, s.getName());
				ps.setString(2, s.getScreen());
				ps.setString(3, s.getTime());
				ps.setString(4, s.getShow());
				
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
	}

}
