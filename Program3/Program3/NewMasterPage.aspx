<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMasterPage.aspx.cs" Inherits="Program3.NewMasterPage" %>

<!DOCTYPE html>
<head>
    <title>UWP - CS3870 : First Program</title>
	<link rel="stylesheet" type="text/css" href= "StyleSheet1.css" />

    <style type="text/css">
        .auto-style1 {
            margin-left: 301px;
        }
    </style>

</head>

<body>

	<form id="form1" runat="server">

	<h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1> 
	


    <ul class="navbar">
        <li> <a href="NewMasterPage.aspx">All Products </a></li>

        <li> <a href="WebForm1.aspx">Updating Products </a></li>

        <li> <a href="NewShoppingPage.aspx">Shopping </a></li>

    </ul>
	
    <h2 class="Name">Andre Sandoval</h2>

              <br />
              <br />

    <p class="centerText">



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prog3DatabaseConnectionString3 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </form>



</body>
</html>
