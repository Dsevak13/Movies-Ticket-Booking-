<%@ page  import="java.sql.*" import="com.demo.Dao1.*" %>
<%
String a = request.getParameter("email");
String b= request.getParameter("password");
String name=null,u=null,test2=null;

try{
Connection con1 = userDao.getConnection();
Statement st1 = con1.createStatement();
	
String s1 = "select * from userl where email='"+a+"' && password='"+b+"' ";

	ResultSet rs1=st1.executeQuery(s1);
	if(rs1.next())
	{


		name=rs1.getString("email");
		session.setAttribute("email",a);
		session.setAttribute("password",b);
		response.sendRedirect("u_home.jsp");
		}
		else{
		response.sendRedirect("userlogin.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>