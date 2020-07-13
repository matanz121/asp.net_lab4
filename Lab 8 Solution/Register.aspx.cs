using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_8_Solution
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Cookies["userName"] != null)
                    Response.Redirect("Welcome.aspx");
                     

                if (Request.Cookies["password"] != null)
                    Response.Redirect("Welcome.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == txtPassword.Text)
            {
            HttpCookie time = new HttpCookie("LastEntered",
            DateTime.Now.ToString());
            time.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(time);

            HttpCookie userName = new HttpCookie("userName",
            txtUserName.Text);
            userName.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(userName);

            HttpCookie password = new HttpCookie("password",
            txtPassword.Text);
            password.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(password);


            //redirect to welcome
            Response.Redirect("Welcome.aspx");
               
            }
            else
            {
                LabelResult.Text = "passwords are not the same!!";
            }
            if(txtUserName.Text == DropDownList1.SelectedItem.Text )
            {
                HttpCookie time = new HttpCookie("LastEntered",
                DateTime.Now.ToString());
                time.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(time);

                HttpCookie userName = new HttpCookie("userName",
                txtUserName.Text);
                userName.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(userName);

                HttpCookie password = new HttpCookie("password",
                txtPassword.Text);
                password.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(password);

                Response.Redirect("Welcome.aspx");
            }
            else
            {
                LabelResult.Text = "It doesnt same username!!! Lets try again!!!";
            }
           

        }
    }
}