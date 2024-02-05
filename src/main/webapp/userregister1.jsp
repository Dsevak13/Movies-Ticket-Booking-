
<%@ page  import="java.sql.*" import="com.demo.Dao1.*" import="javax.swing.JOptionPane"%>



<%! 

int id;
String first_name,last_name,address,tele,email,password,confirm_password;

	int i=0;
%>
<%
try{
Connection con = userDao.getConnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from userl");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

first_name=request.getParameter("firstname");
last_name=request.getParameter("lastname");
address=request.getParameter("address");


tele=request.getParameter("tele");
email=request.getParameter("email");
password=request.getParameter("password");
confirm_password=request.getParameter("confirmpassword");
//System.out.println(pwd);
%>
<%
try{

Connection con = userDao.getConnection();
Statement st=con.createStatement();
//sfirst_name="firstname";

int q= st.executeUpdate("insert into userl values('"+i+"','"+first_name+"','"+last_name+"','"+address+"','"+tele+"','"+email+"', '"+password+"')");


if(q>0)
{
response.sendRedirect("userregister.jsp?id="+email+"");


}
else
	response.sendRedirect("userlogin.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
