using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class myclass: System.Web.UI.Page
{

    public string mystring;

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["CS"] + "";
        DataSource1.SelectCommand = "SELECT * FROM students";
	}
	
	protected void myEvent(object sender, EventArgs e) {
		SqlConnection conn = new SqlConnection();
		SqlCommand cmd = new SqlCommand();
		SqlDataReader rs;
		

		conn.ConnectionString = ConfigurationManager.ConnectionStrings["CS"] + "";
		conn.Open();
		cmd.Connection = conn;
		
		//cmd.CommandText = "SELECT * FROM students WHERE reg = @param ";
        //cmd.Parameters.AddWithValue("@param", txtRegNo.Text);
		cmd.CommandText = "SELECT * FROM students";
		rs = cmd.ExecuteReader();
		Response.Write ("<table>");
		Response.Write ("	<tr>");
		Response.Write ("		<th>Reg</th><th>First name</th><th>Surname</th>");
		Response.Write ("	</tr>");
		while (rs.Read ()) {
			Response.Write ("<tr><td>" + rs ["reg"] + "</td><td>" + rs ["first_name"] + "</td><td>" + rs ["surname"] + "</td></tr>");
		}
		Response.Write ("</table>");
		/*
		if (rs.Read()){
			Response.Write ("<br/>The first name is " + rs ["first_name"] + "");
			Response.Write ("<br/>The surname is " + rs ["surname"].ToString());
		} else {
			Response.Write ("No such student");
		}
		*/
		
		rs.Close();
		conn.Close();
		conn.Dispose();
	}

}