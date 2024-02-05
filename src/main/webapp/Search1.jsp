<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="com.demo.Dao6.*" import="java.util.Date"%>
<%@ page  import="java.sql.*" import="java.util.Date"  import="java.text.*" import="databaseconnection.*"     %>
<%
DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
Date date = new Date();
String today=dateFormat.format(date);
%>

<%
String 	key=request.getParameter("search");
//session.setAttribute("key",key);
	
	Connection con1 = MovieDao.getConnection();
	Statement st1 = con1.createStatement();
	ResultSet rs=st1.executeQuery("select * from movies_tab where movie_ct like '%"+key+"%' group by tname " );
%>
<h2>Search Results</h2>

<div class="main">
	    <div class="about_grid1">
	      <div class="container">
	      	<div class="album_1">

</div>
<%
	while(rs.next())
	{
%>
		      	<div class="col-md-4 album_5">
		      	   <div class="col_1_of_2 span_1_of_2">
		      	   
		      	   	  <a href="ticket.jsp?tid=<%=rs.getString(1)%>"><img src="Data/<%=rs.getString("pic_ct")%>">
		      	   </a></div>
		      	   <div class="clearfix"> </div>
		      	   
				   <p class="off1">
				   <h3><%=rs.getString("movie_ct")%></h3>
				   <%=rs.getString("tname")%>
				  <br><%=rs.getString("screen_ct")%>
				   </p>
		      	</div>
		      	
		      	



	<%}
%>

</div></div></div>


<%@ include file="footer.jsp"%>
