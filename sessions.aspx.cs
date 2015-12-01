using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class myclass: System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
		Response.Write ("This is the session value of variable flo " + Session ["flo"]);
		//Session ["flo"] = "Karis";
		
		Response.Write ("<br/> Session variables are as follows<br/>");
		foreach (object thing in Session){
			Response.Write ("<br/>" + thing + " = " + Session[thing + ""]);
		}

		Response.Write ("<br/> Cookie variables are as follows<br/>");
		foreach(object thing in Request.Cookies){
			Response.Write("<br/>" + thing + " = " + Request.Cookies[thing + ""].Value + " = " + Request.Cookies[thing + ""].Expires.ToString ("dd-MMMM-yyyy"));
		}
		Session.Abandon();
	}

}