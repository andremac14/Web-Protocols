<!DOCTYPE html>
<head>
    <title>UWP - CS3870 : First Program</title>
	<link rel="stylesheet" type="text/css" href= "StyleSheet1.css" />

    <style type="text/css">
        .auto-style1 {
            margin-left: 333px;
        }
    </style>

</head>

<body>

	<form id="form1" runat="server">

	<h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1> 
	<h2 class="Name">Andre Sandoval</h2>


    <ul class="navbar">
        <li> <a href="MasterPage.aspx">All Products </a></li>

        <li> <a href="NewUpdatingProduct.aspx">Updating Products </a></li>

        <li> <a href="Shopping.aspx">Shopping </a></li>

        <li> <a href="CheckoutPage.aspx">Checkout </a></li>

    </ul>

    <h3 style="text-align: center; display: block">
        <span style="float: left; display: inline-block; ">
            <span id="ContentPlaceHolder1_LoginName1">sandovala</span>
        </span>
          Prog 5
          <span style="float: right; display: inline-block; ">
            <a id="ContentPlaceHolder1_LoginStatus1" href="NewLoginPage.aspx" >Logout</a>
        </span>
    </h3>
	

              <br />
              <br />

    <p class="centerText">



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prog4DatabaseConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="203px" PageSize="5" Width="310px">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
            <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous" />
        </asp:GridView>
    </form>



</body>
</html>
