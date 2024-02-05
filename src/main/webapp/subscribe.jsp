<%@ include file="uheader.jsp"%>

	                  <%
                       String m=request.getParameter("id");
                       if(m!=null && m.equalsIgnoreCase("succ"))
                   {
                  out.println("<script type=text/javascript>alert('Thank you for subscription '); </script>");
                  
                  }
                        %>

					  
 
					<h2>Subscribe to our Latest Updates</h2>

<div class="footer-grid last_grid">
					<form method="post" action="subscribe2.jsp">
						<input type="text" name="email" value="<%=session.getAttribute("email")%>"  value="Your Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email Address';}">
						<input type="submit" value="Go">
					</form>
					</div>

		 
		 
<%@ include file="footer.jsp"%>