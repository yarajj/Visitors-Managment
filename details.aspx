<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visitormanagementConnectionString %>" SelectCommand="select 
v.visitor_table_id, 
v.visitor_Fname+' '+
v.visitor_Mname+' '+
v.visitor_family_name as name,
visitor_mobile,
r.request_id, 
r.request_date,
visit_date,
reason,
s.empstatus_name,
    r.FileName,
        r.FilePath,r.FilePath1,r.user_name,v.v_group,v.v_group_num
from visitor v, requests r ,status s 
where v.request_id=r.request_id and s.status_id=r.status_id  and r.user_id=@empNO and v.visitor_table_id = @visitor_table_id">
        <SelectParameters>
            <asp:SessionParameter Name="empNO" SessionField="empNo" />
            <asp:QueryStringParameter Name="visitor_table_id" QueryStringField="visitor_table_id" Type="Int32" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource><br /><br /><br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" style="width:90%;height:100px; margin:auto" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"  OnRowDataBound="GridView1_RowDataBound" ForeColor="Black" GridLines="Vertical" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           <asp:ImageField DataImageUrlField="FilePath" HeaderStyle-CssClass="text-center" ControlStyle-Width="100" 
        ControlStyle-Height = "100" HeaderText = "الصورة الشخصية">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

<HeaderStyle CssClass="text-center"></HeaderStyle>
               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:ImageField>
             <asp:ImageField DataImageUrlField="FilePath1" HeaderStyle-CssClass="text-center" ControlStyle-Width="100" 
        ControlStyle-Height = "100" HeaderText = "صورة هوية ">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:ImageField>
             <asp:BoundField DataField="empstatus_name" HeaderText="حالة الطلب" HeaderStyle-CssClass="text-center" SortExpression="empstatus_name" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="visitor_mobile" HeaderText="رقم الهاتف" HeaderStyle-CssClass="text-center" SortExpression="visitor_mobile" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
<asp:BoundField DataField="visit_date" HeaderText="تاريخ الزيارة" HeaderStyle-CssClass="text-center" SortExpression="visit_date">
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="reason" HeaderText="سبب الزيارة" HeaderStyle-CssClass="text-center" SortExpression="reason" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="v_group_num" HeaderText="عدد الوفود" HeaderStyle-CssClass="text-center" SortExpression="v_group_num" >

<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>

             <asp:BoundField DataField="v_group" HeaderText="وفود" HeaderStyle-CssClass="text-center" SortExpression="v_group" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="اسم الزئر" HeaderStyle-CssClass="text-center" SortExpression="name" ReadOnly="True" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="request_date" HeaderText="تاريخ الطلب" SortExpression="request_date" HeaderStyle-CssClass="text-center">
<HeaderStyle CssClass="text-center"></HeaderStyle>

            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="request_id" HeaderText="رقم الطلب" HeaderStyle-CssClass="text-center" SortExpression="request_id" InsertVisible="False" ReadOnly="True" >
    
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
<br />
    <br />
    

 <asp:button id="Button1" class="log-btn" runat="server" text="عودة" 
OnClientClick="JavaScript:window.history.back(1);return false;"  style="margin-left: 40px ; text-align: center;"  Font-Size="Medium"></asp:button>
</asp:Content>



