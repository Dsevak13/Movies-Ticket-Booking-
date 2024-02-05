<%@ page  import="java.sql.*" import="com.demo.Dao2.*" %>
<%
String a = request.getParameter("username");
String b= request.getParameter("password");
String name=null,u=null,test2=null;

try{
Connection con1 = mDao.getConnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from manager where username='"+a+"' && password='"+b+"' ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

//
		name=rs1.getString("username");
		session.setAttribute("uname",a);
		session.setAttribute("upassword",b);
		response.sendRedirect("m_home.jsp");
		}
		else{
		response.sendRedirect("member.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>