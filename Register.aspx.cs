
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class First : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string url = "organisation.aspx?";
        url += "Name=" + Server.UrlEncode(TextBox1.Text) + "&";
        url += "Gyear=" + Server.UrlEncode(DropDownList1.Items[DropDownList1.SelectedIndex].Value) + "&";
        url += "Institute=" + Server.UrlEncode(DropDownList2.Items[DropDownList2.SelectedIndex].Value) + "&";
        url += "Branch=" + Server.UrlEncode(TextBox2.Text) + "&";
        url += "Email=" + Server.UrlEncode(TextBox3.Text) + "&";
        url += "Password=" + Server.UrlEncode(TextBox4.Text);

        HttpCookie cookie = Request.Cookies["customer"];
        if (cookie == null)
        {
            cookie = new HttpCookie("customer");
        }

        cookie["email"] = TextBox3.Text;
        Response.Cookies.Add(cookie);

        Response.Redirect(url);

    }
}