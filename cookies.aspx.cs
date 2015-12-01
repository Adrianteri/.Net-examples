using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class myclass: System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
		HttpCookie ck = new HttpCookie ("hasslurkK", "Ochieng");
		ck.Expires = Convert.ToDateTime ("3-Nov-2015");
		Response.Cookies.Add (ck);

		if (Request.Cookies ["hasslurkK"] != null) {
			Response.Write ("This is the cookie value "
							+ Request.Cookies ["hasslurkK"].Value);
			Response.Write (" and it expires on "
							+ Request.Cookies ["hasslurkK"].Expires);
		}
		
	}

}