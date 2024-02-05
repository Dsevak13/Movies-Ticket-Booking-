<%@ include file="uheader.jsp"%>


<h2 align="center">Payment Gateway</h1>

<form action="paymentaction.jsp" method="post" >
<table>
<tr>
<td>
<input type="radio" name="type" value="Credit Card" required>Credit Card
<br><br>
<input type="radio" name="type" value="Debit Card">Debit Card
<br><br>
<input type="radio" name="type" value="Net Banking">Net Banking
<br><br>
<input type="radio" name="type" value="Cash On Delivery">Cash On Delivery
<br><br>
<input type="radio" name="type" value="Credit Card EMI">Credit Card EMI
</td>
	<td><font size="4" color="">Select Your Card:</font></td>
	<td><select name="card" required>
			<option value="">---Select---</option>
			<option value="Mastro Card">Mastro Card</option>
			<option value="VISA Card">VISA Card</option>
			</select>
	</td>

	<td><font size="4" color="">Select Your Bank</font></td>
	<td>
	<select name="bank" required>
			<option value="">---Select---</option>
			<option value="SBI">SBI</option>
			<option value="ICICI">ICICI</option>
			<option value="AXIS">AXIS</option>
			<option value="BOI">BOI</option>
	</select>
	
	
	<tr><td><td><td><input type="number" name="card" size="40" required  placeholder="Card number">
	<tr><td><td><td><input type="number" name="card" size="40"  required placeholder="CVV">
<input type="submit" value="Pay" onclick="">
	</td>
</tr>
</table>
</form>

<%@ include file="footer.jsp"%>
