
<%@ page  import="java.sql.*" import="com.demo.dao4.*" import="javax.swing.JOptionPane"%>



	                  <%	String tid=request.getParameter("tid");
                                String tname=request.getParameter("tname");
                                String screen=request.getParameter("screen");    
                                String time=request.getParameter("time");    
                                String sname=request.getParameter("sname");    
					  %>
<%
try{

Connection con = showDao.getConnection();
Statement st=con.createStatement();

int q= st.executeUpdate("insert into newshow values('"+tid+"','"+tname+"','"+screen+"','"+time+"','"+sname+"')");


if(q>0)
{
response.sendRedirect("screendata2.jsp?1="+tid+"&&2="+tname+"&&3="+screen);
}

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
