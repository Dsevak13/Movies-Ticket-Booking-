<%@ include file="header.jsp"%>


  <h1 ><font size="" color="black">User Login</font> </h1>
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



<form method="post" action="ulogin.jsp">
	<table  align="center" cellpadding=20><tr><td>

	<tr><td>  <div class="form-group">

    <input type="text" name="email" class="form-control"  placeholder="Enter Email"  size="40"required />
  </div>

	<tr><td>  <div class="form-group">

    <input type="password" name="password" class="form-control"  placeholder="Enter Password"  size="40"required />
  </div>


<tr><td><button type="submit" class="btn btn-default">Login</button></td>	


</tr>
</table>						
               </form>




<%@ include file="footer.jsp"%>