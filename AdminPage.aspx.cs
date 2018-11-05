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



public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String uname, passwd;
        String cs = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = Alumni; Integrated Security = True";
        using (SqlConnection conn = new SqlConnection(cs))
        {
            SqlDataReader reader;
            SqlCommand cmd = new SqlCommand("SELECT Username, Password from Admin WHERE Username= @Username", conn);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            conn.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                uname = reader["Username"].ToString();
                passwd = reader["Password"].ToString();
                if ((TextBox1.Text).Equals(uname) && (TextBox2.Text).Equals(passwd))
                {
                    Response.Redirect("AdminPage2.aspx");
                }
                else
                {
                    Label3.Text = "Invalid Username and Password!";
                }
            }
        }
        int counter;
        if (Session["count"] == null) counter = 1;
        else counter = (int)Session["count"] + 1;
        Session["count"] = counter;
        if (counter > 3)
        {
            Button1.Enabled = false;
            Session["count"] = 0;
        }
    }


}
