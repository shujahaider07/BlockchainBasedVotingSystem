<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="BlockchainBasedVotingSystem.Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">NAME</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="171px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PASSWORD</td>
                <td>
                    <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" Height="31px" Width="171px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="LOGIN" Width="77px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </form>
</body>
</html>
