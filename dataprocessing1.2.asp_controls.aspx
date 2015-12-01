<%@ Page Title="" Language="C#"  %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<html>
    <body>
	    <form runat="server">
		    First name 
            <asp:TextBox id="txtRegNo" runat="server"/>
		    <asp:button  runat="server" Text=" Search " id="cmdSave"/>
		    <%
                if (txtRegNo.Text != "")
                {
				    SqlCommand cmd = new SqlCommand();
				    SqlConnection conn = new SqlConnection();
				    SqlDataReader rs;
					
				    conn.ConnectionString = ConfigurationManager.ConnectionStrings["CS"].ToString();
				    conn.Open();
				    cmd.Connection = conn;
					
				    cmd.CommandText = "SELECT * FROM students WHERE reg = @param ";
                    cmd.Parameters.AddWithValue("@param", txtRegNo.Text);
				    rs = cmd.ExecuteReader();
					
				    if (rs.Read()){
					    Response.Write ("<br/>The first name is " + rs ["first_name"].ToString());
					    Response.Write ("<br/>The surname is " + rs ["surname"].ToString());
				    } else {
					    Response.Write ("No such student");
				    }
					
				    rs.Close();
				    conn.Close();
				    conn.Dispose();
			    }
		    %>			
	    </form>
    </body>
</html>


