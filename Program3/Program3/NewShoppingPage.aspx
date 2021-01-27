<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewShoppingPage.aspx.cs" Inherits="Program3.NewShoppingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UWP - CS3870 : First Program</title>
    <link rel="stylesheet" type="text/css" href= "StyleSheet1.css" />

    <style type="text/css">
        #TextArea1 {
            height: 230px;
            width: 1001px;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>

   


</head>
<body>
    <h1 class="CS3870Title">Web Protocols, Technologies and Applications&nbsp; </h1> 


    <form id="form1" runat="server">

        <ul class="navbar">
        <li> <a href="NewMasterPage.aspx">All Products </a></li>

        <li> <a href="WebForm1.aspx">Updating Products </a></li>

        <li> <a href="NewShoppingPage.aspx">Shopping </a></li>

        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        </ul>

        <h2 class="Name">Andre Sandoval</h2>

    <p>
        &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Get Values" Width="79px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Compute" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Sub Total"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Tax"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Grand Total"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSubTotal" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtGrandTotal" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
