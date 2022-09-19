<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EMPLOYEE.UI.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br />
    <table align="center" style="width: 50%">
        <tr>
            <td>Eid*</td>
            <td>
                <asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="Please Enter Eid" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Ename*</td>
            <td>
                <asp:TextBox ID="txtEname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEname" ErrorMessage="Please Enter Ename" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>gender</td>
            <td>
                <asp:RadioButtonList ID="txtgender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 25px">email*</td>
            <td style="height: 25px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter email" ForeColor="#990033"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Age</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Invalid Age" ForeColor="#CC0000" MaximumValue="45" MinimumValue="20"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px">mob*</td>
            <td style="height: 25px">
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmob" ErrorMessage="Please Enter mobile number" ForeColor="#990033"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Enter valid mobile number" ForeColor="Red" ValidationExpression="[6789][0-9]{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>country*</td>
            <td>
                <asp:DropDownList ID="txtcountry" runat="server" Width="125px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Austrila</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>America</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcountry" ErrorMessage="Please Select Country" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>desig*</td>
            <td>
                <asp:TextBox ID="txtdesig" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdesig" ErrorMessage="Please Enter designation" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>pincode*</td>
            <td>
                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpincode" ErrorMessage="Please Enter pincode" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>username*</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter username" ForeColor="#990033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>pass*</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter password" ForeColor="#990033"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password should contain Capital,small letters,numbers and length should be only 6 char " ForeColor="Red" ValidationExpression="[0-9A-Za-z]{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Add_EMPLOYEE" Text="Add" />
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
