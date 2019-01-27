<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Newrequest.aspx.cs" Inherits="SGA_SGAnewrequest" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="../../App_Themes/Theme1/css/templatemo_justified.css" rel="stylesheet" />
   <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
               text-align: center;
           height: 50px;
        }
        .vimage {
              text-align: center;
           height: 20px;
       }
       .auto-style11 {
           font-size: medium;
           margin-top: 0px;text-align: center;
       }
                           
       .auto-style39 {
           height: 23px;text-align: center;
       }
       .auto-style40 {
           height: 23px;text-align: center;
           width: 144px;
       }
       .auto-style41 {
           width: 144px;text-align: center;
       }
       .auto-style42 {
           text-align: center;
           direction: rtl;
       }
                           
       .auto-style48 {
           text-align: center;
           direction: rtl;
           height: 69px;
       }
       .auto-style49 {
           width: 144px;
           text-align: center;
           height: 69px;
       }
                    
       .auto-style50 {
           height: 23px;
           text-align: right;
       }
       .auto-style52 {
           text-align: center;
           direction: rtl;
           width: 201px;
       }
       .auto-style53 {
           text-align: center;
           direction: rtl;
           color: #FF0000;
       }
       .auto-style54 {
           width: 144px;
           text-align: center;
           color: #FF0000;
       }
       .auto-style55 {
           text-align: center;
           direction: rtl;
           height: 28px;
       }
       .auto-style56 {
           width: 144px;
           text-align: center;
           height: 28px;
       }
                    
       .auto-style59 {
           text-align: center;
           direction: rtl;
           height: 28px;
           color: #FF0000;
       }
                    
       .auto-style60 {
           height: 26px;
       }
                    
       .active {}
                    
       .auto-style63 {
           height: 23px;
       }
                           
    </style>
<%--    --%>
</asp:Content>
<%--  --%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <p style="margin-top: -10px; direction: rtl; height: 32px; width: 1175px; text-align: center;" >
        &nbsp;</p>

       
       
            <p style="margin-top: -10px; direction: rtl; height: 38px;" class="auto-style1">طلب زائر</p>
    <p style="margin-top: -10px; direction: rtl; height: 77px;" class="auto-style1">
        <asp:Button ID="Button7" class="log-btn" runat="server" OnClick="Button7_Click" Text="زيارات VIP" style="text-align: left" />
    </p>

       
     
      <table align="center" style="border-style: solid; font-family:myfont;border-width: 1px; padding: 1px 4px; background-color: #F0F0F0; width: 696px; height: 1092px;">
        
          <tr>
              <td  colspan="3">&nbsp;</td>
          </tr>
          <tr>
                <td colspan="3" style="border-style: dotted; border-width: 1px; padding: 1px 4px; text-align: center;">
                    <strong>معلومات مقدم الطلب</strong></td>
             
                 </td>
          </tr>
          <tr>
              <td  colspan="3" class="auto-style50"></td>
          </tr>
          <td class="auto-style39"> 
                &nbsp;</td>
          <td class="auto-style39"> 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td><td class="auto-style40">اسم مقدم الطلب</td>
          <tr>
              <td class="auto-style42">
                  &nbsp;</td>
              <td class="auto-style42">
                  <asp:TextBox ID="TextBox11" runat="server"  ></asp:TextBox>
                </td><td class="auto-style41">رقم التحويلة </td>
          </tr>


          
          <tr>
              <td class="auto-style42">
                  &nbsp;</td>
              <td class="auto-style42">
                  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

              
              </td><td class="auto-style41">القطاع</td>
          </tr>


          
          <tr>
              <td colspan="3" style="border-style: dotted; border-width: 1px; padding: 1px 4px; text-align: center;"><strong>تفاصيل الزيارة</strong></td>
          </tr>
          <tr>
              <td colspan="3" class="auto-style63"></td>
          </tr>
          <tr>
              <td class="auto-style53">
                  *</td>
              <td class="auto-style42">
                                       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                   <ContentTemplate>

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style11">
                 <asp:ListItem Text="زيارة قصيرة" Value="short"> </asp:ListItem>
                 <asp:ListItem Text="زيارة طويلة" Value="long"></asp:ListItem>
                 </asp:DropDownList></ContentTemplate> </asp:UpdatePanel> </td><td class="auto-style41">نوع الطلب</td>
          </tr>
          <tr>
              <td class="auto-style53">  
                  *</td>
              <td class="auto-style42"> 

                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                 <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="التاريخ" CssClass="auto-style11" Height="28px" />
                  <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style11" ></asp:TextBox> 

               

                      <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px" ondayrender="Calendar1_DayRender" >
                          <dayheaderstyle backcolor="#CCCCCC" font-bold="True" font-size="7pt" />
                          <nextprevstyle verticalalign="Bottom" />
                          <othermonthdaystyle forecolor="#808080" />
                          <selecteddaystyle backcolor="#666666" font-bold="True" forecolor="White" />
                          <selectorstyle backcolor="#CCCCCC" />
                          <titlestyle backcolor="#999999" bordercolor="Black" font-bold="True" />
                          <todaydaystyle backcolor="#CCCCCC" forecolor="Black" />
                          <weekenddaystyle backcolor="#FFFFCC" />
                      </asp:Calendar>
                            </ContentTemplate>
   </asp:UpdatePanel>
               </td><td class="auto-style41">تاريخ بداية الزيارة</td>
          </tr>
          <tr>
       
              <td class="auto-style53"> 
                  *</td>
              <td class="auto-style42"> 
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                 <asp:Button ID="Button6" runat="server" OnClick="Button6_Click1" Text="إلى" CssClass="auto-style11" Visible="False" />
                 
                 <asp:TextBox ID="TextBox10" runat="server"  CssClass="auto-style11" Visible="False"></asp:TextBox>
                  
                 <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="200px" ondayrender="Calendar2_DayRender">
                     <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                     <NextPrevStyle VerticalAlign="Bottom" />
                     <OtherMonthDayStyle ForeColor="#808080" />
                     <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                     <SelectorStyle BackColor="#CCCCCC" />
                     <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                     <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <WeekendDayStyle BackColor="#FFFFCC" />
                 </asp:Calendar></td><td class="auto-style41">
                      
