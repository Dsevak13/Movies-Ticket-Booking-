
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="CT.*"  import="javax.swing.JOptionPane"%>


<%@ include file="m_header.jsp"%>


					<table align=left cellspacing=20 ><tr><td><td>
	                  <%
                                                      String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<tr><td><font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Registration Success   !! </blink></font><br><br><br><br></h3>");
                                                       }
                                               %>

											   </table>




<!-- ********************************************************************************************************* -->



<h2>

<form method="post" action="addtheater2.jsp" >
<center><h1>Theater Registration</h2></center>
	<table  align=center cellspacing="10"><tr><td>


	<tr><h3><td><input type="text" name="name" required style="width:350px;" placeholder="Theater Name ">
	<tr><td><h3>
	<tr><h3><td><input type="text" name="type" required placeholder="Theater Type" style="width:350px;">
								<tr><h3><td><input type="number" name="screens" required placeholder="No of Screens" min="1" max="8" style="width:350px;">
								<tr><h3><td><input type="number" name="contact" required placeholder="Contact Number" style="width:350px;">
								<tr><h3><td><input type="email" name="email" required placeholder="Enter Email" style="width:350px;">
								<tr><h3><td><input type="text" name="city" required placeholder="Enter City" style="width:350px;">

								<tr><td><textarea rows="" cols="22" name="address" style="width:350px;" placeholder="Address "></textarea>
								<tr><td><textarea rows="" cols="22" name="loc" style="width:350px;" placeholder="Place Map Address "></textarea>
								
 
	
<tr><td align="right"><br><h3><input type="submit" value="Next >>">
</table>


</form>
<br><br><br>
<%@ include file="footer.jsp"%>



