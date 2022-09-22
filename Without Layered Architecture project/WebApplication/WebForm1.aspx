<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication.WebForm1" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <table align="center" style="width: 50%; background-color: #FFFFFF;" ForeColor="#CC6699">
        <tr>
            <td style="height: 25px; color: #FF00FF;">EMPLOYEEID*</td>
            <td style="height: 25px">
                <asp:TextBox ID="Eid" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter Eid" ControlToValidate="Eid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF">ENAME*</td>
            <td>
                <asp:TextBox ID="Ename" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter Ename" ControlToValidate="Ename"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; color: #FF00FF;">GENDER</td>
            <td style="height: 20px">
&nbsp;&nbsp;
                <asp:RadioButtonList ID="gender" runat="server" BackColor="#FF0066">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF;">EMAIL</td>
            <td>
                <asp:TextBox ID="email" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF;">AGE</td>
            <td>
                <asp:TextBox ID="Age" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="invalid age" MaximumValue="40" MinimumValue="19" ControlToValidate="Age"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF">MOBILE*</td>
            <td>
                <asp:TextBox ID="mob" runat="server" ForeColor="Red"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please enter valid mobile number" ValidationExpression="[6-9][0-9]{9}" ControlToValidate="mob"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; color: #FF00FF;">COUNTRY</td>
            <td style="height: 22px">
                <asp:DropDownList ID="country" runat="server" ForeColor="Red">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>America</asp:ListItem>
                    <asp:ListItem>England</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF;">DESIGNATION</td>
            <td>
                <asp:TextBox ID="deisg" runat="server" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF00FF;">PINCODE*</td>
            <td>
                <asp:TextBox ID="pincode" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter pincode" ControlToValidate="pincode"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="please enter valid pincode" ValidationExpression="[2-6][0-9]{5}" ControlToValidate="pincode"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; color: #FF00FF;">Login Details</td>
            <td style="height: 20px; color: #FF00FF;"></td>
        </tr>
        <tr>
            <td style="color: #FF00FF;">User Name*</td>
            <td>
                <asp:TextBox ID="username" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter username" ControlToValidate="username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; color: #FF00FF;">Password*</td>
            <td style="height: 20px">
                <asp:TextBox ID="pass" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter password" ControlToValidate="pass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; color: #FF00FF;">CONFIRM Password*</td>
            <td style="height: 25px">
                <asp:TextBox ID="conpass" runat="server" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="confirm password" ControlToValidate="conpass"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="height: 29px">
                <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Edit" runat="server" Text="Edit" OnClick="Edit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="search" runat="server" Text="search" OnClick="search_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="delete" runat="server" Text="delete" OnClick="delete_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="msgshow" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
