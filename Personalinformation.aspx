<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Personalinformation.aspx.cs" Inherits="SGA_SGAnewrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="../../App_Themes/Theme1/css/templatemo_justified.css" rel="stylesheet" />
   
     
   <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
               text-align: center;
           height: 50px;
        }
     
            .auto-style2{
                               text-align: right;
color:#ff0000;
                        }
        
        .vimage {
              text-align: center;
           height: 20px;
       }
                           
       .active {}
                    
       </style>
<%--    --%>
    
   
</asp:Content>
<%--  --%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    
  
    <p style="margin-top: -10px; direction: rtl; height: 32px; width: 1175px; text-align: center;" >
        &nbsp;</p>

       
            <p style="margin-top: -10px; direction: rtl; height: 38px;" class="auto-style1">طلب زائر</p>
   

    <br />
  
             <p style="font-size:25px"; color:"red"; class="auto-style2"> &nbsp;حسب إجراءات الأمن والسلامة في الأمانة العامة , يجب إدخال جميع أسماء الوفد
   
                 </p>


   
          <br /><br />
          
   
          
        

    <asp:GridView ID="GridView2"  ShowHeaderWhenEmpty="True" Datakeynames="visitor_table_id" OnRowCommand ="GridView2_RowCommand"    ShowFooter="True"  runat="server"  AutoGenerateColumns="False"  BorderStyle="None" BorderWidth="1px" CellPadding="4" style="text-align: center ;margin:auto" Width="916px" BackColor="White" BorderColor="#DEDFDE" ForeColor="Black" GridLines="Vertical"  >
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />


        <AlternatingRowStyle BackColor="White" />


        <Columns> 

             <asp:TemplateField HeaderText="  الجنسية ">
                 
     <ItemTemplate>
         <asp:Label Text='<%# Eval("country_name") %>' runat="server" />
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="country_name" runat="server"></asp:TextBox>
     </EditItemTemplate>

               <FooterTemplate>
                     <asp:DropDownList ID="country" runat="server" >
                         
  <asp:ListItem Value="السعودية" Selected="True"> السعودية</asp:ListItem>
     <asp:ListItem Value="ألبانيا">ألبانيا</asp:ListItem>
    <asp:ListItem Value="ألبانيا">ألبانيا</asp:ListItem>

    <asp:ListItem Value="الجزائر">الجزائر</asp:ListItem>

    <asp:ListItem Value="اندورا">اندورا</asp:ListItem>

    <asp:ListItem Value="انغولا">انغولا</asp:ListItem>

    <asp:ListItem Value="الأرجنتين">الأرجنتين</asp:ListItem>

    <asp:ListItem Value="أرمينيا">أرمينيا</asp:ListItem>

    <asp:ListItem Value="أستراليا">أستراليا</asp:ListItem>

    <asp:ListItem Value="النمسا">النمسا</asp:ListItem>

    <asp:ListItem Value="أذربيجان">أذربيجان</asp:ListItem>

    <asp:ListItem Value="البحرين">البحرين</asp:ListItem>

    <asp:ListItem Value="بنجلاديش">بنجلاديش</asp:ListItem>

    <asp:ListItem Value="بلغاريا">بلغاريا</asp:ListItem>

    <asp:ListItem Value="بلجيكا">بلجيكا</asp:ListItem>

    <asp:ListItem Value="بيليز">بيليز</asp:ListItem>

    <asp:ListItem Value="بنين">بنين</asp:ListItem>

    <asp:ListItem Value="بوليفيا">بوليفيا</asp:ListItem>

    <asp:ListItem Value="البوسنة والهرسك">البوسنة والهرسك</asp:ListItem>

    <asp:ListItem Value="بوتسوانا">بوتسوانا</asp:ListItem>

    <asp:ListItem Value="البرازيل">البرازيل</asp:ListItem>

    <asp:ListItem Value="كامبوديا">كامبوديا</asp:ListItem>

    <asp:ListItem Value="الكاميرون">الكاميرون</asp:ListItem>

    <asp:ListItem Value="كندا">كندا</asp:ListItem>

    <asp:ListItem Value="الرأسالاخضر">الرأسالاخضر </asp:ListItem>

    <asp:ListItem Value="جمهوريةافريقياالوسطى">جمهوريةافريقياالوسطى</asp:ListItem>

    <asp:ListItem Value="تشاد">تشاد</asp:ListItem>

    <asp:ListItem Value="شيلي">شيلي</asp:ListItem>

    <asp:ListItem Value="الصين">الصين</asp:ListItem>

    <asp:ListItem Value="كولومبيا">كولومبيا</asp:ListItem>

    <asp:ListItem Value="جزر القمر">جزر القمر</asp:ListItem>

    <asp:ListItem Value="الدنمارك">الدنمارك</asp:ListItem>

    <asp:ListItem Value="جيبوتي">جيبوتي</asp:ListItem>

    <asp:ListItem Value="دومنيكان">دومنيكان</asp:ListItem>

    <asp:ListItem Value="مصر">مصر</asp:ListItem>

    <asp:ListItem Value="السلفادور">السلفادور</asp:ListItem>

    <asp:ListItem Value="اثيوبيا">اثيوبيا</asp:ListItem>

    <asp:ListItem Value="اريتريا">اريتريا</asp:ListItem>

    <asp:ListItem Value="جزرفيجي">جزرفيجي</asp:ListItem>

    <asp:ListItem Value="فنلندا">فنلندا </asp:ListItem>

    <asp:ListItem Value="فرنسا">فرنسا</asp:ListItem>

    <asp:ListItem Value="الغابون">الغابون</asp:ListItem>

    <asp:ListItem Value="غامبيا">غامبيا </asp:ListItem>

    <asp:ListItem Value="جورجيا">جورجيا</asp:ListItem>

    <asp:ListItem Value="ألمانيا">ألمانيا</asp:ListItem>

    <asp:ListItem Value="غينيا">غينيا</asp:ListItem>

    <asp:ListItem Value="الهند">الهند</asp:ListItem>

    <asp:ListItem Value="إندونيسيا">إندونيسيا</asp:ListItem>

    <asp:ListItem Value="العراق">العراق</asp:ListItem>

    <asp:ListItem Value="إيرلندا">إيرلندا</asp:ListItem>

    <asp:ListItem Value="إيطاليا">إيطاليا</asp:ListItem>

    <asp:ListItem Value="اليابان">اليابان</asp:ListItem>

    <asp:ListItem Value="الأردن">الأردن</asp:ListItem>

    <asp:ListItem Value="كازاخستان">كازاخستان</asp:ListItem>

    <asp:ListItem Value="كينيا">كينيا</asp:ListItem>

    <asp:ListItem Value="كوريا">كوريا</asp:ListItem>

    <asp:ListItem Value="الكويت">الكويت</asp:ListItem>

    <asp:ListItem Value="لبنان">لبنان</asp:ListItem>

    <asp:ListItem Value="ليختشتاين">ليختشتاين </asp:ListItem>

    <asp:ListItem Value="ليتوانيا">ليتوانيا</asp:ListItem>

    <asp:ListItem Value="لوكسبورغ">لوكسبورغ</asp:ListItem>

    <asp:ListItem Value="ماكو">ماكو</asp:ListItem>

    <asp:ListItem Value="مقدونيا">مقدونيا </asp:ListItem>

    <asp:ListItem Value="مدغشقر">مدغشقر</asp:ListItem>

    <asp:ListItem Value="مالاوى">مالاوى </asp:ListItem>

    <asp:ListItem Value="ماليزيا">ماليزيا</asp:ListItem>

    <asp:ListItem Value="المالديف">المالديف</asp:ListItem>

    <asp:ListItem Value="مالي">مالي</asp:ListItem>

    <asp:ListItem Value="مالطا">مالطا</asp:ListItem>

    <asp:ListItem Value="مارشال"> مارشال  </asp:ListItem>

    <asp:ListItem Value="موريتانيا">موريتانيا </asp:ListItem>

    <asp:ListItem Value="موريشوس">موريشوس</asp:ListItem>

    <asp:ListItem Value="المكسيك">المكسيك</asp:ListItem>

    <asp:ListItem Value="مولدوفيا">مولدوفيا </asp:ListItem>

    <asp:ListItem Value="موناكو">موناكو </asp:ListItem>

    <asp:ListItem Value="منغوليا">منغوليا</asp:ListItem>

    <asp:ListItem Value="مونتنيغرو">مونتنيغرو </asp:ListItem>

    <asp:ListItem Value="المغرب">المغرب</asp:ListItem>

    <asp:ListItem Value="الموزبيق">الموزبيق</asp:ListItem>
    <asp:ListItem Value="ناميبيا">ناميبيا </asp:ListItem>

    <asp:ListItem Value="ناورو">ناورو </asp:ListItem>

    <asp:ListItem Value="نيبال">نيبال</asp:ListItem>

    <asp:ListItem Value="هولندا">هولندا</asp:ListItem>

    <asp:ListItem Value="نيوزلاندا" >نيوزلاندا </asp:ListItem>

    <asp:ListItem Value="نيكاراغوا">نيكاراغوا </asp:ListItem>

    <asp:ListItem Value="النيجر">النيجر</asp:ListItem>

    <asp:ListItem Value="نيجيريا">نيجيريا</asp:ListItem>

    <asp:ListItem Value="النرويج">النرويج</asp:ListItem>

    <asp:ListItem Value="عمان">عمان</asp:ListItem>

    <asp:ListItem Value="باكستان">باكستان</asp:ListItem>

    <asp:ListItem Value="بالو">بالو </asp:ListItem>

    <asp:ListItem Value="بنما">بنما </asp:ListItem>

    <asp:ListItem Value=" غينيا"> غينيا  </asp:ListItem>

    <asp:ListItem Value="باراغواي">باراغواي </asp:ListItem>

    <asp:ListItem Value="بيرو">بيرو</asp:ListItem>

    <asp:ListItem Value="الفليبين">الفليبين </asp:ListItem>

   <asp:ListItem Value="فلسطين">فلسطين</asp:ListItem>

    <asp:ListItem Value="بولندا">بولندا</asp:ListItem>

    <asp:ListItem Value="البرتغال">البرتغال</asp:ListItem>

    <asp:ListItem Value="قطر">قطر  </asp:ListItem>

    <asp:ListItem Value="رومانيا">رومانيا</asp:ListItem>

    <asp:ListItem Value="رواندا">رواندا </asp:ListItem>

    <asp:ListItem Value="سان كيتس اند نيفز">سان كيتس اند نيفز </asp:ListItem>

    <asp:ListItem Value="سان لوتشيا">سان لوتشيا </asp:ListItem>

    <asp:ListItem Value="ساموا">ساموا </asp:ListItem>

    <asp:ListItem Value="سان مارينو">سان مارينو </asp:ListItem>

    <asp:ListItem Value="السعودية">  السعودية</asp:ListItem>

    <asp:ListItem Value="السنغال">السنغال</asp:ListItem>

    <asp:ListItem Value="جزر سيشل">جزر سيشل </asp:ListItem>

    <asp:ListItem Value="سيراليون">سيراليون </asp:ListItem>

    <asp:ListItem Value="سنغافورة">سنغافورة </asp:ListItem>

    <asp:ListItem Value="سلوفاكيا">سلوفاكيا</asp:ListItem>

    <asp:ListItem Value="سلوفينيا">سلوفينيا</asp:ListItem>

    <asp:ListItem Value="جزر سولومون">جزر سولومون  </asp:ListItem>

    <asp:ListItem Value="الصومال">الصومال</asp:ListItem>

    <asp:ListItem Value="جنوب أفريقيا">جنوب أفريقيا </asp:ListItem>

    <asp:ListItem Value="إسبانيا">إسبانيا</asp:ListItem>

    <asp:ListItem Value="السودان">السودان</asp:ListItem>

    <asp:ListItem Value="سوازيلاند">سوازيلاند </asp:ListItem>

    <asp:ListItem Value="السويد">السويد</asp:ListItem>

    <asp:ListItem Value="سوازيلاند">سوازيلاند </asp:ListItem>

    <asp:ListItem Value="سوريا">سوريا</asp:ListItem>

    <asp:ListItem Value="تايوان">تايوان</asp:ListItem>

    <asp:ListItem Value="طاجكستان">طاجكستان </asp:ListItem>

    <asp:ListItem Value="تانزانيا">تانزانيا</asp:ListItem>

    <asp:ListItem Value="تايلاند">تايلاند</asp:ListItem>

    <asp:ListItem Value="توغو">توغو </asp:ListItem>

    <asp:ListItem Value="تونغا">تونغا </asp:ListItem>

    <asp:ListItem Value="ترينداد وتوباغو "> ترينداد وتوباغو  </asp:ListItem>

    <asp:ListItem Value="تـونس">تـونس</asp:ListItem>

    <asp:ListItem Value="تركيا">تركيا</asp:ListItem>

    <asp:ListItem Value="تركمانستان">تركمانستان</asp:ListItem>

    <asp:ListItem Value="توفالو">توفالو </asp:ListItem>

    <asp:ListItem Value="أوغندا">أوغندا</asp:ListItem>

    <asp:ListItem Value="اوكرانيا">اوكرانيا </asp:ListItem>

    <asp:ListItem Value="الإمارات العربية المتحدة">الإمارات العربية المتحدة </asp:ListItem>

    <asp:ListItem Value="المملكة المتحدة">المملكة المتحدة </asp:ListItem>

    <asp:ListItem Value="الولايات المتحدة الامريكية">الولايات المتحدة الامريكية </asp:ListItem>

    <asp:ListItem Value="اورغواي">اورغواي </asp:ListItem>

    <asp:ListItem Value="اوزباكستان">اوزباكستان </asp:ListItem>

    <asp:ListItem Value="فانواتو">فانواتو </asp:ListItem>

    <asp:ListItem Value="فنزويلا">فنزويلا</asp:ListItem>

    <asp:ListItem Value="اليمن">اليمن</asp:ListItem>

    <asp:ListItem Value="زامبيا">زامبيا </asp:ListItem>

    <asp:ListItem Value="زيمبابوى">زيمبابوى </asp:ListItem>
                  </asp:DropDownList>
                      
               </FooterTemplate>

           </asp:TemplateField>

 <asp:TemplateField HeaderText=" جهة العمل ">

     <ItemTemplate>
         
         <asp:Label Text='<%# Eval("place_of_work") %>' runat="server" />
         
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="place_of_work" runat="server"></asp:TextBox>
  
     </EditItemTemplate>
     
               <FooterTemplate>
                     <asp:TextBox ID="place_of_workFooter" runat="server"/>
             
               </FooterTemplate>

           </asp:TemplateField>



           <asp:TemplateField HeaderText=" رقم الجوال">

                    <ItemTemplate>
         <asp:Label Text='<%# Eval("visitor_mobile") %>' runat="server" />
     </ItemTemplate>

     <EditItemTemplate>
         <asp:TextBox ID="visitor_mobile"  runat="server"></asp:TextBox>
     </EditItemTemplate>


               <FooterTemplate>
                     <asp:TextBox ID="visitorMobileFooter" runat="server"/>
               </FooterTemplate>

           </asp:TemplateField>


  

           <asp:TemplateField HeaderText=" إسم العائلة">
             

                    <ItemTemplate>
         <asp:Label Text='<%# Eval("visitor_family_name") %>' runat="server" />
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="visitor_family_name" runat="server"></asp:TextBox>
     </EditItemTemplate>


               <FooterTemplate>
                     <asp:TextBox ID="FamilyNameFooter" runat="server"/>
               </FooterTemplate>

           </asp:TemplateField>



           <asp:TemplateField HeaderText=" إسم الأب">

               
                    <ItemTemplate>
         <asp:Label Text='<%# Eval("visitor_Mname") %>' runat="server" />
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="visitor_Mname" runat="server"></asp:TextBox>
     </EditItemTemplate>

               <FooterTemplate>
                     <asp:TextBox ID="MNameFooter" runat="server"/>
               </FooterTemplate>

           </asp:TemplateField>




           <asp:TemplateField HeaderText="الإسم الأول">

               
                    <ItemTemplate>
         <asp:Label Text='<%# Eval("visitor_Fname") %>' runat="server" />
                         
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="visitor_Fname" runat="server"></asp:TextBox>
     </EditItemTemplate>
               <FooterTemplate>
                     <asp:TextBox ID="FirstNameFooter" runat="server"/>
               </FooterTemplate>

           </asp:TemplateField>


            <asp:TemplateField > 
                
              
                              <ItemTemplate>
                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" CommandArgument='<%# Eval("visitor_table_id") %>'  Text="حذف" BackColor="Black" Font-Underline="true" />

              </ItemTemplate>
               
                            
                 
                <FooterTemplate> <asp:ImageButton Imageurl="~/صور/add-user.png" runat="server" CommandName="Add" Tolltip="Add" Width="20px" Height="20px" CausesValidation="true" />
          </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

<br />
    <asp:Label ID="SuccessMessage" Text="" runat="server" ForeColor="Green" />
    <br />
        <asp:Label ID="ErrorMessage" Text="" runat="server" ForeColor="red" />

    

    <asp:Button ID="Button1" runat="server" class="log-btn" Text="طلب" style="margin-left:30px"  OnClick="Button1_Click1"  />

                







</asp:Content>


