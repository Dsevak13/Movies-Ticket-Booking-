<%@include file="m_header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="com.demo.dao3.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
														   out.println("<H1>Movie Added Successfully..</H1>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                       }

			    %>
<%
String ctid=null;
try
{
ResultSet rs=null;
Connection con=newtDao.getConnection();
Statement st=con.createStatement();
String qry="select * from newt";
rs=st.executeQuery(qry);
		%>


<script>
function myFunction1() {

    var y = document.getElementById("mySelect1").value;


window.location="movieadd.jsp?y="+y ;
}
</script>
                  <%
         message=request.getParameter("id");
         if(message!=null && message.equalsIgnoreCase("fail"))
          {
           out.println("");
                                                       }
         if(message!=null && message.equalsIgnoreCase("dup"))
          {
           out.println("<table width=35% ><tr bgcolor=#fb95a9><td><font color=#fff>Data Already Added</font></table>");
                                                       }
			    %>


<center><h1>Add Movie</font></h1></center>
<br>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<form action="movieadd2.jsp" method="post">
                  
                  <table width="60%" align="center">
				  <tr bgcolor="#befaaf">
				   <td>
					<h2>Theater:
				  </td>
				  <td>
                 <h2> <select  class="form-control input-lg" name="sid"  autofocus id="mySelect1" onchange="myFunction1()">
				 <option value="non" selected>Select Theater and Screen</option>
					
					<%
					  while(rs.next())
					{

						if(rs.getString(1).equals(request.getParameter("y"))){ %>
					
				  <option value="<%=rs.getString(1)%>" selected><%=rs.getString(2)%>:<%=rs.getString(3)%></option>


					<%
						
						}
						else{
					
					%>
					
				  <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%>:<%=rs.getString(3)%></option>
				  <% }}%>
				  </select>
				  <td>
					<%String sql3="select  * from newt where id='"+request.getParameter("y")+"' ";
					System.out.println("sql="+sql3);
					Statement st3=con.createStatement(); 
					ResultSet rs3=st3.executeQuery(sql3);
					%>

					  <%  while(rs3.next()){ %>
			<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>TheaterID: 					
				<td><input size="50" class="form-control input-lg" type="text" value="<%=rs3.getString(1)%>" name="tid" required readonly>
			<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>Theater Name: 					
				<td><input size="50" class="form-control input-lg" type="text" value="<%=rs3.getString("name")%>" name="tname" required readonly>
					<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>Screen: 					
				<td><input size="50" class="form-control input-lg" type="text" value="<%=rs3.getString(3)%>" name="screen" required readonly>
				<tr><td><br>
	<tr bgcolor="#befaaf"><td>
                <h2>Shows:	
                			
				<td><%
				
try{
Connection con2 = newtDao.getConnection();

Statement stt=con.createStatement();
ResultSet rss=stt.executeQuery("select  * from newt where id='"+rs3.getString(1)+"' ");
while(rss.next())
{
%><font size="4" color="">
<input type="checkbox" readonly  name="show" value="<%=rss.getString(4)%>@<%=rss.getString(5)%>"  checked> &nbsp;<%=rss.getString(4)%>:&nbsp;<%=rss.getString(5)%><br>


<%

}
}
catch(Exception e){
System.out.println("Exception Occured");}

						
						%>		
										<tr><td><br>
	
								  <tr bgcolor="#befaaf"><td>
                <h2>Movie Name 					
				<td><input size="50" class="form-control input-lg" type="text"  name="mname" required >
				<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>Image: 					
				<td><input size="50" class="form-control input-lg" type="file"  accept="image/*"  name="image" required >
				<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>Start Date:					
				<td><input size="50" class="form-control input-lg" type="date"    name="start" required >
				<tr><td><br>
		  <tr bgcolor="#befaaf"><td>
                <h2>End Date: 					
				<td><input size="50" class="form-control input-lg" type="date"    name="end" required >
				<tr><td><br>

	<tr><td><br>
<tr bgcolor="#befaaf"><td><td align="right"><br>
<div class="form-group">
				<input type="submit" class="btn btn-primary btn-lg " value="Upload">
			</div>	

						
						
						
						
						
						<% } %>
                 
								 </table>
								</form>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>	


											   <br><br><br><br><br>



<%@ include file="footer.jsp"%>