package com.demo8;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.Dao6.MovieDao;

public class TicketDao {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int ticket_tab (com.demo1.ticket_tab t) {
		
		int status =0;
	       
        Connection con =MovieDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into ticket_tab(tid_ct,tname_ct,screen_ct,movie_ct,show_ct,time_ct,cat_ct,cost_ct,tcost_ct,name_ct,email_ct,ticketid_ct;) values) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, t.getTid_ct());
			ps.setString(2, t.getTname_ct());
			ps.setString(3, t.getScreen_ct());
			ps.setString(4, t.getMovie_ct());
			ps.setString(5, t.getShow_ct());
			ps.setString(6, t.getTime_ct());
			ps.setString(7, t.getCat_ct());
			ps.setString(8, t.getCost_ct());
			ps.setString(9, t.getEmail_ct());
			ps.setString(10, t.getTicketid_ct());
			ps.setString(11, t.getName_ct());
			ps.setString(12, t.getTcost_ct());




			
			
			status = ps.executeUpdate();
        
        
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}


}
