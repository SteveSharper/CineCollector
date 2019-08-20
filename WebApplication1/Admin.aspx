<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.Admin" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <asp:Panel ID="Panel1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2">
                        <hgroup class="title">
                            <h1><%: Title %>.</h1>
                            <h2>Add New Movie</h2>
                        </hgroup>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Visible="False" style="color: #FF0000; font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Film Title:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Distributor:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Director<b>:</b></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Release Date:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Franchise:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                        <br />
                        Entry number:
                        <asp:TextBox ID="TextBox8" runat="server" Width="43px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Picture:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    <hgroup>
    </hgroup>

    <article>

        <p>        
            &nbsp;</p>
    </article>

    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
    </asp:Content>