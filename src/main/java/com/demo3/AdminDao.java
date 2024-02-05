package com.demo3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao1.userDao;

public class AdminDao {

	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int Admin (com.demo1.Admin A) {
		
		int status =0;
	       
        Connection con =userDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into Admin name,password) values(?,?)");
			 
			ps.setString(1, A.getName());
			ps.setString(2, A.getPassword());
          
           status = ps.executeUpdate();
        
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}


	
	
}
