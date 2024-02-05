<%@ include file="header.jsp"%>


                        <h1 class=""><font size="" color="#cc0066">Admin Login</font> </h1>
                    </div>
<%
session.invalidate();%>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("exp"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
                                                       }
                                               %>

 

					<table  cellspacing=20 ><tr><td>
	                  <%
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>



<form method="post" action="alogin.jsp">
	<table  align="center" cellpadding=20><tr><td>

	<tr><td>  <div class="form-group">

    <input type="text" name="name" class="form-control"  placeholder="Enter Username"  size="40"required />
  </div>

	<tr><td>  <div class="form-group">

    <input type="password" name="password" class="form-control"  placeholder="Enter Password"  size="40"required />
  </div>


<tr>				<td><button type="submit" class="btn btn-default">Login</button></td>	


</tr>
</table>						
               </div></form>




<%@ include file="footer.jsp"%>