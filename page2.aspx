<%@ Page Title="" Language="C#" 
		CodeFile="page2.aspx.cs" 
		Inherits="myclass" %>
<html>
	<body>
		<form method="POST" runat="server">
			<select name="towns" runat="server">
				<option value="1"  >Town 1</option>
				<option value="2"  >Town 2</option>
			</select>
			<br/>
			<div runat="server" id="myDiv">This is the div</div>
			<asp:button runat="server" id="mybutton" text=" click here " OnClick="B1Clicked"  />  <br/>
			<asp:TextBox id="city" runat="server"/>  <br/>
			<asp:TextBox id="address" runat="server"/>  <br/>
			<asp:button runat="server" id="mySecondbutton" text=" click second " OnClick="B2Clicked" />  <br/>
			<asp:TextBox id="county" runat="server" text="default county"/>  <br/>
		</form>
	</body>
</html>
