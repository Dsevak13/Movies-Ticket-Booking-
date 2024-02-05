
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="com.demo.Dao.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>
<script>
	                  <%
                              String message=request.getParameter("email");
                               if(message!=null && message.equalsIgnoreCase("s1"))
                                {
                                  }
                              if(message!=null && message.equalsIgnoreCase("s2"))
                                {
                                }

			    %>


</script>

<h2>Welcome <%=session.getAttribute("email")%>

	
</h2>

	<center><img src="images/Welcome-Banner_v2.png" width="1000" height="174" border="0" alt=""></center>



<%@ include file="footer.jsp"%>