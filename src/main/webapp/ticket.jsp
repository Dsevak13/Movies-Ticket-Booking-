<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="com.demo.Dao6.*" %>



<h2>Booking..</h1>



<%
    String	sdate="";
	String	edate="";
	String	movie="";	String	tname=""; 	String screen="";	

    String 	tid=request.getParameter("tid");
	Connection con1 = MovieDao.getConnection();
	Statement st1 = con1.createStatement();
	ResultSet rs=st1.executeQuery("select * from movies_tab where  tid_ct='"+tid+"'  " );
	if(rs.next()){
	%>
	
		      	<div class="col-md-6 album_5">
		      	   <div class="col_1_of_2 span_1_of_2">
		      	   	 <img src="Data/<%=rs.getString("pic_ct")%>" class="img-responsive" alt=""/>
		      	   </div>
		      	   <div class="clearfix"> </div>
				   
	<%
	    sdate=rs.getString("sdate_ct");
		edate=rs.getString("edate_ct");
		movie=rs.getString("movie_ct");			tname=rs.getString("tname");		screen=rs.getString("screen_ct");
	}
%>
<h3><%=movie%></h2>

</div><form method="post" action="book.jsp">
	
  <table cellspacing="20" align="cener">
						
							<tr>
							<td><h4>Theater :</h4><td><h4><%=tname%><input type="hidden" name="tname" value="<%=tname%>" readonly >
							<tr>
							<td><h4>Screen :</h4><td><h4><%=screen%><input type="hidden" name="screen" value="<%=screen%>" readonly >
							<input type="hidden" name="tid" value="<%=tid%>" readonly >
							<input type="hidden" name="movie" value="<%=movie%>" readonly >
							<tr>
							<td><h4>Select Date:</h4><td><h4><input required type="date" name="date" max="<%=edate%>" min="<%=sdate%>" >

							<tr><td><h4>Show: <td><h4><select name="show" required>
	
                             <%
                             rs=st1.executeQuery("select * from movies_tab where  tid_ct='"+tid+"'  " );
	                         while(rs.next()){
	                         %>
		                     <option value="<%=rs.getString("show_ct")%>@<%=rs.getString("time_ct")%>" ><%=rs.getString("show_ct")%>: <%=rs.getString("time_ct")%>
	                         <%
	}
%>
</select>
	

<tr><td><h4>Show:</h4> <td><h4><select name="cat" required>
	
<%
rs=st1.executeQuery("select * from avail_tab where  tid_ct='"+tid+"'  " );
	while(rs.next()){
	%>
		<option value="<%=rs.getString("cat_ct")%>@<%=rs.getString("cost_ct")%>@<%=rs.getString("avail_seats_ct")%>" ><%=rs.getString("cat_ct")%>: &nbsp;&nbsp; <%=rs.getString("cost_ct")%>/- rs
	<%
	}		
%>
</select>
	

</td>
						</tr>

						<tr>
							<td><h4>No of Tickets :</h4><td><h4><input type="number" name="count" required min=1 max=8>
						<tr>
							<td><td><h4><input type="submit" value="Book">
						
						</table>						

</form>

</div>
</div>
</div>
</div>
</div>


<%@ include file="footer.jsp"%>
