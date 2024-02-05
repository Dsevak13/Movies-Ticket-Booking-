package com.demo.Dao1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class userDao {

	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int UserRegister (com.demo1.UserRegister u) {
		
		int status =0;
	       
        Connection con =userDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into userl (first_name,last_name,address,tele,email,password) values(?,?,?,?,?,?,)");
		
           ps.setString(1, u.getFirst_name());
           ps.setString(2, u.getLast_name());
           ps.setString(3, u.getAddress());
           ps.setString(4, u.getTele());
           ps.setString(5, u.getEmail());
           ps.setString(6, u.getPassword());

          
           status = ps.executeUpdate();
        
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}

}
