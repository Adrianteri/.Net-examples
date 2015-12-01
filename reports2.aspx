<%@ Page Title="" Language="C#" CodeFile="reports2.aspx.cs" 
		Inherits="myclass" %>
<html>
	<body>
		<form runat="server">
			Registration
            <%=mystring%>
            <asp:TextBox id="txtRegNo" runat="server"/>
			<asp:button  runat="server" Text=" Save " OnClick="myEvent"/>
			<br/><br/>
			<asp:SqlDataSource runat="server" ID="dsStudents"/>
			<asp:GridView ID="gvStudents" runat="server" 
				AllowPaging="True" AllowSorting="True" PageSize="20" 
				AutoGenerateColumns="true"
				GridLines="Both"
				DataSourceID="dsStudents" 
				EmptyDataText="There are no data records to display." Width="100%">
				<Columns>
				</Columns>
			</asp:GridView>	
			
			<br/><br/>
			<asp:SqlDataSource runat="server" ID="dsStudents2"/>
			<asp:GridView ID="gvStudents2" runat="server" 
				AllowPaging="True" AllowSorting="True" PageSize="20" 
				AutoGenerateColumns="false"
				GridLines="Both"
				CssClass="list"
				DataSourceID="dsStudents2" 
				EmptyDataText="There are no data records to display." Width="100%">
				<Columns>
                    <asp:BoundField DataField="first_name" SortExpression="first_name" HeaderText="First name" />
                    <asp:BoundField DataField="surname" HeaderText="Surname" />
				</Columns>
			</asp:GridView>	
		</form>
	</body>
</html>
