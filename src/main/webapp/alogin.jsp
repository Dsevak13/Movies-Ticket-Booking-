
<%
String pass=null,uid=null;

String a = request.getParameter("name");
String b= request.getParameter("password");
String name=null,u=null,test2=null;



try
{
if(a.equals("Dipesh13")&&b.equals("dilu"))
{
response.sendRedirect("admin_home.jsp");	
}
	
	else
	{
     	response.sendRedirect("Admin.jsp?m=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>