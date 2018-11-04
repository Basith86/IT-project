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

public partial class survey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie cookie = Request.Cookies["customer"];
            string mail = cookie["email"]; ;
            //TextBox1.Text = mail;
            //string mail = cookie["Name"];
            //string mail = "abdulrahimanbasith@gmail.com";

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source = (localdb)\\MSSQLlocalDB;Initial Catalog=Alumni;Integrated Security=True";

            try
            {
                con.Open();
                string sql = "SELECT Name,Email,Gyear,Institute,Branch FROM Student WHERE Email='" + mail + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Label6.Text = reader["Name"].ToString();
                    Label7.Text = reader["Email"].ToString();
                    Label8.Text = reader["Institute"].ToString();
                    Label9.Text = reader["Branch"].ToString();
                    Label10.Text = reader["Gyear"].ToString();
                }
            }

            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = WebConfigurationManager.ConnectionStrings["Survey"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);

        conn.Open();
        string sql = "INSERT INTO Survey(Reunion,Proud,Event,Magazine,Refer,Rate,Email) VALUES ('" + RadioButtonList6.SelectedItem.Value + "','" + RadioButtonList5.SelectedItem.Value + "','" + RadioButtonList4.SelectedItem.Value + "','" + RadioButtonList3.SelectedItem.Value + "','" + RadioButtonList2.SelectedItem.Value + "','" + RadioButtonList1.SelectedItem.Value + "','" + Label7.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
        cmd.CommandType = System.Data.CommandType.Text;
        conn.Close();
        Response.Redirect("last.aspx");
    }
}