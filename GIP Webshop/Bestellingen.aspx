<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Bestellingen.aspx.cs" Inherits="GIP_Webshop.Bestellingen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bestellen<br />
        <asp:GridView ID="dgvProducten" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="dtsProducten" OnSelectedIndexChanged="dgvProducten_SelectedIndexChanged" BackColor="White" Font-Names="Arial">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Eenheidsprijs" HeaderText="Eenheidsprijs" SortExpression="Eenheidsprijs" />
                <asp:BoundField DataField="Voorraad" HeaderText="Voorraad" SortExpression="Voorraad" />
                <asp:BoundField DataField="Merk" HeaderText="Merk" SortExpression="Merk" />
            </Columns>
            <SelectedRowStyle BackColor="#CC0000" ForeColor="Black" />
        </asp:GridView>
        <asp:SqlDataSource ID="dtsProducten" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT ProductID, Naam, Eenheidsprijs, Voorraad, Merk FROM tblProducten WHERE (Voorraad &gt; 0)"></asp:SqlDataSource>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <br />
        Geef aantal in:
        <asp:TextBox ID="txtAantal" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnWinkelMandje" runat="server" OnClick="btnWinkelMandje_Click" Text="TOEVOEGEN AAN WINKELMANDJE" BackColor="#CC0000" ForeColor="White" />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <br />
            <asp:ListBox ID="lstArtikelID" runat="server"></asp:ListBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstNaam" runat="server"></asp:ListBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstAantal" runat="server"></asp:ListBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstPrijs" runat="server"></asp:ListBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnAfrekenen" runat="server" OnClick="btnAfrekenen_Click" Text="AFREKENEN" BackColor="#CC0000" ForeColor="White" />
        </asp:Panel>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
