<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetEmployee.aspx.cs" Inherits="EMPLOYEE.UI.GetEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
    <tr>
        <td style="color: #FF0000; background-color: #FFFFFF">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" PageSize="3" BorderColor="#CC0000" DataKeyNames="Eid" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                    <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                    <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                    <asp:BoundField DataField="desig" HeaderText="desig" SortExpression="desig" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  DeleteMethod="DeleteEmployeeDetails" SelectMethod="GetEmployeesDetails" TypeName="EMPLOYEE.BusinessLayer.EmployeeService" UpdateMethod="UpdateEmployeeDetails" InsertMethod="AddEmployeeDetails">
                <DeleteParameters>
                    <asp:Parameter Name="eid" Type="String" />
                </DeleteParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
</table>
</asp:Content>
