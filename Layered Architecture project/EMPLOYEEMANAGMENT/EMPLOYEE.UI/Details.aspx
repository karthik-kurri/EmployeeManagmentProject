<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EMPLOYEE.UI.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details Of Employee Managment System</title>
    <style type="text/css">
        .auto-style1 {
            background-color:red;
            width: 100%;
            
        }
    </style>
</head><br /><br />
<body style="background-image:url('images/img3.jpg')">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Employee Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Employee Personal Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Employee Account Details</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
