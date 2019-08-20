<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>About CineCollector</h2>
    </hgroup>

    <article>
        <h2>        
            Background</h2>
        <p>        
            Hi! My name is Steven, and I thank you for checking out CineCollector, a makeshift collection app meant to help users organize and keep track of their movie collections (e.g. Blu-Ray, DVD, VHS, or Digital). The purpose of this project is to demonstrate my skills in certain technologies, but also as a creative exercise. I have a massive love for movies so I figured I&#39;d create a way to organize my massive collection of DVDs in a way that&#39;s visually interesting and personally convenient. So, whether you&#39;re a fellow programmer using this project as a starting point for your own project, or an employer viewing this project as an example of my skill set, I hope you enjoy the project as much as I did making it. New features will be added in the future as well.</p>
        <p>        
            Below are some general bits of information which I hope will help you navigate the full features of the app.</p>

        <h2>        
            Technologies/Specifications</h2>
        <p>        
            This project was built with the following specs:</p>
        <ul>
            <li>Environment: Visual Basic 2012</li>
            <li>Framework: ASP.NET (Web Forms Application)</li>
            <li>Database: MySQL</li>
            <li>Programming Languages: C#, SQL, HTML, CSS</li>
        </ul>

        <h2>        
            Instructions</h2>
        <p>        
            Those trying the app for the first time should take the following steps to get started.</p>
        <ol>
            <li><strong>Log-In to an Account:</strong> Only logged-in users have access to their personal collection list. To do this, navigate to the top right of the screen and click &quot;<a runat="server" href="~/Login.aspx">Log In</a>&quot;. There you can enter a username and password to gain full access to the app&#39;s features. You may also register for an account by clicking the &quot;New User&quot; button and entering your credentials. Every user is granted their own User ID, which will be used to ensure you only see YOUR movies in your collection.<ol>
                <li>If you wish to forego making your own account, you may also enter these credentials in the Log-In screen to access the free user accounts. Below you&#39;ll find an appropriate account (1 admin and 4 basic users) written in the following format: USERNAME (PASSWORD). These will also be accessible in the database table &quot;Users&quot;.<ol>
                    <li>Pokerface (@pplause) [<strong>Admin account</strong>]</li>
                    <li>Johnnytest (passwerd)</li>
                    <li>Iamlegend (badboyz)</li>
                    <li>Shapeofu (perfect1)</li>
                    <li>TheGreatPretender (delilah91)</li>
                    </ol>
                </li>
                </ol>
            </li>
            <li><strong>Add Movies:</strong> Once you successfully log in, you&#39;ll be redirected to the the &quot;<a runat="server" href="~/Collection.aspx">Collection</a>&quot; page. New users will notice this page is empty, only showing their first name and User ID. That&#39;s because there are no movies in the collection yet. To fill your list with movies, go to &quot;<a runat="server" href="~/Movies.aspx">Movies</a>&quot; and see our site&#39;s database of over 130 movies recognized by our database. You may search the database for the film(s) you&#39;re looking for, or add any of these films for it to be viewed in your personal collection.<ol>
                <li><strong>Search:</strong> You may search for films with respect to a film&#39;s Title, Director, Distributor, Year of Release, or Franchise (if applicable). To search by title, enter your search phrase without checking any of the RadioButtons beneath. Otherwise, check the appropriate RadioButton to filter your search ny that category. (Note: Director searches are ordered by Year, while Franchise searches are ordered by Entry. All other searches are by Film ID).</li>
                <li><strong>Add:</strong> When you find a movie you want to add, enter the Film ID found just before that film&#39;s title and type it into the TextBox. Then press &quot;Add&quot;. Assuming you enterred an appropriate number, you will be redirected to the &quot;Collection&quot; tab to see your film added.</li>
                <li><strong>Insert New Movie:</strong> If you&#39;re logged into the Admin account, you&#39;re able to add new films to the existing database of possible films to add. You can do this from the Admin page (only available to Admin users... or, since this is a test, by clicking <a id="A1" runat="server" href="~/Admin.aspx">here</a>). Enter the credentials and upload an images (.jpg only). </li>
                </ol>
            </li>
            <li><strong>View and Edit Collection:</strong> View your collection by returning to the &quot;<a runat="server" href="~/Collection.aspx">Collection</a>&quot; tab. Your collection is only visible to you and cannot be accessed by other users. If you choose to edit the contents of your collection, you may either delete specific movies by clicking &#39;Edit List&quot; and enterring the film&#39;s title or click &quot;Clear All&quot; to erase all items from yourcollection.</li>
        </ol>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About">About</a></li>
            <li><a runat="server" href="~/Contact">Contact</a></li>
        </ul>
    </aside>
</asp:Content>