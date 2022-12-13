<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BlockchainBasedVotingSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Sign Up</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter+Tight:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">

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
                        <img src="images/election-removebg-preview.png" style="text-align: center;" width="100%">
                    </div>
                    <div class="half-box">
                        <p class="heading">Sign Up</p>

                        <label class="Sub-heading">Name</label>
                        <%--<input class="input1" type="text" name="username" >--%>
                        <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="nametxt" ForeColor="red" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                        <br>
                        <br>

                        <label class="Sub-heading">Email</label>
                        <asp:TextBox ID="emailtxt" TextMode="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ControlToValidate="emailtxt" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                        <br>



                        <%--                        <label class="Sub-heading">Gender</label>
                        <%--<input class="input1" type="text" name="username">--%>
                        <%--   <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="189px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>--%>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ForeColor="Red" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>



                        <br>
                        <label class="Sub-heading">Password</label>
                        <%--<input class="input1" type="text" name="username">--%>
                        <asp:TextBox ID="passwordTxt" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordtxt" ForeColor="red" ErrorMessage="Password Required"></asp:RequiredFieldValidator>

                        <br>
                        <br>
                        <label class="Sub-heading">Confirm Password</label>
                        <%--<input class="input1" type="text" name="username">--%>
                        <asp:TextBox ID="ConfirmPassword" TextMode="Password" name="Confirm Password" runat="server"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" ForeColor="red" runat="server" ErrorMessage="Password Doesnt match" ControlToValidate="ConfirmPassword" Display="Dynamic" ControlToCompare="passwordtxt"></asp:CompareValidator>

                        <div class="btn">
                            <a href="#">
                                <br />
                                <asp:Button ID="Button1" class="button" runat="server" Text="Register" OnClick="Button1_Click" /></a>
                        </div>

                        <p class="for-pass">Already have an account?<a href="login.aspx"><span style="margin-left: 1%;" class="sub-text">Login</span></a></p>
                    </div>


                </div>
            </div>

            <canvas id="demo-canvas"></canvas>


        </div>
        <script src="app.js"></script>
    </form>

</body>
</html>
