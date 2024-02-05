<%@ include file="header.jsp"%>
<script language="javascript"> 
</script>
</head>
<body>
<!--
This is a free CSS template provided by templatemo.com
-->

<br>

			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                    String id=request.getParameter("id");
                   if(id!=null )
                   {
                     out.println("<font color='red' size=+2><blink>Registration Success ! <br><br> <font color=#990066 size=4>Your User Id:: <font color=#009900>"+id+" </blink></font><br> <a href=userlogin.jsp>Login Here</a><br><br><br>");
                    }
                   else {%>
                   <%}%>
                  </b></font></td>
              </tr>

 </table> 
 
<h2>Register Here</h2>

 <form action="userregister1.jsp" method="get"    >

<div class="form-group"> 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#b41685><strong>Name</strong>*</font><br>
                <input type="text" class="form-control" name="firstname" id = "name" onblur = "enableRegisterButton();" style="width: 250px;" required></td>
				<td><font size="+1" color=#b41685><strong>Last Name</strong>*</font><br>
                <input type="text" class="form-control" name="lastname" id = "lastname" onblur = "enableRegisterButton();" style="width: 250px;" required></td>	
              </tr>
			  </TABLE>

			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#b41685><strong>Address</strong>*</font>
				<br>
				<input type="text" class="form-control" name="address" id = "addr" onblur = "enableRegisterButton();" style="width: 500px;"	required >
              </tr>
              <tr> 
               </table>


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#b41685><strong>Telephone</strong></font>
				<br>
				<input type="tel" class="form-control"  name="tele" style="width: 250px;"	onkeypress = "return isNumber(this.value);" >
				<td>
				<font size="+1"color=#b41685><strong>Email</strong>*</font>
				<br>
				<input type="email" class="form-control" name="email" id="email" onblur = "return validate(this.value);enableRegisterButton();" style="width: 250px;"	 required>
              </tr>
               </table>


		   	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#b41685><strong>Password</strong>*</font>
				<br>
				<input type="password" class="form-control" name="password" id="pwd" onblur = "enableRegisterButton();" style="width: 250px;" required	 >
				<td>
				<font size="+1"color=#b41685><strong>Confirm Password</strong>*</font>
				<br>
				<input type="password" class="form-control" name="confirmpassword" id="pwd2" onblur = "enableRegisterButton();" style="width: 250px;" required	 >
		


				             </tr>
               </table>


			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td align="left">
				<input type="submit" class="btn btn-default" Value="Register" id = "register" name = "register" >
				
				<td>
				
				
				<input type="reset" class="btn btn-default" value="   Reset   ">
              </tr>
               </table>
			  
 
 </form> 
 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>