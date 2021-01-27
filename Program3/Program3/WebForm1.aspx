<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UWP - CS3870 : First Program</title>
    <link rel="stylesheet" type="text/css" href= "StyleSheet1.css" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
        #TextArea1 {
            height: 230px;
            width: 1001px;
        }
        .auto-style4 {
            height: 30px;
            width: 248px;
        }
        .auto-style5 {
            width: 248px;
        }
        .auto-style6 {
            height: 23px;
            width: 248px;
        }
    </style>

   


</head>
<body>
    <h1 class="CS3870Title">Web Protocols, Technologies and Applications&nbsp; </h1> 


    <form id="form1" runat="server">

        <ul class="navbar">
        <li> <a href="NewMasterPage.aspx">All Products </a></li>

        <li> <a href="Webform1.aspx">Updating Products </a></li>

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

            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnFirst" runat="server" OnClick="Button1_Click1" Text="First" Width="74px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnNext" runat="server" Text="Next" Width="61px" OnClick="btnNext_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnLast" runat="server" Text="Last" Width="66px" OnClick="btnLast_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Product ID"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Unit Price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="75px" OnClick="btnUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="71px" OnClick="btnDelete_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnNew" runat="server" Text="New" Width="121px" OnClick="btnNew_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
        </table>
    </form>
    <p>
        <textarea id="TextArea1"  runat="server" name="S1"></textarea></p>
</body>
</html>
