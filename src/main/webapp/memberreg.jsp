<%@ page import="java.sql.*"%>

<%@ page  import="java.sql.*" import="com.demo.Dao2.*"   %>



<%!
int id;
String name,email,pno,mno,street,city,username,password;
	int i=1;
%>
<%


String name=request.getParameter("name");
String email=request.getParameter("email");
String pno=request.getParameter("pno");
String mno=request.getParameter("mno");
String street=request.getParameter("street");
String city=request.getParameter("city");
String username=request.getParameter("username");
String password=request.getParameter("password");

try{
Connection con = mDao.getConnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from manager");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}



%>
<%
try{
Connection con = mDao.getConnection();
Statement st=con.createStatement();


int q= st.executeUpdate("insert into manager values('"+i+"','"+name+"','"+email+"', '"+pno+"', '"+mno+"','"+street+"','"+city+"','"+username+"','"+password+"')");

if(q>0)
{
	response.sendRedirect("addmember.jsp?id=succ");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("addmember.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
