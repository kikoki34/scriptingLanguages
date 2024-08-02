<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Beheerder.aspx.cs" Inherits="GIP_Webshop.Beheerder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Button ID="btnKlanten" runat="server" OnClick="btnKlanten_Click" Text="KLANTEN BEHEREN" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Button ID="btnProducten" runat="server" OnClick="btnProducten_Click" Text="PRODUCTEN BEHEREN" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Button ID="btnBestellingen" runat="server" OnClick="btnBestellingen_Click" Text="BESTELLINGEN BEKIJKEN" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Button ID="btnAfmelden" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnAfmelden_Click" Text="AFMELDEN" />
    </p>
</asp:Content>
