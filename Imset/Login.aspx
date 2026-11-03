<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Imset.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="noindex, nofollow" />
    <title>Admin Login | Imset</title>
    <link href="assets/images/favicon.png" rel="shortcut icon" type="image/png" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap" rel="stylesheet" />
    <link href="assets/css/admin-theme.css" rel="stylesheet" />
</head>
<body class="adm-login-body">
    <form id="form1" runat="server" defaultbutton="btnLogin">
        <div class="adm-login">
            <img src="assets/images/IMSETlogo.png" alt="Imset" />
            <h1>Admin Login</h1>
            <div class="adm-sub">Sign in to manage leads and product catalogues</div>

            <div class="adm-group">
                <label for="txtUserName">Username</label>
                <asp:TextBox runat="server" ID="txtUserName" placeholder="Enter username" autocomplete="username" />
            </div>
            <div class="adm-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Enter password" autocomplete="current-password" />
            </div>

            <asp:Button CssClass="adm-btn" Text="Log In" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
            <a href="/" class="adm-back">&larr; Back to website</a>
        </div>
    </form>
</body>
</html>
