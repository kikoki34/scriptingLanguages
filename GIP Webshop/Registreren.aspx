<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="GIP_Webshop.Registreren" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Registreren</p>
    <p>
        Naam:&nbsp;
        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNaam" ErrorMessage="Naam is verplicht!" Font-Names="Arial"></asp:RequiredFieldValidator>
    </p>
    <p>
        Voornaam:&nbsp;
        <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVoornaam" ErrorMessage="Voornaam is verplicht!" Font-Names="Arial"></asp:RequiredFieldValidator>
    </p>
    <p>
        Adres:&nbsp;
        <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdres" ErrorMessage="Adres is verplicht!" Font-Names="Arial"></asp:RequiredFieldValidator>
    </p>
    <p>
        Gemeente:&nbsp;
        <asp:TextBox ID="txtGemeente" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGemeente" ErrorMessage="Gemeente is verplicht!" Font-Names="Arial"></asp:RequiredFieldValidator>
    </p>
    <p>
        Postcode:&nbsp;
        <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Postcode is enkel 4 cijfers!" ValidationExpression="\d{4}" Font-Names="Arial"></asp:RegularExpressionValidator>
    </p>
    <p>
        E-mail:&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is niet juist!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Arial"></asp:RegularExpressionValidator>
    </p>
    <p>
        Wachtwoord:&nbsp;
        <asp:TextBox ID="txtWW" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtWW" ErrorMessage="Wachtwoord is verplicht!" Font-Names="Arial"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="REGISTREREN" BackColor="#CC0000" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAnnuleren" runat="server" OnClick="btnAnnuleren_Click" Text="ANNULEREN" BackColor="#CC0000" ForeColor="White" />
    </p>
</asp:Content>
