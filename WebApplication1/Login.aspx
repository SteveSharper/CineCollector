<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Account.Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>User Login/Registration</h2>
    </hgroup>

    <article>

        <p>        
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="color: #FF3300" Text="User's credentials are incorrect or unavailable. Please try again!" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Username:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Password:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="New User" />
                    </td>
                </tr>
            </table>
        </p>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2">
                        <hgroup class="title">
                            <h1><%: Title %>.</h1>
                            <h2>Register for New Account</h2>
                        </hgroup>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">First Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><b>Email Address:</b></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Username:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Register" runat="server" Text="Register" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </article>

    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
    .auto-style1 {
        font-weight: bold;
    }
    .auto-style2 {
        width: 246px;
    }
</style>
</asp:Content>
