using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class myclass: System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
		if (IsPostBack){
			Response.Write ("You have cliked some button");
		}
	}

	protected void B1Clicked (Object sender, EventArgs e){
		address.Text = city.Text + " ...some address ";
	}
	protected void B2Clicked (Object sender, EventArgs e){
		myDiv.InnerHtml = "P.O. Box 12345, " + city.Text;
	}
}