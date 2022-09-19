<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetPersonal.aspx.cs" Inherits="EMPLOYEE.UI.GetPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
    <tr>
        <td style="color: #FF0000; background-color: #FFFFFF">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="Dotted" DataSourceID="ObjectDataSource1" DataKeyNames="Eid" PageSize="3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                    <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                    <asp:BoundField DataField="Fathername" HeaderText="Fathername" SortExpression="Fathername" />
                    <asp:BoundField DataField="Mothername" HeaderText="Mothername" SortExpression="Mothername" />
                    <asp:BoundField DataField="Matrialstatus" HeaderText="Matrialstatus" SortExpression="Matrialstatus" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeletePersonalDetails" SelectMethod="GetPersonalDetails" TypeName="EMPLOYEE.BusinessLayer.PersonalService"  InsertMethod="AddPersonalDetails" UpdateMethod="UpdatePersonalDetails">
                <DeleteParameters>
                    <asp:Parameter Name="eid" Type="String" />
                </DeleteParameters>
            </asp:ObjectDataSource>
            <br />
        </td>
    </tr>
</table>
</asp:Content>
