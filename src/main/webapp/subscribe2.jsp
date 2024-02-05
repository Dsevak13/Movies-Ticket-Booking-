<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="java.util.Random" import="com.demo.dao7.*"    %>
<%@ page  import="java.sql.*"  import="com.demo.dao7.*"    %>


	                  <%	
String email = request.getParameter("email");

String sql="insert into subscribe_tab('"+session.getAttribute("email")+"','"+email+"' )";
					  
					  %>


<%
try{

	Connection con1 = Subscribe_Dao.getConnection();
	Statement st1 = con1.createStatement();
	System.out.println(sql);
	st1.executeUpdate(sql);
		response.sendRedirect("subscribe.jsp?id=succ");

}


catch(Exception e1)
{
		response.sendRedirect("subscribe.jsp?id=duplicate");

}
%>