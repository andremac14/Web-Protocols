<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Program4.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	UWP - CS 3870
</title><link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 72%;
        }
        .auto-style2 {
            width: 278px;
        }
        .auto-style3 {
            width: 243px;
        }
        .auto-style4 {
            width: 278px;
            height: 32px;
        }
        .auto-style5 {
            width: 243px;
            height: 32px;
        }
        .auto-style6 {
            width: 271px;
            height: 32px;
        }
        .auto-style7 {
            width: 271px;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">

	
	

 
            <h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1> 
	        <h2 class="Name">Andre Sandoval<table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><input id="ContentPlaceHolder1_Login1_RememberMe" type="checkbox" name="ctl00$ContentPlaceHolder1$Login1$RememberMe" /><asp:Label ID="Label4" runat="server" Text="Remember User"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" style="height: 26px" />
                    </td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="HyperLink1" runat="server">New User</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </h2>
  

    </div>

    
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_Login1_UserNameRequired"), document.getElementById("ContentPlaceHolder1_Login1_PasswordRequired"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_Login1_UserNameRequired = document.all ? document.all["ContentPlaceHolder1_Login1_UserNameRequired"] : document.getElementById("ContentPlaceHolder1_Login1_UserNameRequired");
ContentPlaceHolder1_Login1_UserNameRequired.controltovalidate = "ContentPlaceHolder1_Login1_UserName";
ContentPlaceHolder1_Login1_UserNameRequired.errormessage = "User Name is required.";
ContentPlaceHolder1_Login1_UserNameRequired.validationGroup = "ctl00$ContentPlaceHolder1$Login1";
ContentPlaceHolder1_Login1_UserNameRequired.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_Login1_UserNameRequired.initialvalue = "";
var ContentPlaceHolder1_Login1_PasswordRequired = document.all ? document.all["ContentPlaceHolder1_Login1_PasswordRequired"] : document.getElementById("ContentPlaceHolder1_Login1_PasswordRequired");
ContentPlaceHolder1_Login1_PasswordRequired.controltovalidate = "ContentPlaceHolder1_Login1_Password";
ContentPlaceHolder1_Login1_PasswordRequired.errormessage = "Password is required.";
ContentPlaceHolder1_Login1_PasswordRequired.validationGroup = "ctl00$ContentPlaceHolder1$Login1";
ContentPlaceHolder1_Login1_PasswordRequired.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_Login1_PasswordRequired.initialvalue = "";
//]]>
</script>


<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        //]]>
</script>
    </form>
</body>
</html>
