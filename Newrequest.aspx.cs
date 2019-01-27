using System;
using System.Collections;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class SGA_SGAnewrequest : System.Web.UI.Page
{
    
    string conString = ConfigurationManager.ConnectionStrings["visitormanagementConnectionString"].ConnectionString;
    string GccEmpsConnectionString = ConfigurationManager.ConnectionStrings["GccEmpsConnectionString"].ConnectionString;

    protected void Button8_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(conString);
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {
            if (TextBox11.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" )
            {
                if (FileUpload1.PostedFile != null)
                {
                    if (FileUpload2.PostedFile != null)
                    {
                        string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                        string FileName1 = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                        //Save files to disk
                        FileUpload1.SaveAs(Server.MapPath("/upload/" + FileName));
                        FileUpload2.SaveAs(Server.MapPath("/identification/" + FileName1));

                        String q = "Insert into dbo.requests(request_type,visit_date,reason,request_date,status_id,user_id,user_name,secName,depName,FileName,FilePath,End_vdate,FileName1,FilePath1,RequestNotes,VisitorType)values(N'" + DropDownList1.SelectedValue + "',N'" + TextBox8.Text + "',N'" + TextBox9.Text + "','" + DateTime.Now + "','4','" + Session["empNo"] + "',N'" + Session["ArbnName"] + "' ,N'"+Session["secName"] +"',N'"+Session["secName"] +"', @FileName , @FilePath ,N'" + TextBox10.Text + "',@FileName1 , @FilePath1)";
                        SqlCommand cmd = new SqlCommand(q, con);
                        cmd.Parameters.AddWithValue("@FileName", FileName);
                        cmd.Parameters.AddWithValue("@FilePath", "/upload/" + FileName);
                        cmd.Parameters.AddWithValue("@FileName1", FileName1);
                        cmd.Parameters.AddWithValue("@FilePath1", "/identification/" + FileName1);
                        cmd.CommandType = CommandType.Text;
                        cmd.ExecuteNonQuery();

                    }
                }

                else
                {
                    String q = "Insert into dbo.requests(request_type,visit_date,reason,request_date,status_id,user_id,user_name,secName,depName,End_vdate,phone_ext)values(N'" + DropDownList1.SelectedValue + "',N'" + TextBox8.Text + "',N'" + TextBox9.Text + "','" + DateTime.Now + "','4','" + Session["empNo"] + "' ,N'" + Session["ArbnName"] + "',N'" + Session["secName"] + "',N'" + Session["depName"] + "',N'" + TextBox10.Text + "','" + TextBox11.Text.ToString() + "')";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                }
                Server.Transfer("Personalinformation.aspx");
                
            }
            else
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' هناك حقول مطلوبة فارغة  ');</script>");

            }
                String c = "Insert into dbo.logFile(user_id,transaction_date,action_type) values ('" + Session["empNo"] + "', '" + DateTime.Now + "' ,N' طلب قبول زائر') ";
                SqlCommand cmdc = new SqlCommand(c, con);
                cmdc.ExecuteNonQuery();
                con.Close();
              
                
            }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0) //index of long visit
        {
            FileUpload1.Visible = false;
            FileUpload2.Visible = false;
           
            Button6.Visible = false;
            TextBox10.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
        }

        else
        {
            FileUpload1.Visible = true;
            FileUpload2.Visible = true;
            Button6.Visible = true;
            TextBox10.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {  
      if (Session["empNo"] == null)
        {
            Response.Redirect("/Login.aspx");
        } 
      
      Label1.Text = Session["ArbnName"].ToString();
      Label4.Text = Session["secName"].ToString();
      Label5.Text = Session["depName"].ToString();

        string conString = ConfigurationManager.ConnectionStrings["visitormanagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(conString);
        con.Open();
        string query = "SELECT type_name FROM usersPremission where user_id='" + (int)Session["empNo"] + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string type = (string)cmd.ExecuteScalar();

        SqlDataReader sdr = cmd.ExecuteReader();


        if (sdr.HasRows)
        {
            if (type == "SGA")
            {
                Button7.Visible = true;
            }
            else
            {
                Button7.Visible = false;
            }

        }
        else
        {
            Button7.Visible = false;
        }
      

        con.Close();
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox8.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox10.Text = Calendar2.SelectedDate.ToString("MM/dd/yyyy");
        Calendar2.Visible = false;
    }

    protected void Button6_Click1(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

  /*  protected void TxtBox5_KeyPress(object sender, KeyPressEventArgs e)
    {
        char ch = e.KeyChar;
        if (!Char.IsDigit(ch) && ch != 8)
        {
            e.Handled = true;
        }
    }*/

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("SGA.aspx");
    }



    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
    }

    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
    }

}

