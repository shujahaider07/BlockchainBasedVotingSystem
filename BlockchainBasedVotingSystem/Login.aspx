<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlockchainBasedVotingSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter+Tight:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/TweenLite.min.js"></script>
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/EasePack.min.js"></script>
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/rAF.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="large-header" class="large-header">

            <div class="form">

                <div class="login">
                    <div style="margin: 0 auto; width: 100%;">
                        <img src="images/online-vote-removebg-preview.png" style="text-align: center;" width="100%">
                    </div>
                    <div class="half-box">
                        <p class="heading">Login</p>

                        <label class="Sub-heading">Email</label>
                        <asp:TextBox ID="Emailtxt" TextMode="Email" runat="server"></asp:TextBox>
                        <%--<input class="input1" type="text" name="username">--%>
                        <br>
                        <br>
                        <label class="Sub-heading">Password</label>
                        <asp:TextBox ID="passwordtxt" TextMode="Password" runat="server"></asp:TextBox>
                        <%--<input class="input1" type="text" name="username">--%>

                        <br />
                        <br />
                        <label class="Sub-heading">Cnic</label>
                        <asp:TextBox ID="cnictext" MaxLength="13" TextMode="SingleLine" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="cnictext" ErrorMessage="Cnic required"></asp:RequiredFieldValidator>
                        <div class="btn">
                            <a href="#">
                                <br />
                                <asp:Button ID="button1" class="button" runat="server" Text="Login" OnClick="button1_Click" /></a>
                        </div>

                        <p class="for-pass">Don't have an account?<a href="signup.aspx"><span style="margin-left: 1%;" class="sub-text">Create One</span></a></p>
                        <p class="for-pass">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Admin.aspx">ADMIN PANEL</asp:HyperLink>
                        </p>

                    </div>


                </div>
            </div>

            <canvas id="demo-canvas"></canvas>

        </div>
        <script src="app.js"></script>

    </form>
</body>
</html>
