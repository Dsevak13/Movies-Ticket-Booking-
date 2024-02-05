<%@page import="com.demo1.ticket_tab"%>
<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="com.demo8.*" %>


	                  <%	    String tid=request.getParameter("tid");
								session.setAttribute("tid",tid);

								String tname=request.getParameter("tname");
								session.setAttribute("tname",tname);
								
								String screen=request.getParameter("screen");
								session.setAttribute("screen",screen);
								
                                String movie=request.getParameter("movie");
								session.setAttribute("movie",movie);
								

                                String date=request.getParameter("date");
								session.setAttribute("date",date);

                                String temp1=request.getParameter("show");
                                String[]temp2=temp1.split("@");
										
								String show=temp2[1]; 
								session.setAttribute("show",show);

								String time=temp2[1];
								session.setAttribute("time",time);

								temp1=request.getParameter("cat");
								temp2=temp1.split("@");
								String cat=temp2[0];
																																							session.setAttribute("cat",cat);
								int cost=Integer.parseInt(temp2[1]); 
								
								
								session.setAttribute("cost",cost);
								int avail=Integer.parseInt(temp2[2]);
                                int tsize=Integer.parseInt(request.getParameter("count"));

							  	session.setAttribute("tsize",tsize);
	//select count(*) from tickets_tab where tid_ct='2' and date_ct='03/01/2017' and show_ct='1st show' 
					  %>


<%
	Connection con1 = TicketDao.getConnection();
	Statement st1 = con1.createStatement();
	ResultSet rs=st1.executeQuery("select count(*) from tickets_tab where tid_ct='"+tid+"' and date_ct='"+date+"' and show_ct='"+show+"' " );
	rs.next();
	int pen=rs.getInt(1);
	if((avail-pen)>= tsize)
	{
	%>
	<table align="center">
<tr>
	<td><H2>Available Tickets: <%=avail-pen%>
<H2>	Number of Tickets: <%=tsize%>
<H2>	Cost per each ticket: <%=cost%>/- rs
<H2>	Total Cost: <%=cost*tsize%>/- rs.
</td>
</tr>
<tr><td><a href="payment.jsp">Payment</a>
</table>

	<%
	}

%>
<%@ include file="footer.jsp"%>
