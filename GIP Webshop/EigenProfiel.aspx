<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="EigenProfiel.aspx.cs" Inherits="GIP_Webshop.EigenProfiel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Button ID="btnAanpassen" runat="server" Text="AANPASSEN PROFIEL" OnClick="btnAanpassen_Click" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Button ID="btnEigenBes" runat="server" Text="MIJN BESTELLINGEN" BackColor="#CC0000" ForeColor="White" OnClick="btnEigenBes_Click" />
    </p>
    <p>
        <asp:Button ID="btnProducten" runat="server" OnClick="btnProducten_Click" Text="PRODUCTEN BEKIJKEN" BackColor="#CC0000" ForeColor="White" />
    </p>
    <p>
        <asp:Button ID="btnAfmelden" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnAfmelden_Click" Text="AFMELDEN" />
    </p>
</asp:Content>
