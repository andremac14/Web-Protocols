<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLoginPage.aspx.cs" Inherits="Program4.NewLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 42px;
            width: 189px;
        }
        .auto-style3 {
            width: 254px;
        }
        .auto-style4 {
            height: 42px;
            width: 254px;
        }
        .auto-style5 {
            width: 249px;
        }
        .auto-style6 {
            height: 42px;
            width: 249px;
        }
        .auto-style7 {
            width: 189px;
        }
    </style>
</head>
    </title><link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
<body>
    <h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1> 
	        <h2 class="Name">Andre Sandoval


    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Log In"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create User" Width="69px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
