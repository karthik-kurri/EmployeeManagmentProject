<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" ForeColor="#CC0000">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Eid" HeaderText="Eid" ReadOnly="True" SortExpression="Eid" />
        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
        <asp:BoundField DataField="Bankname" HeaderText="Bankname" SortExpression="Bankname" />
        <asp:BoundField DataField="Accno" HeaderText="Accno" SortExpression="Accno" />
        <asp:BoundField DataField="IFSCODE" HeaderText="IFSCODE" SortExpression="IFSCODE" />
        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:accountDetails %>" DeleteCommand="DELETE FROM [Accountdetails] WHERE [Eid] = @Eid" InsertCommand="INSERT INTO [Accountdetails] ([Eid], [Ename], [Bankname], [Accno], [IFSCODE], [Branch]) VALUES (@Eid, @Ename, @Bankname, @Accno, @IFSCODE, @Branch)" SelectCommand="SELECT * FROM [Accountdetails]" UpdateCommand="UPDATE [Accountdetails] SET [Ename] = @Ename, [Bankname] = @Bankname, [Accno] = @Accno, [IFSCODE] = @IFSCODE, [Branch] = @Branch WHERE [Eid] = @Eid">
    <DeleteParameters>
        <asp:Parameter Name="Eid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Eid" Type="String" />
        <asp:Parameter Name="Ename" Type="String" />
        <asp:Parameter Name="Bankname" Type="String" />
        <asp:Parameter Name="Accno" Type="String" />
        <asp:Parameter Name="IFSCODE" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ename" Type="String" />
        <asp:Parameter Name="Bankname" Type="String" />
        <asp:Parameter Name="Accno" Type="String" />
        <asp:Parameter Name="IFSCODE" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
        <asp:Parameter Name="Eid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
