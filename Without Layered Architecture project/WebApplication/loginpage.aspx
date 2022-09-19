<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="WebApplication.loginpage" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br />
    <br />
    <table align="center" style="width: 50%">
        <tr>
            <td style="color: #FF00FF">user name<asp:TextBox ID="username" runat="server" Width="196px" ForeColor="Red"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; color: #FF00FF;">password<asp:TextBox ID="password" runat="server" Width="195px" ForeColor="Red"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="height: 26px; color: #FF00FF;">typeof feild<asp:DropDownList ID="select" runat="server">
                <asp:ListItem>EmployeeDetails</asp:ListItem>
                <asp:ListItem>EmployeePersonalDetails</asp:ListItem>
                 <asp:ListItem>EmployeeAccountDetails</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 26px"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="signin" runat="server" OnClick="signin_Click" Text="signin" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="msgshow" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
