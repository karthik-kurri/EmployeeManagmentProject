<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="8" DataKeyNames="Eid" DataSourceID="SqlDataSource1" ForeColor="#FF0066" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Eid" HeaderText="Eid" ReadOnly="True" SortExpression="Eid" />
        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
        <asp:BoundField DataField="Fathername" HeaderText="Fathername" SortExpression="Fathername" />
        <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName" />
        <asp:BoundField DataField="MatrialStatus" HeaderText="MatrialStatus" SortExpression="MatrialStatus" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:employeepersonalConnectionString %>" SelectCommand="SELECT * FROM [EmployeePersonalDetails]" DeleteCommand="DELETE FROM [EmployeePersonalDetails] WHERE [Eid] = @Eid" InsertCommand="INSERT INTO [EmployeePersonalDetails] ([Eid], [Ename], [Fathername], [MotherName], [MatrialStatus], [Address], [Salary], [Experience]) VALUES (@Eid, @Ename, @Fathername, @MotherName, @MatrialStatus, @Address, @Salary, @Experience)" UpdateCommand="UPDATE [EmployeePersonalDetails] SET [Ename] = @Ename, [Fathername] = @Fathername, [MotherName] = @MotherName, [MatrialStatus] = @MatrialStatus, [Address] = @Address, [Salary] = @Salary, [Experience] = @Experience WHERE [Eid] = @Eid">
    <DeleteParameters>
        <asp:Parameter Name="Eid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Eid" Type="String" />
        <asp:Parameter Name="Ename" Type="String" />
        <asp:Parameter Name="Fathername" Type="String" />
        <asp:Parameter Name="MotherName" Type="String" />
        <asp:Parameter Name="MatrialStatus" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Salary" Type="String" />
        <asp:Parameter Name="Experience" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ename" Type="String" />
        <asp:Parameter Name="Fathername" Type="String" />
        <asp:Parameter Name="MotherName" Type="String" />
        <asp:Parameter Name="MatrialStatus" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Salary" Type="String" />
        <asp:Parameter Name="Experience" Type="String" />
        <asp:Parameter Name="Eid" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
