using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["empNo"] == null)
        {
            Response.Redirect("/login.aspx");
        }
        Label1.Text = Session["ArbnName"].ToString();

        string conString = ConfigurationManager.ConnectionStrings["visitormanagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(conString);
        con.Open();
        string query = "SELECT type_name FROM usersPremission where user_id='" + (int)Session["empNo"] + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string type = (string)cmd.ExecuteScalar();

        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.HasRows)
        {
            if (type == "ITadmin")
            {
                Button1.Visible = true;
            }
            else if (type == "SGA")
            {
             
                Button1.Visible = false;
            }
            else
            {
                Button1.Visible = false;
                
            }

        }
        else
        {
            Button1.Visible = false;
            
        }
      

        con.Close();
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/employee/ITadmin.aspx");
    }
    /*
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/employee/SGA.aspx");
    }*/
}