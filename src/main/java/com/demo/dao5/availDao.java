package com.demo.dao5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao2.mDao;

public class availDao {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int show (com.demo1.Avail A) {
		 
		int status =0;
	       
        Connection con =mDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into avail_tab tname_ct,screen_ct,cat_ct,cost_ct,tot_seats_ct) values(?,?,?,?,?)");
		
			
				ps.setString(1,A.getAvail_seats_ct());
				ps.setString(2,A.getTname_ct());
				ps.setString(3,A.getCat_ct());
				ps.setString(4,A.getCost_ct());
				ps.setString(5,A.getTot_seats_ct());

        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
	}



}
