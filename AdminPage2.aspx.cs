using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class AdminPage2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage3.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = Alumni; Integrated Security = True";
        using (SqlConnection conn = new SqlConnection(cs))
        {
            string Institute = DropDownList1.SelectedItem.ToString();
            string Gyear = DropDownList2.SelectedItem.ToString();
            string Branch = DropDownList3.SelectedItem.ToString();
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("SELECT * from Student WHERE Institute = @Institute AND Gyear = @Gyear AND Branch = @Branch ", conn);
            cmd.Parameters.AddWithValue("@Institute", Institute);
            cmd.Parameters.AddWithValue("@Gyear", Gyear);
            cmd.Parameters.AddWithValue("@Branch", Branch);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, "Std");
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
    }
}