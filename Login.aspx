<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>



<!DOCTYPE html>
<html>
    
 <head runat="server">
      
  <meta charset="utf-8">
    
    <title> صفحة دخول نظام إدارة الزوار
   
     </title>
     <link href="../App_Themes/Theme1/css/style.css" rel="stylesheet" />
    
        
     <style type="text/css">
         .auto-style1 {
             height: 135px;
         }
     </style>
    
        
    </head>
    


<body class="loginbg">
        <form id="form1" runat="server">
<div class="login-body">
 
 
      
  
  <div class="user-wrapper">
    

    
    <div class="user-login">

    <asp:TextBox ID="TextBox1" runat="server" placeholder="الرقم الوظيفي" /><span><i class="fa fa-user"></i></span> 



    </div>


   
     
    <div class="user-login2">   
        <asp:TextBox ID="TextBox2" runat="server" placeholder="الرقم السري" TextMode="Password"/><span><i class="fa fa-unlock-alt"></i></span>
  </div>
                <script type="text/javascript">


                    function CreateWaterMark(defaultText, textBoxControl) {
                        if (textBoxControl.value.length == 0) { textBoxControl.style.color = "gray"; textBoxControl.value = defaultText; }
                    }
                    function ClearWaterMark(defaultText, textBoxControl) {
                        if (textBoxControl.value == defaultText) { textBoxControl.style.color = "black"; textBoxControl.value = ""; }
                    }




            </script>
   
    <asp:Button ID="Button1" runat="server" class="log-btn" Text="تسجيل الدخول" OnClick="Button1_Click" />

    </div>  
    </div>
</form>
         <p>
            <img class="auto-style1" src="images/Logoo.png" style="margin-left:990px" height:"2500px" width:"200px"/></p>
</body>
  
</html>

