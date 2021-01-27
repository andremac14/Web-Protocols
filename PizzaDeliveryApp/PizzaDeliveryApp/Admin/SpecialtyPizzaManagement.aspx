﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialtyPizzaManagement.aspx.cs" Inherits="PizzaDeliveryApp.Admin.SpecialtyPizzaManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/Style.css" type="text/css" media="screen" />
    <style type="text/css">
        table{
            border: none;
        }
        td{
            border: none;
            text-align: left;
        }
    </style>
    <title>Pie Peddlers - Specialty Pizza Management</title>
</head>
    <body>
        <form id="SpecialtyForm" runat="server">
            <h1>Pie Peddlers</h1>
            <h2>Specialty Pizza Management</h2>
            <h3>
                <asp:Label ID="lblLoginName" class="LoginName" runat="server" Text="LoginName"></asp:Label>
               
                <asp:Button class="LoginStatus" ID="btnLoginStatus" runat="server" BackColor="White" BorderStyle="None" Font-Underline="True" ForeColor="Blue" Text="LoginStatus" OnClick="btnLoginStatus_Click" UseSubmitBehavior="False" />
            </h3>
            <asp:TreeView class="TreeView" ID="TreeView1" runat="server" ExpandImageToolTip="" DataSourceID="SiteMapDataSourceAdmin">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="Default" NavigateUrl="Default.aspx" Target="Default.aspx"  Text="All Products" />
                    <asp:TreeNodeBinding DataMember="Shopping" NavigateUrl="Member\Shopping.aspx" Target="Shopping.aspx" Text="Shopping" Value="Shopping" />
                    <asp:TreeNodeBinding DataMember="Updating" NavigateUrl="Admin\Updating.aspx" Text="Updating" Value="Updating" />
                    <asp:TreeNodeBinding DataMember="Checkout" NavigateUrl="Member\Checkout.aspx" Text="Checkout" Value="Checkout" />
                </DataBindings>
                <Nodes>
                    <asp:TreeNode Text="All Products" Value="New Node" NavigateUrl="Default.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Updating" Value="New Node" NavigateUrl="Admin\Updating.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Shopping" Value="New Node" NavigateUrl="Member\Shopping.aspx"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="Member\Checkout.aspx" Text="Checkout" Value="New Node"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSourceAdmin" runat="server" SiteMapProvider="SiteMapDataSourceAdmin"/>
                       <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductName" DataSourceID="SqlDataSourceSpecialtyPizza" height="45px" width="496px" position="relative"  margin-left="25%" Align="center" OnItemDeleting="DetailsView1_ItemDeleting" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name:" ReadOnly="True" SortExpression="ProductName" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price:" SortExpression="UnitPrice" DataFormatString="{0:C}" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description:" SortExpression="Description" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PriceModifier" HeaderText="Price Modifier:" SortExpression="PriceModifier" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSourceSpecialtyPizza" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [SpecialtyPizzas] ORDER BY [ProductName]" DeleteCommand="DELETE FROM [SpecialtyPizzas] WHERE [ProductName] = @ProductName" InsertCommand="INSERT INTO [SpecialtyPizzas] ([ProductName], [UnitPrice], [Description], [PriceModifier]) VALUES (@ProductName, @UnitPrice, @Description, @PriceModifier)" UpdateCommand="UPDATE [SpecialtyPizzas] SET ProductName = @ProductName, UnitPrice = @UnitPrice, Description = @Description, PriceModifier = @PriceModifier WHERE ProductName = @ProductName ">
                <DeleteParameters>
                    <asp:Parameter Name="ProductName" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" />
                    <asp:Parameter Name="UnitPrice" />
                    <asp:Parameter Name="Description" />
                    <asp:Parameter Name="PriceModifier" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        <br />
        <br />
        <asp:TextBox ID="txtMessage" runat="server" Height="197px" Width="441px" style="text-align: left" TextMode="MultiLine"></asp:TextBox>
    </form>
</body>
</html>

