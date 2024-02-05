
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="CT.*"  import="javax.swing.JOptionPane"%>


<%@ include file="m_header.jsp"%>

	                  <%
                               String message=request.getParameter("id");
                                        if(message!=null && message.equalsIgnoreCase("s1"))
                                        {
                                        }
                                        if(message!=null && message.equalsIgnoreCase("s2"))
                                        {
                                        }

			    %>



<h1>Welcome <%=session.getAttribute("uname")%>...</h1>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp"%>