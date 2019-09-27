<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" Title="Customers
" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetCustomers" TypeName="odsTableAdapters.Customer_Business_DataTableAdapter">
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
        CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <Columns>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False"
                ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            <asp:BoundField DataField="Monetary _Value" HeaderText="Monetary _Value" SortExpression="Monetary _Value" />
            <asp:CheckBoxField DataField="Recency" HeaderText="Recency" SortExpression="Recency" />
        </Columns>
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataminingConnectionString24 %>"
        SelectCommand="SELECT * FROM CustomersBusinessData"></asp:SqlDataSource>
</asp:Content>

