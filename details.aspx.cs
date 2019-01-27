using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Configuration;
public partial class details : System.Web.UI.Page
{

    string conString = ConfigurationManager.ConnectionStrings["visitormanagementConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["empNo"] == null)
        {
            Response.Redirect("/login.aspx");
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Myrequests.aspx");
    }








    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            string query = "SELECT r.request_type FROM requests r,visitor v where r.request_id=v.request_id and v.visitor_table_id= @visitor_table_id ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@visitor_table_id", Request.QueryString["visitor_table_id"]);

            string type = (string)cmd.ExecuteScalar();

            if (type == "short")
            {
                e.Row.Cells[0].Visible = false;
                e.Row.Cells[1].Visible = false;
            }

    }
}