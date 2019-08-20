<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Contact Info</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About the Programmer</h3>
        </header>
        <p>
            I hope you enjoy this web application and would love to leave the door open for communication and feedback. So, if you would you have any questions or comments about the project as it is now, or would like to contact me with potential job opportunities, feel free to send me an email, comment on the repository on GitHub, or send me a message via LinedIn. I am currently seeking a job as a software developer or back-end developer.</p>
    </section>

    <section class="contact">
        <header>
            <h3>Contact Info:</h3>
        </header>
        <p>
            <strong>Email</strong><span class="label">:</span>
            ArceSteven97@gmail.com
        </p>
        <p>
            <strong>LinkedIn profile</strong><span class="label">:</span>
            www.linkedin.com/in/steven-arce-jr-70b228175
        </p>
    </section>

    </asp:Content>