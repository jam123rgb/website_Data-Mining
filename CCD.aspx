<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="CCD.aspx.cs" Inherits="CCD" Title="Customer Business Data
" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    CustomersBusinessData<br />
    &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
        BorderWidth="1px" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False"
                ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            <asp:BoundField DataField="Monetary_Value" HeaderText="Monetary_Value" SortExpression="Monetary_Value" />
            <asp:CheckBoxField DataField="Recency" HeaderText="Recency" SortExpression="Recency" />
        </Columns>
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:dataminingConnectionString24 %>"
        DeleteCommand="DELETE FROM CustomersBusinessData 
                         WHERE 
                          [CustomerID] = @original_CustomerID 
                           AND [Last Name] = @original_Last_Name 
                            AND [First Name] = @original_First_Name 
                             AND [Frequency] = @original_Frequency 
                              AND [Monetary _Value] = @original_Monetary_Value 
                               AND [Recency] = @original_Recency"
                                       
        InsertCommand=" BEGIN TRANSACTION MyTransaction;
                        INSERT INTO CustomersBusinessData (
                         [Last Name], [First Name], [Frequency],
                          [Monetary _Value], [Recency])
                           VALUES (
                             @Last_Name, @First_Name, @Frequency,
                              @Monetary_Value, @Recency)
                               IF @@Error = 0
                                   COMMIT TRANSACTION MyTransaction;
                               ELSE
                                    ROLLBACK TRANSACTION MyTransaction;"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CustomerID], [Last Name] AS Last_Name, [First Name] AS First_Name, [Frequency], [Monetary _Value] AS Monetary_Value, [Recency] FROM CustomersBusinessData ORDER BY [CustomerID], [Last Name], [First Name]"
        UpdateCommand="UPDATE CustomersBusinessData SET 
                         [Last Name] = @Last_Name, [First Name] = @First_Name,
                          [Frequency] = @Frequency, [Monetary _Value] = @Monetary_Value,[Recency] = @Recency 
                           WHERE [CustomerID] = @original_CustomerID 
                            AND [Last Name] = @original_Last_Name 
                             AND [First Name] = @original_First_Name 
                              AND [Frequency] = @original_Frequency 
                               AND [Monetary _Value] = @original_Monetary_Value 
                                AND [Recency] = @original_Recency">
        <DeleteParameters>
            <asp:Parameter Name="original_CustomerID" Type="Int32" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="Int32" />
            <asp:Parameter Name="original_Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="original_Recency" Type="Boolean" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Frequency" Type="Int32" />
            <asp:Parameter Name="Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="Recency" Type="Boolean" />
            <asp:Parameter Name="original_CustomerID" Type="Int32" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="Int32" />
            <asp:Parameter Name="original_Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="original_Recency" Type="Boolean" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Frequency" Type="Int32" />
            <asp:Parameter Name="Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="Recency" Type="Boolean" />
        </InsertParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
        CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2" Height="50px"
        Width="125px">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False"
                ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            <asp:BoundField DataField="Monetary_Value" HeaderText="Monetary_Value" SortExpression="Monetary_Value" />
            <asp:CheckBoxField DataField="Recency" HeaderText="Recency" SortExpression="Recency" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:DetailsView>
    &nbsp; &nbsp; &nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:dataminingConnectionString24 %>" 
        DeleteCommand="DELETE FROM CustomersBusinessData 
                         WHERE 
                          [CustomerID] = @original_CustomerID 
                           AND [Last Name] = @original_Last_Name 
                            AND [First Name] = @original_First_Name 
                             AND [Frequency] = @original_Frequency 
                              AND [Monetary _Value] = @original_Monetary_Value 
                               AND [Recency] = @original_Recency"
                                       
        InsertCommand=" BEGIN TRANSACTION MyTransaction;
                        INSERT INTO CustomersBusinessData (
                         [Last Name], [First Name], [Frequency],
                          [Monetary _Value], [Recency])
                           VALUES (
                             @Last_Name, @First_Name, @Frequency,
                              @Monetary_Value, @Recency)
                               IF @@Error = 0
                                   COMMIT TRANSACTION MyTransaction;
                               ELSE
                                    ROLLBACK TRANSACTION MyTransaction;"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CustomerID], [Last Name] AS Last_Name, [First Name] AS First_Name, [Frequency], [Monetary _Value] AS Monetary_Value, [Recency] FROM CustomersBusinessData WHERE ([CustomerID] = @CustomerID)"
        UpdateCommand="UPDATE CustomersBusinessData SET 
                         [Last Name] = @Last_Name, [First Name] = @First_Name,
                          [Frequency] = @Frequency, [Monetary _Value] = @Monetary_Value,[Recency] = @Recency 
                           WHERE [CustomerID] = @original_CustomerID 
                            AND [Last Name] = @original_Last_Name 
                             AND [First Name] = @original_First_Name 
                              AND [Frequency] = @original_Frequency 
                               AND [Monetary _Value] = @original_Monetary_Value 
                                AND [Recency] = @original_Recency">
        <DeleteParameters>
            <asp:Parameter Name="original_CustomerID" Type="Int32" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="Int32" />
            <asp:Parameter Name="original_Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="original_Recency" Type="Boolean" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Frequency" Type="Int32" />
            <asp:Parameter Name="Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="Recency" Type="Boolean" />
            <asp:Parameter Name="original_CustomerID" Type="Int32" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="Int32" />
            <asp:Parameter Name="original_Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="original_Recency" Type="Boolean" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="CustomerID" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Frequency" Type="Int32" />
            <asp:Parameter Name="Monetary_Value" Type="Decimal" />
            <asp:Parameter Name="Recency" Type="Boolean" />
        </InsertParameters>
    </asp:SqlDataSource>
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="K-Means" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp;
    &nbsp;&nbsp; &nbsp;&nbsp;<br />
    &nbsp;
</asp:Content>

