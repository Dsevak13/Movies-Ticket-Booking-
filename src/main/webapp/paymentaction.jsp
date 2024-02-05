<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="com.demo8.*" %>
<%@ page  import="java.sql.*" import="java.util.Random" import="databaseconnection.*"    %>


	                  <%	
	String tid=(String)session.getAttribute("tid");
	String tname=(String)session.getAttribute("tname");
	String screen=(String)session.getAttribute("screen");
   String movie=(String)session.getAttribute("movie");
 String date=(String)session.getAttribute("date");
String show=(String)session.getAttribute("show");
	String time=(String)session.getAttribute("time");

										String cat=(String)session.getAttribute("cat");
										int cost=(Integer)session.getAttribute("cost");
							  	int tsize=(Integer)session.getAttribute("tsize");


	int key=new Random().nextInt(10000);

String sql="insert into tickets_tab values('"+tid+"','"+tname+"','"+screen+"','"+movie+"','"+show+"','"+time+"','"+date+"','"+cat+"','"+cost+"','"+cost*tsize+"','"+tsize+"','"+session.getAttribute("uname")+"','"+session.getAttribute("uemail")+"','T"+key+"')";

					  
					  
					  
					  
					  
					  
					  
					  
					  %>


<%
	Connection con1 = TicketDao.getConnection();
	Statement st1 = con1.createStatement();
	System.out.println(sql);
	st1.executeUpdate(sql);

	%>
	<table align="center">
<tr><td>
 <font size="+2" color=""><%=tname%></font><br>
Screen:  <%=screen%><br><br>
<H3>Movie: <%=movie%>
<H3>Show:  <%=show%>. <%=time%>

<H3>TicketId:  T<%=key%>


<H4>	Number of Tickets: <%=tsize%>
<H4>	Cost per each ticket: <%=cost%>/- rs
<H4>	Total Cost: <%=cost*tsize%>/- rs.
</td>
</tr>
</table><br><center>
<button onclick="myFunction()">Print</button>
</center>
<script>
function myFunction() {
    window.print();
}
</script>
	<%

%>
