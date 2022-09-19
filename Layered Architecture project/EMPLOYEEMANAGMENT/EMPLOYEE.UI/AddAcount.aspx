<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAcount.aspx.cs" Inherits="EMPLOYEE.UI.AddAcount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
        <tr>
            <td>Eid</td>
            <td>
                <asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="Please Enter Eid" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Ename</td>
            <td>
                <asp:TextBox ID="txtEname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEname" ErrorMessage="Please Enter Ename" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Bankname</td>
            <td>
                <asp:TextBox ID="txtBankname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBankname" ErrorMessage="Please Enter Bankname" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Accno</td>
            <td>
                <asp:TextBox ID="txtAccno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAccno" ErrorMessage="Please Enter Accno" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>IFSCODE</td>
            <td>
                <asp:TextBox ID="txtIFSCODE" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIFSCODE" ErrorMessage="Please Enter IFSCODE" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Branch</td>
            <td id="txtBranch" style="height: 20px">
                <asp:TextBox ID="txtBranch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBranch" ErrorMessage="Please Enter Branch" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Add_Account" Text="Add" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
