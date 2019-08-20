<%@ Page Title="Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="WebApplication1.Collection" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup>
    </hgroup>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style2">
            <span class="auto-style1"><strong style="text-align: center">As an Admin, you have the ability to add movies to the database and manage all user accounts.</strong></span><br />
            <asp:Button ID="Button4" runat="server" Text="Admin Page" OnClick="Button4_Click" />
        </div>
    </asp:Panel>
    <xxxxelmt>
    <h2> <asp:Label ID="userLabel" Text="No User" runat="server"></asp:Label>'s Collection (<asp:Label ID="atID" Text="No User" runat="server"></asp:Label>)</h2>
    </xxxxelmt>

    <article>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Poster">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Poster") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="100px" Width="66px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Film_Title" HeaderText="Title" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </article>

    <aside>
        <h3>Collection Options</h3>
        <p>        
            Delete all of or selected films from your Collection here:</p>
        <ul>
            <li>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit Collection" />
                <asp:Panel ID="Panel1" runat="server" Height="137px" Visible="False">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="Error: No film with that title exists in your collection" Visible="False"></asp:Label>
                    <strong>
                    <br />
                    Enter Title To Delete:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" OnClick="Button1_Click1" Text="Delete" />
                </asp:Panel>
            </li>
            <li>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear All" />
            </li>
        </ul>
    </aside>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
    </asp:Content>


