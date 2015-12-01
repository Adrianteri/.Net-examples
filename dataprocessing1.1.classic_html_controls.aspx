<%@ Page Title="" Language="C#"  AutoEventWireup="false" %>
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
					
				    cmd.CommandText = "SELECT * FROM students WHERE reg = @param ";
                    cmd.Parameters.AddWithValue("@param", reg);
				    rs = cmd.ExecuteReader();
					
				    if (rs.Read()){
					    Response.Write ("<br/>The first name is " + rs ["first_name"] + "");
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


