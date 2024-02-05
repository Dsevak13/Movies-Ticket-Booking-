
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="com.demo.dao3.*" import="CT.*"  import="javax.swing.JOptionPane"%>


<%@ include file="m_header.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                       }

			    %>
			    
			    
<br><br><br>
<table width="60%" cellspacing="20">
<tr bgcolor="#ffb7db"><td><h2>Theater Id<td><h2>Theater Name<td><h2>Screen

<%
try{
Connection con = newtDao.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from newt");
Statement st2=con.createStatement();
ResultSet rs2=null;
while(rs.next())
{
			System.out.println("select * from newshow where id='"+rs.getString(1)+"' and screen='"+rs.getString(3)+"' ");

			rs2=st2.executeQuery("select * from newshow where id='"+rs.getString(1)+"' and screen='"+rs.getString(3)+"' ");
			if(rs2.next()){
			System.out.println("-------------");
			}else{
							System.out.println("-------------");
				%>
			
				<tr bgcolor="#ffb7db"><th align="center"><h4><%=rs.getString(1)%><td><h4><%=rs.getString(2)%><td><h3><a href="screendata2.jsp?1=<%=rs.getString(1)%>&&2=<%=rs.getString(2)%>&&3=<%=rs.getString(3)%>"><%=rs.getString(3)%></a>				
				<tr><td><hr>
				<%							
			}

}
}
catch(Exception e){
	System.out.println("Exception Occured............"+e);
}

%>
</table>



<br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp"%>