<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-weight: normal;
            font-size: medium;
        }
        .auto-style4 {
            text-align: right;
            font-weight: normal;
            font-size: medium;
            margin:auto;
        }
    </style>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <h5  class="auto-style4"><strong style="font-size: large">مرحبا&nbsp; <asp:Label ID="Label1" runat="server" Text='<%# Session["ArbnName"].ToString() %>'> </asp:Label>
        </strong></h5>
    <p class="auto-style4">
        <span class="auto-style3"><strong>
        <asp:Button ID="Button1" runat="server" class="log-btn" Text="ITadmin" OnClick="Button1_Click" />
        </strong></span></p>
    <h5 class="auto-style2"><span class="auto-style3"><strong>احدث الطلبات</strong></span><br class="auto-style1" />
    </h5>
    <p class="auto-style2">
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visitormanagementConnectionString %>" SelectCommand="SELECT TOP 5
v.visitor_id, 
v.visitor_Fname+' '+v.visitor_family_name as name ,
r.request_id, 
r.request_date,
s.empstatus_name,r.user_name
from visitor v, requests r ,status s 
where v.request_id=r.request_id and s.status_id=r.status_id
and ([user_id] = @empNo) 
order by v.[visitor_table_id] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="empNo" SessionField="empNO" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="request_id" DataSourceID="SqlDataSource1" CellPadding="4" style="margin:auto; text-align: justify;" Width="900px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="empstatus_name" HeaderText="حالة الطلب" SortExpression="empstatus_name"  ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center" >
<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="request_date" HeaderText="تاريخ الطلب" SortExpression="request_date"  ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="اسم الزائر" HeaderStyle-CssClass="text-center" SortExpression="name" ReadOnly="True" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="request_id" HeaderText="رقم الطلب" SortExpression="request_id" HeaderStyle-CssClass="text-center" InsertVisible="False" ReadOnly="True" >

<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="user_name" HeaderText="اسم الموظف صاحب الطلب" HeaderStyle-CssClass="text-center" SortExpression="user_name" >
       
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
       
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</asp:Content>
<%--  --%>
<%--  --%><%--  --%><%--  --%><%--  --%><%--  --%>