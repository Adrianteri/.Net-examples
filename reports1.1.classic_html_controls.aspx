<%@ Page Title="" Language="C#"  %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<html>
    <body>
	    <form runat="server">
		    Registration: 
            <input type="text" id="txtRegNo" name="txtRegNo" />
		    <input type="submit" value=" Search " id="cmdSave" name="cmdSave"/>
		    <%
                string reg = Request.Form["txtRegNo"] + "";
                string btn = Request.Form["cmdSave"] + "";

                if (btn != "")
                {
				    SqlCommand cmd = new SqlCommand();
				    SqlConnection conn = new SqlConnection();
				    SqlDataReader rs;
					
				    conn.ConnectionString = "Password=rw_user#;Persist Security Info=True;User ID=rw_user;Initial Catalog=CSC217;Data Source=127.0.0.1";
				    conn.Open();
				    cmd.Connection = conn;
					
				    cmd.CommandText = "SELECT * FROM students WHERE reg LIKE '%' + @param + '%' ";
                    cmd.Parameters.AddWithValue("@param", reg);
				    rs = cmd.ExecuteReader();
					
					%>
					<table cellpadding="2" cellspacing="0" border="1">
						<thead>
                            <tr>
							    <th>First Name</th><th>Surname</th>
                            </tr>
						</thead>
						<tbody>
					        <%
				            while (rs.Read()){
					            Response.Write ("<tr><td>" + rs ["first_name"] + "</td><td>" + rs ["surname"] + "</td><tr>");
				            } 
					
				            rs.Close();
				            conn.Close();
				            conn.Dispose();
					        %>
						</tbody>
					</table>
					<%
			    }
		    %>			
	    </form>
    </body>
</html>


