<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetAccount.aspx.cs" Inherits="EMPLOYEE.UI.GetAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
        <tr>
            <td style="color: #FF0000; background-color: #FFFFFF">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CellPadding="2" DataKeyNames="Eid" PageSize="3" >
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" SortExpression="Bankname" />
                        <asp:BoundField DataField="Accno" HeaderText="Accno" SortExpression="Accno" />
                        <asp:BoundField DataField="IFSCODE" HeaderText="IFSCODE" SortExpression="IFSCODE" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  DeleteMethod="DeleteAccount" InsertMethod="AddAccount" SelectMethod="GetAccounts" TypeName="EMPLOYEE.BusinessLayer.AccountService" UpdateMethod="UpdateAccount">
                    <DeleteParameters>
                        <asp:Parameter Name="Eid" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
