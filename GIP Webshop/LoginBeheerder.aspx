<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="LoginBeheerder.aspx.cs" Inherits="GIP_Webshop.LoginBeheerder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br />
    login:<asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
&nbsp;<p>wachtwoord:
        <asp:TextBox ID="txtWW" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAanmelden" runat="server" OnClick="btnAanmelden_Click" Text="AANMELDEN" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Label ID="lblmelding" runat="server"></asp:Label>
    </p>
    <p></p>
</asp:Content>
