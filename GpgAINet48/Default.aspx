<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GpgAINet48._Default" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;
            </a>
        </p>
        <p><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Data - depedency" />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged">https://dc.services.visualstudio.com/api/profiles/ab30c0d0-cbb2-4fd6-bce0-eaa688f0eace/appId</asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Custom Event" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Custom Metric" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Track Exception" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Track Trace" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
