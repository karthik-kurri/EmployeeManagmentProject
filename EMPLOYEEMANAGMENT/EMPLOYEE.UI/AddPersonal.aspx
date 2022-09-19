<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPersonal.aspx.cs" Inherits="EMPLOYEE.UI.AddPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
        <tr>
            <td>Eid*</td>
            <td>
                <asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="Enter Eid" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Ename*</td>
            <td>
                <asp:TextBox ID="txtEname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEname" ErrorMessage="Enter Ename" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Fathername*</td>
            <td>
                <asp:TextBox ID="txtFathername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFathername" ErrorMessage="Enter Fathername" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mothername*</td>
            <td>
                <asp:TextBox ID="txtMothername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMothername" ErrorMessage="Enter Mothername" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Matrialstatus*</td>
            <td>
                <asp:TextBox ID="txtMatrialstatus" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMatrialstatus" ErrorMessage="Enter Matrialstatus" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address*</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter Address" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Salary*</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSalary" ErrorMessage="Enter Salary" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Experience*</td>
            <td>
                <asp:TextBox ID="txtExperience" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtExperience" ErrorMessage="Enter Experience" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Add_Personal" Text="Add" />
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
