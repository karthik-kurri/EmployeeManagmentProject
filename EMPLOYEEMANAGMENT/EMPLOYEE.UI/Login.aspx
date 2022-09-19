<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EMPLOYEE.UI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%; background-image:url('images/img2.jpg')">
        <tr>
            <td style="color: #FF0000">username</td>
            <td style="color: #FF0000">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; color: #FF0000;">password</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">type</td>
            <td>
                <asp:DropDownList ID="txttype" runat="server">
                    <asp:ListItem>AddEmployee</asp:ListItem>
                    <asp:ListItem>AddPersonal</asp:ListItem>
                    <asp:ListItem>AddAccount</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
