<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Myrequests.aspx.cs" Inherits="Myrequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        a{
            color:black;
            text-decoration:none;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visitormanagementConnectionString %>" SelectCommand="select 
v.visitor_table_id,
v.visitor_Fname+' '+
v.visitor_Mname+' '+
v.visitor_family_name as name, 
r.request_id, 
r.request_date,
s.empstatus_name,r.user_name
from visitor v, requests r ,status s 
where v.request_id=r.request_id and s.status_id=r.status_id  and r.user_id=@empNO
order by v.[visitor_table_id] DESC" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:SessionParameter Name="empNO" SessionField="empNO" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br /><br /><br />

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin:auto;width:90%;height:213px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical"  >

        <AlternatingRowStyle BackColor="White" />

        <Columns>
           
                

<asp:TemplateField HeaderText="عرض التفاصيل" HeaderStyle-CssClass="text-center">
    

                    <ItemTemplate>
                    
                         <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="black" Font-Underline="True" NavigateUrl='<%# String.Format("~/employee/details.aspx?visitor_table_id={0}",DataBinder.Eval (Container,"DataItem.visitor_table_id"))%>'  >
                            عرض           
                        </asp:HyperLink>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>

               <asp:BoundField DataField="empstatus_name" HeaderText="حالة الطلب" HeaderStyle-CssClass="text-center" SortExpression="empstatus_name" >
           
                
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
           
                
     <asp:BoundField DataField="name" HeaderText="اسم الزائر" HeaderStyle-CssClass="text-center" SortExpression="name" ReadOnly="True" >
              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="request_date" HeaderText="تاريخ الطلب" HeaderStyle-CssClass="text-center" SortExpression="request_date" >
              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="request_id" HeaderText="رقم الطلب" HeaderStyle-CssClass="text-center" SortExpression="request_id" InsertVisible="False" ReadOnly="True" >
              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>


           

        </Columns>

        <EmptyDataTemplate>
            عرض
        </EmptyDataTemplate>
        
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
      <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    



    <br />
<br />
    </asp:Content>

