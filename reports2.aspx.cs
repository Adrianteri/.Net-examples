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
        dsStudents.ConnectionString = ConfigurationManager.ConnectionStrings["CS"].ToString();
        //dsStudents.ProviderName = ConfigurationManager.ConnectionStrings["CS"].ProviderName.ToString();

        dsStudents.SelectCommand = "SELECT * FROM students WHERE reg LIKE '%' + @param + '%' ";
        dsStudents.SelectParameters.Clear();
        dsStudents.SelectParameters.Add("param", txtRegNo.Text);

        dsStudents2.ConnectionString = ConfigurationManager.ConnectionStrings["CS"].ToString();
        dsStudents2.ProviderName = ConfigurationManager.ConnectionStrings["CS"].ProviderName.ToString();

        dsStudents2.SelectCommand = "SELECT * FROM students WHERE reg LIKE '%' + @param + '%' ";
        dsStudents2.SelectParameters.Clear();
        dsStudents2.SelectParameters.Add("param", txtRegNo.Text);
    }
	
	protected void myEvent(object sender, EventArgs e) {
        dsStudents.ConnectionString = ConfigurationManager.ConnectionStrings["CS"].ToString();
        //dsStudents.ProviderName = ConfigurationManager.ConnectionStrings["CS"].ProviderName.ToString();

        dsStudents.SelectCommand = "SELECT * FROM students WHERE reg LIKE '%' + @param + '%' ";
        dsStudents.SelectParameters.Clear();
        dsStudents.SelectParameters.Add("param", txtRegNo.Text);

        dsStudents2.ConnectionString = ConfigurationManager.ConnectionStrings["CS"].ToString();
        dsStudents2.ProviderName = ConfigurationManager.ConnectionStrings["CS"].ProviderName.ToString();

        dsStudents2.SelectCommand = "SELECT * FROM students WHERE reg LIKE '%' + @param + '%' ";
        dsStudents2.SelectParameters.Clear();
        dsStudents2.SelectParameters.Add("param", txtRegNo.Text);
    }

}