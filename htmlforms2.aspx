<%@ Page Title="" Language="C#"  %>
<html>
	<body>
		<form method="POST" runat="server">
			<asp:TextBox id="city" runat="server"/>  <br/>
			<asp:TextBox id="address" runat="server"/>  <br/>
			<asp:TextBox id="county" runat="server" text="default county"/>  <br/>
			<select name="towns" runat="server">
				<option value="1"  >Town 1</option>
				<option value="2"  >Town 2</option>
			</select>
			<br/>
			<div runat="server" id="myDiv">This is the div</div>
			<asp:button runat="server" id="mybutton" text=" click here " OnClick="B1Clicked"  />  <br/>
			<asp:button runat="server" id="mySecondbutton" text=" click second " OnClick="B2Clicked" />  <br/>
		</form>
	</body>

<script runat="server">
protected void B1Clicked (Object sender, EventArgs e){
	address.Text = city.Text + " ...some address ";
}
protected void B2Clicked (Object sender, EventArgs e){
	myDiv.InnerHtml = "P.O. Box 12345, " + city.Text;
}
</script>	
	
<%
/*
Response.Write ("<br/>City box has: " + city.Text);
if (Request.Form ["mybutton"] + "" != "")
	Response.Write ("<br/>You've clicked button 1");
if (Request.Form ["mySecondbutton"] + "" != "")
	Response.Write ("<br/>You've clicked button 2");
*/
%>	
</html>

