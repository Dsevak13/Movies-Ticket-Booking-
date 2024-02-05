
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="com.demo.Dao6.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>

<form method="post" action="Search1.jsp">
	<center><font size="+3" color="#2db6e3">Movie Search</font><br><br>
    <table>
<tr>
	<td><input type="text" name="search" class="form-control"  placeholder="Enter Movie"  size="40"required />
</td>
</tr>
</table>
</form>
<br>




<%@ include file="footer.jsp"%>