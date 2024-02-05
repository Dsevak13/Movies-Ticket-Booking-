
package com.demo.dao7;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao1.userDao;

public class Subscribe_Dao {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int Subscribetable (com.demo1.Subscribetable st) {
		
		int status =0;
	       
        Connection con =Subscribe_Dao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into subscribe_tab name_ct,email_ct values(?,?)");
			 
			ps.setString(1, st.getEmail_ct());
			ps.setString(2, st.getName_ct());
          
           status = ps.executeUpdate();
        
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;

}


}
