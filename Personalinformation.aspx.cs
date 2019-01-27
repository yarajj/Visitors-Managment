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

    /* protected void Button8_Click(object sender, EventArgs e)
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

                         String q = "Insert into dbo.requests(request_type,visit_date,reason,request_date,status_id,user_id,user_name,FileName,FilePath,End_vdate,FileName1,FilePath1,RequestNotes,VisitorType)values(N'" + DropDownList1.SelectedValue + "',N'" + TextBox8.Text + "',N'" + TextBox9.Text + "','" + DateTime.Now + "','4','" + Session["empNo"] + "',N'" + Session["ArbnName"] + "' , @FileName , @FilePath ,N'" + TextBox10.Text + "',@FileName1 , @FilePath1)";
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
                     String q = "Insert into dbo.requests(request_type,visit_date,reason,request_date,status_id,user_id,user_name,End_vdate,phone_ext)values(N'" + DropDownList1.SelectedValue + "',N'" + TextBox8.Text + "',N'" + TextBox9.Text + "','" + DateTime.Now + "','4','" + Session["empNo"] + "' ,N'" + Session["ArbnName"] + "',N'" + TextBox10.Text + "','" + TextBox11.Text.ToString() + "')";
                     SqlCommand cmd = new SqlCommand(q, con);
                     cmd.ExecuteNonQuery();
                     Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('  تم ارسال ,يرجى إكمال البيانات أدناه لتسجيل طلبكم  ');</script>");
                 }
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
     protected void Button1_Click1(object sender, EventArgs e)
     {

         SqlConnection con = new SqlConnection(conString);
         SqlConnection con2 = new SqlConnection(conString);
         con.Open();
         if (con.State == System.Data.ConnectionState.Open)
         {
             if (TextBox3.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" )
             {
                 string query = "SELECT MAX(request_id) FROM requests";
                 SqlCommand comSelect = new SqlCommand(query, con);
                 int Last_request_id = (int)comSelect.ExecuteScalar();
                 comSelect.ExecuteNonQuery();

                 con.Close();
                 con2.Open();
                 if (Last_request_id.ToString() != "")
                 {
                     String a = "Insert into dbo.visitor(visitor_Fname,visitor_Mname,visitor_family_name,visitor_mobile,place_of_work,country_name, request_id,v_group,v_group_num)values(N'" + TextBox1.Text.ToString() + "',N'" + TextBox2.Text.ToString() + "',N'" + TextBox3.Text.ToString() + "',N'" + TextBox5.Text.ToString() + "',N'" + TextBox6.Text.ToString() + "',N'" + DropDownList2.SelectedValue + "','" + Last_request_id.ToString() + "','" + CheckBoxList2.SelectedValue + "','" + TextBox12.Text.ToString() + "')";
                     SqlCommand cmd2 = new SqlCommand(a, con2);
                     cmd2.ExecuteNonQuery();
                 }
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('  تم تسجيل الطلب  ');</script>");
             }
             else
             {
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' هناك حقول مطلوبة فارغة  ');</script>");
             }
             con2.Close();

             TextBox1.Text = "";
             TextBox2.Text = "";
             TextBox3.Text = "";
             TextBox5.Text = "";
             TextBox6.Text = "";


             con.Close();
         }
     }
              /*and another buuton called add its content of the code in the youtube */
    /*protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }*/
    /*
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
          //  Label4.Visible = false;
        }

        else
        {
            FileUpload1.Visible = true;
            FileUpload2.Visible = true;
            Button6.Visible = true;
            TextBox10.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
           // Label4.Visible = true;

        }
    }
    */
    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["empNo"] == null)
        {
            Response.Redirect("/Login.aspx");
        }


        if (!IsPostBack)
        {
            PopulateGridview();
        }







        /*
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
      

             con.Close();*/
    }

    void PopulateGridview()
    {
        DataTable dtble = new DataTable();
        using (SqlConnection con = new SqlConnection(conString))
        {
            con.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("select v.visitor_table_id,v.visitor_Fname,v.visitor_Mname,v.visitor_family_name,v.visitor_mobile,v.place_of_work,v.country_name from visitor v join requests r on r.request_id =v.request_id where  r.request_id =(select MAX(request_id) from requests where user_id='" + (int)Session["empNo"] + "' )", con);
            adapt.Fill(dtble);
        }
        if (dtble.Rows.Count > 0)
        {
            GridView2.DataSource = dtble;
            GridView2.DataBind();
        }
        else 
        {
            dtble.Rows.Add(dtble.NewRow());
            GridView2.DataSource = dtble;
            GridView2.DataBind();
            GridView2.Rows[0].Cells.Clear();
            GridView2.Rows[0].Cells.Add(new TableCell());
            GridView2.Rows[0].Cells[0].ColumnSpan = dtble.Columns.Count;
            GridView2.Rows[0].Cells[0].Text = " بيانات الزائر";
            GridView2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;


        }

    }

    /*
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
    }*/


    /*  protected void TxtBox5_KeyPress(object sender, KeyPressEventArgs e)
      {
          char ch = e.KeyChar;
          if (!Char.IsDigit(ch) && ch != 8)
          {
              e.Handled = true;
          }
      }
    
      protected void Button7_Click(object sender, EventArgs e)
      {
          Response.Redirect("SGA.aspx");
      }

  */
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Add"))
        {

            SqlConnection con = new SqlConnection(conString);
            SqlConnection con2 = new SqlConnection(conString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                try
                {
                    string query = "SELECT MAX(request_id) FROM requests where user_id='" + (int)Session["empNo"] + "' ";
                    SqlCommand comSelect = new SqlCommand(query, con);
                    int Last_request_id = (int)comSelect.ExecuteScalar();
                    comSelect.ExecuteNonQuery();

                    con.Close();
                    con2.Open();
                    if (Last_request_id.ToString() != "")
                    {
                        String a = "Insert into dbo.visitor(visitor_Fname,visitor_Mname,visitor_family_name,visitor_mobile,place_of_work,country_name, request_id)values(@FName,@MName,@FamilyName,@Mobile,@work,@country,'" + Last_request_id.ToString() + "')";
                        SqlCommand cmd2 = new SqlCommand(a, con2);
                        cmd2.Parameters.AddWithValue("@FName", (GridView2.FooterRow.FindControl("FirstNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@MName", (GridView2.FooterRow.FindControl("MNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@FamilyName", (GridView2.FooterRow.FindControl("FamilyNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@work", (GridView2.FooterRow.FindControl("place_of_workFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@country", (GridView2.FooterRow.FindControl("country") as DropDownList).SelectedValue.Trim());
                        cmd2.Parameters.AddWithValue("@Mobile", (GridView2.FooterRow.FindControl("visitorMobileFooter") as TextBox).Text.ToString());
                        cmd2.ExecuteNonQuery();
                        PopulateGridview();

                    }
                }

                catch (SqlException ex)
                {

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' هناك حقول مطلوبة فارغة  ');</script>");
                }
                con2.Close();




                con.Close();
            }
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(conString);
        SqlConnection con2 = new SqlConnection(conString);
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string query = "SELECT MAX(request_id) FROM requests where user_id='" + (int)Session["empNo"] + "' ";
            SqlCommand comSelect = new SqlCommand(query, con);
            int Last_request_id = (int)comSelect.ExecuteScalar();
            comSelect.ExecuteNonQuery();

            con.Close();
            con2.Open();
            if (Last_request_id.ToString() != "")
            {
                try { 
                String a = "Insert into dbo.visitor(visitor_Fname,visitor_Mname,visitor_family_name,visitor_mobile,place_of_work,country_name, request_id)values(@FName,@MName,@FamilyName,@Mobile,@work,@country,'" + Last_request_id.ToString() + "')";
                using (SqlCommand cmd2 = new SqlCommand(a, con2))
                {
                   
                        cmd2.Parameters.AddWithValue("@FName", (GridView2.FooterRow.FindControl("FirstNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@MName", (GridView2.FooterRow.FindControl("MNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@FamilyName", (GridView2.FooterRow.FindControl("FamilyNameFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@Mobile", (GridView2.FooterRow.FindControl("visitorMobileFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@work", (GridView2.FooterRow.FindControl("place_of_workFooter") as TextBox).Text.Trim());
                        cmd2.Parameters.AddWithValue("@country", (GridView2.FooterRow.FindControl("country") as DropDownList).SelectedValue.Trim());
                        cmd2.ExecuteNonQuery();


                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('  تم تسجيل الطلب  ');</script>");
                        Response.Redirect("Myrequests.aspx");
                    }}
                    

                    catch (SqlException ex)
                    {

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' هناك حقول فارغة');</script>");
                    }
                }  con2.Close();
            }
        }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection(conString);
        con2.Open();


        LinkButton butt = (LinkButton)sender;
        int ID = Convert.ToInt32(butt.CommandArgument.ToString());
        string del = "delete from visitor where visitor_table_id =@ID";

        SqlCommand cmd2 = new SqlCommand(del, con2);


        cmd2.Parameters.AddWithValue("@ID", ID);
        cmd2.ExecuteNonQuery();

        GridView2.DataBind();
        PopulateGridview();
        con2.Close();

    }
}


    /*
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        PopulateGridview();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        PopulateGridview();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
            SqlConnection con2 = new SqlConnection(conString);
            
            if (con2.State == System.Data.ConnectionState.Open)
            {
  
                con2.Open();
                    String a = "update dbo.visitor set (visitor_Fname=@FName,visitor_Mname=@MName,visitor_family_name=@FamilyName,visitor_mobile=@Mobile,place_of_work=@work,country_name=@country, request_id=@id)";
                    SqlCommand cmd2 = new SqlCommand(a, con2);
                    cmd2.Parameters.AddWithValue("@FName", (GridView2.Rows[e.RowIndex].FindControl("visitor_Fname") as TextBox).Text.Trim());
                    cmd2.Parameters.AddWithValue("@MName", (GridView2.Rows[e.RowIndex].FindControl("visitor_Mname") as TextBox).Text.Trim());
                    cmd2.Parameters.AddWithValue("@FamilyName", (GridView2.Rows[e.RowIndex].FindControl("visitor_family_name") as TextBox).Text.Trim());
                    cmd2.Parameters.AddWithValue("@Mobile", (GridView2.Rows[e.RowIndex].FindControl("visitor_mobile") as TextBox).Text.Trim());
                    cmd2.Parameters.AddWithValue("@work", (GridView2.Rows[e.RowIndex].FindControl("place_of_work") as TextBox).Text.Trim());
                    cmd2.Parameters.AddWithValue("@country", (GridView2.Rows[e.RowIndex].FindControl("country_name") as DropDownList).SelectedValue.Trim());
                    cmd2.Parameters.AddWithValue("@id",Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString()));
                    cmd2.ExecuteNonQuery();
                    GridView2.EditIndex = -1;
                    PopulateGridview();
                
            }
          


            con2.Close();
        }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
     
        SqlConnection con2 = new SqlConnection(conString);
      
        if (con2.State == System.Data.ConnectionState.Open)
        {
           
            con2.Open();
                if (update_request_id.ToString() != "")
                {
            String a = "delete from dbo.visitor where visitor_mobile="TextBox.=" ";
            SqlCommand cmd2 = new SqlCommand(a, con2);

           
            cmd2.ExecuteNonQuery();
        
            PopulateGridview();
            
            
        }
    }
}
*/

       


