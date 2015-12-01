<%@ Page Title="" Language="C#" CodeFile="dataprocessing2.aspx.cs" 
		Inherits="myclass" %>
<html>
	<body>
		<form runat="server">
			Registration
            <%=mystring%>
            <asp:TextBox id="txtRegNo" runat="server"/>
            <asp:TextBox TextMode="MultiLine" id="txtArea1" Text="this is my text" runat="server" />
			<asp:button  runat="server" Text=" Save " OnClick="myEvent"/>
			<asp:SqlDataSource runat="server" id="DataSource1"/>
			<asp:DataGrid runat="server"
					id="DataGrid1"
					DataSourceID="DataSource1"
					Width="100%"
					PageSize="1"
				>
			</asp:DataGrid>
		</form>
	</body>
</html>