</ContentTemplate>
                   </asp:UpdatePanel>    
              </td>
          </tr> 
                  
             
  
  
          <tr>
              <td class="auto-style59"> *</td>
              
              <td class="auto-style55"> <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style11" ></asp:TextBox> 
                 </td><td class="auto-style56">سبب الزيارة</td>
          </tr>

                

          <tr>
              <td  colspan="3" class="auto-style60"> &nbsp;</td>
          </tr>
         
          <tr>
              <td class="auto-style48"> 
                  &nbsp;</td>
              <td class="auto-style48"> 
                  <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                      <ContentTemplate>
            <asp:FileUpload ID="FileUpload1" runat="server" style=" margin-right:55px;" CssClass="auto-style11" Height="21px" Width="294px" Visible="False" /> 
          <asp:Label ID="Label2" runat="server" Height="42px" style="margin-top:10px" Text="الصورة الشخصية" Width="100px" Font-Size="small" Visible="False"></asp:Label>


              
               </td><td class="auto-style49">
                          <asp:FileUpload ID="FileUpload2" runat="server" style=" margin-right:55px; margin-top: 14px; " CssClass="auto-style11" Height="25px" Width="294px" Visible="False"  /> 


          <asp:Label ID="Label3" runat="server" Height="40px" Text="صورة الهوية" CssClass="active" Font-Size="small" Visible="False"></asp:Label>

              </td>
          </tr>
                  </ContentTemplate></asp:UpdatePanel>


      <tr>
                <td colspan="3" style="text-align: center;" class="auto-style63">
                <asp:Button ID="Button8" runat="server" class="log-btn"  OnClick="Button8_Click" Style="margin-left:70px" Text="التالي"  />


                </td>
          </tr>
                









          <tr>
              <td class="auto-style52"> 
                  &nbsp;</td>
              <td class="auto-style53"> 
                  &nbsp;</td><td class="auto-style54">حقول مطلوبة *</td>
          </tr>



          <tr>
              <td class="auto-style42" colspan="2"> 
                                
             
                
                 <asp:Button ID="Button2" class="log-btn" runat="server" Text="عودة" style="margin-left:40px" OnClick="Button2_Click"  />

                
               </td><td class="auto-style41">&nbsp;</td>
          </tr>
             </table>
    
</asp:Content>




