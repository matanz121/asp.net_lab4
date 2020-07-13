using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_8_Solution
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                if (Request.Cookies["userName"] != null && Request.Cookies["LastEntered"] != null)
                {
                    lblUser.Text = Request.Cookies["userName"].Value;
                    lblLastEntered.Text = Request.Cookies["LastEntered"].Value;
                    lblPassword.Text = Request.Cookies["password"].Value;
                }
            }
        }

        protected void ButtonWelcome_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue!= null)
            {
                HttpCookie publisher = new HttpCookie("Publisher",
                DropDownList1.SelectedValue);
                publisher.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(publisher);


                Response.Redirect("Titles.aspx");

            }
        }
    }
}