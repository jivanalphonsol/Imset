<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Imset.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="assets/css/leadgenerationcss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
           <div class="login-form">
              
            <h1>Login</h1>
            <div class="content">
                <div class="input-field">
                    <asp:TextBox runat="server" ID="txtUserName" Placeholder="UserName" />
                </div>
                <div class="input-field">
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" Placeholder="Password" />
                </div>
            </div>
            <div class="action">
                <asp:Button class="button" Text="Log In" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
            </div>
        </div>
    </form>
    <script src="assets/js/js/leadgeneration.js"></script>

</body>
</html>
