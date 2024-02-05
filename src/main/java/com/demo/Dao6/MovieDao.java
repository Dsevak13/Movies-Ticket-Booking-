package com.demo.Dao6;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao1.userDao;

public class MovieDao {
	

	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int movie (com.demo1.movie m) {
		
		int status =0;
	       
        Connection con =MovieDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into movies_tab(tname,screen_ct,movie_ct,show_ct,time_ct,sdate_ct,edate_ct,pic_ct) values) values(?,?,?,?,?,,?,?,?,?)");
			
			ps.setString(1, m.getTname());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());
			ps.setString(2, m.getTscreen_ct());

			
			
			status = ps.executeUpdate();
        
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}


	
	
}

