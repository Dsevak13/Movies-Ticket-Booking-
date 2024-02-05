package com.demo.Dao2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class mDao {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin","root","root");  
	    }catch(Exception e)
		
		{System.out.println(e);}  
	   
		return con;  
	    
	}
	
	public static  int Manager (com.demo1.Manager m) {
		 
		int status =0;
	       
        Connection con =mDao.getConnection();
        
        try {
			PreparedStatement ps= con.prepareStatement("insert into manager name,email,pno,mno,street,city,username,password) values(?,?,?,?,?,?,?,?)");
		
			ps.setString(1, m.getName());
			ps.setString(1, m.getEmail());
			ps.setString(1, m.getPno());
			ps.setString(1, m.getMno());
			ps.setString(1, m.getStreet());
			ps.setString(1, m.getCity());
			ps.setString(1, m.getUsername());
			ps.setString(1, m.getPassword());

        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        


return status;
}

	 public static List<com.demo1.Manager> getAllRecords()


     {
   	  
   	      List<com.demo1.Manager> list=new ArrayList<>();
   	      
   	          Connection con=getConnection();
   	          try {
					PreparedStatement ps= con.prepareStatement("select * from manager");
					  ResultSet rs= ps.executeQuery();
					  
					  
					  while(rs.next())
					  {
						    com.demo1.Manager e1= new com.demo1.Manager();
						     int id =  rs.getInt("id");
						     e1.setId(id);
						     e1.setName(rs.getString("name"));
						     e1.setEmail(rs.getString("email"));
						     e1.setPno(rs.getString("pno"));
						     e1.setMno(rs.getString("mno"));
						     e1.setStreet(rs.getString("street"));
						     e1.setCity(rs.getString("city"));
						     e1.setUsername(rs.getString("username"));
						     e1.setPassword(rs.getString("password"));
						     
						     list.add(e1);
					  }
					
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
   	          
   	          
   	          
   	  
   	  
   	           
   	  
   	  return list;
     }
}