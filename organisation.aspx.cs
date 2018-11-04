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

public partial class organisation : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        string querystringName = Request.QueryString["Name"];
        TextBox4.Text = querystringName;
    }



    protected void btn1_Click(object sender, EventArgs e)
    {
        string querystringName = Request.QueryString["Name"];
        string querystringGyear = Request.QueryString["Gyear"];
        string querystringInstitute = Request.QueryString["Institute"];
        string querystringBranch = Request.QueryString["Branch"];
        string querystringEmail = Request.QueryString["Email"];
        string querystringPassword = Request.QueryString["Password"];



        string cs = WebConfigurationManager.ConnectionStrings["Student"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);

        conn.Open();
        string sql = "INSERT INTO Student(Name,Gyear,Institute,Branch,Email,Password,Organisation,Designation,Mobile) VALUES ('" + querystringName + "','" + querystringGyear + "','" + querystringInstitute + "','" + querystringBranch + "','" + querystringEmail + "','" + querystringPassword + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
        cmd.CommandType = System.Data.CommandType.Text;
        conn.Close();

        Response.Redirect("survey.aspx");
    }
}



