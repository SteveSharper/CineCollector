<%@ Page Title="Movies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="WebApplication1.Movies" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Search the Database of Movies and See What You Can Add</h2>
    </hgroup>

    <article>
        <p style="width: 1493px">        
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Film_ID" HeaderText="ID" />
                    <asp:TemplateField HeaderText="Poster">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Poster") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="100px" Width="66px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Distributor" HeaderText="Distributor" />
                    <asp:BoundField DataField="Director" HeaderText="Director" />
                    <asp:BoundField DataField="ReleaseDate" HeaderText="Year" />
                    <asp:BoundField DataField="Franchise" HeaderText="Franchise" />
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
        </p>
        <p>        
            <asp:Label ID="Label1" runat="server" Text="No Movies Listed in Database" Visible="False"></asp:Label>
        </p>

    </article>

    <aside>
        <h3>Options</h3>
        <p>        
            <strong>Search by Title:</strong></p>
        <p>        
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
        </p>
        <p>        
            Filter by:</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Distributor" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Release Year" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Franchise" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton4" runat="server" Text="Director" />
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
    </aside>
</asp:Content>
