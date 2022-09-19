<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%; border: 1px solid #FF00FF; background-color: #FFFFFF">
        <tr>
            <td>Eid</td>
            <td>
                <asp:TextBox ID="eid" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>EName</td>
            <td>
                <asp:TextBox ID="Ename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Fathername</td>
            <td>
                <asp:TextBox ID="Fathername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MotherName</td>
            <td>
                <asp:TextBox ID="MotherName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MatrialStatus</td>
            <td>
                <asp:TextBox ID="MatrialStatus" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Salary</td>
            <td style="height: 20px">
                <asp:TextBox ID="Salary" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Experience</td>
            <td>
                <asp:TextBox ID="Experience" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button runat="server" Text="update" OnClick="update_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="msgshow" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>
