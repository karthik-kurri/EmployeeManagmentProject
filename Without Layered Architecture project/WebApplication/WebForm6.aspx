<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%; background-color: #FFFFFF;">
        <tr>
            <td style="color: #FF0000">Eid</td>
            <td>
                <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">Ename</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">Bankname</td>
            <td>
                <asp:TextBox ID="txtbank" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">Accno</td>
            <td>
                <asp:TextBox ID="txtacc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">IFSCODE</td>
            <td>
                <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">Branch</td>
            <td>
                <asp:TextBox ID="txtbranch" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
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
