using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    string conString = ConfigurationManager.ConnectionStrings["visitormanagementConnectionString"].ConnectionString;

    
    protected void Button1_Click(object sender, EventArgs e)
    {



        if (TextBox1.Text == "" && TextBox2.Text == "")
      
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' يرجى إدخال اسم المستخدم وكلمة المرور  ');</script>");


        else if (TextBox1.Text != "" && TextBox2.Text == "")
       
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' يرجى إدخال  كلمة المرور  ');</script>");


        else if (TextBox1.Text == "" && TextBox2.Text != "")
           Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('يرجى إدخال  اسم المستخدم  ');</script>");

        try
        {
            AuthenticationServiceReference.Employ employ = new AuthenticationServiceReference.AuthenticationSoapClient().FullAuthenticate(TextBox1.Text, TextBox2.Text, System.Configuration.ConfigurationManager.AppSettings["UserName"].ToString(), System.Configuration.ConfigurationManager.AppSettings["Password"].ToString()); // your password 
            Session["empNo"] = employ.EmpNo;
            Session["ArbnName"] = employ.ArabicName;
            Session["secName"] = employ.SectionText;
            Session["depName"] = employ.DepartmentText;


            SqlConnection con = new SqlConnection(conString);
            con.Open();
            string query = "SELECT type_name FROM usersPremission where user_id='" + (int)Session["empNo"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            string type = (string)cmd.ExecuteScalar();

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                if (type == "security")
                {
                    Response.Redirect("~/security/default.aspx");
                }
                else if (type == "admin")
                {

                    Response.Redirect("~/admin/default.aspx");
                }
                else if (type == "Protocols")
                {

                    Response.Redirect("~/protocols/PDefault.aspx");
                }


                else
                {
                    Response.Redirect("~/employee/default.aspx");
                }
            }
            else
            {
                Response.Redirect("~/employee/default.aspx");
            }

            con.Close();
        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' اسم المستخدم او كلمة المرور غير صحيحة  ');</script>");
        }

        // your user name  System.Configuration.ConfigurationManager.AppSettings["Password"].ToString()); 


    }



  
}

//string c ="select type_user from userpremission where user_id = session ";
//if (hasrow)
// if (type_user == "security")
// response_redirect(security);
// else response_redirect(admin);

        
