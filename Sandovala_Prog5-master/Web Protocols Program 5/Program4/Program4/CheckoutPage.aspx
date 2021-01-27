<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutPage.aspx.cs" Inherits="Program4.CheckoutPage" %>

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
            margin-left: 333px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 335px;
        }
        </style>

   


</head>
<body>
    <h1 class="CS3870Title">Web Protocols, Technologies and Applications&nbsp; </h1> 


    <h3 style="text-align: center; display: block">
        <span style="float: left; display: inline-block; ">
            <span id="ContentPlaceHolder1_LoginName1">sandovala</span>
        </span>
          Prog 5
          <span style="float: right; display: inline-block; ">
            <a id="ContentPlaceHolder1_LoginStatus1" href="Login.aspx" >Logout</a>
        </span>
    </h3>

    <form id="form1" runat="server">

        <ul class="navbar">
        <li> <a href="MasterPage.aspx">All Products </a></li>

        <li> <a href="NewUpdatingProduct.aspx">Updating Products </a></li>

        <li> <a href="Shopping.aspx">Shopping </a></li>

        <li> <a href="CheckoutPage.aspx">Checkout </a></li>

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

        <h2 class="Name">&nbsp;Andre Sandoval</h2>

    <p>
        &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="productId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="productId" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prog4DatabaseConnectionString %>" SelectCommand="SELECT * FROM [checkout]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Checkout" Width="320px" />
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
