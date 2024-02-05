<%@ page import="java.sql.*"%>

<%@ page  import="java.sql.*" import="com.demo.dao3.*"   %>



<%!
	int i=0;
%>


<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String type=request.getParameter("type");
String city=request.getParameter("city");
String address=request.getParameter("address");
String location=request.getParameter("loc");
int screens=Integer.parseInt(request.getParameter("screens"));

try{
Connection con = newtDao.getConnection();
Statement st=con.createStatement();


ResultSet rs=st.executeQuery("select count(*) from newt");
if(rs.next())
{
	i=rs.getInt(1);

}
}
catch(Exception e){
System.out.println("Exception Occured");}



%>
<%
try{
Connection con = newtDao.getConnection();
Statement st=con.createStatement();

for(int j=1; screens>=j;j++){

//st.executeUpdate("insert into theater values('"+(++i)+"','"+tname+"','Screens"+j+"', '"+type+"' ,'"+city+"','"+address+"','"+email+"', '"+contact+"','"+location+"')");
st.executeUpdate("insert into newt values('"+(++i)+"','"+name+"','"+email+"', '"+contact+"' ,'"+type+"','"+city+"','"+address+"', '"+location+"','"+screens+j+"')");


}

response.sendRedirect("addtheater.jsp?id=succ");
	//response.sendRedirect("register.jsp?message=succ");

}
catch(Exception e)
{
out.print(e);
	}
%>
