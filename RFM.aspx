<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="RFM.aspx.cs" Inherits="RFM" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <br />
    &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
        GridLines="None">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CheckBoxField DataField="Recency" HeaderText="Recency" SortExpression="Recency" />
            <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            <asp:BoundField DataField="Monetary _Value" HeaderText="Monetary _Value" SortExpression="Monetary _Value" />
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataminingConnectionString24 %>"
        SelectCommand="SELECT Recency, Frequency, [Monetary _Value] FROM CustomersBusinessData ORDER BY [Monetary _Value], Frequency">
    </asp:SqlDataSource>
    &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

