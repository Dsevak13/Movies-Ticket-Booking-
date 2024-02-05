package com.demo.dao3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao2.mDao;

public class newtDao {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int Theater (com.demo1.Theater t) {
		 
		int status =0;
	       
        Connection con =mDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into newt name,email,contact,type,city,address,loc,screens) values(?,?,?,?,?,?,?,?)");
		
			
				ps.setString(1, t.getName());
				ps.setString(2, t.getEmail());
				ps.setString(3, t.getContact());
				ps.setString(4, t.getType());
				ps.setString(5, t.getCity());
				ps.setString(6, t.getAddress());
				ps.setString(7, t.getLoc());
				ps.setString(8, t.getScreens());

        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}


}
