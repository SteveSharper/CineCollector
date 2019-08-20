<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Welcome to the CineCollector</h2>
            </hgroup>
            <p>
                This web application allows users to keep an online record of their movie collections. Select from a database of over 50 films, and build your online list of movies in an instant.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>How to get started:</h3>
    <ol class="round">
        <li class="one">
            <h5>Log In</h5>
            If you&#39;re new to CineCollector, register for a new account to get started. If you do have an account, you know what to do. Log in, and start cataloging.</li>
        <li class="two">
            <h5>Add Movies</h5>
            Our database of movies is conatntly expanding with more and more titles for you to add. When you see a movie you own, click the add button and it&#39;ll be added to your personal collection list.</li>
        <li class="three">
            <h5>View collection</h5>
            Once you have movies added to your collection list, view them and keep track with them over time. Use this list to show off to your friends, aid you on your shopping spree, or just as a reference.</li>
    </ol>
</asp:Content>
