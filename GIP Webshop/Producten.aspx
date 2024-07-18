<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Producten.aspx.cs" Inherits="GIP_Webshop.Producten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Categorieën:<br />
    <asp:DropDownList ID="cboCategorieen" runat="server" AutoPostBack="True" DataSourceID="dtsCategorieen" DataTextField="Naam" DataValueField="CategorieID" OnSelectedIndexChanged="cboCategorieen_SelectedIndexChanged" OnDataBound="cboCategorieen_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dtsCategorieen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [CategorieID], [Naam] FROM [tblCategorie]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="dgvProducten" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="dtsProducten" OnSelectedIndexChanged="dgvProducten_SelectedIndexChanged" DataKeyNames="ProductID" BackColor="White" Font-Names="Arial">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
            <asp:BoundField DataField="Eenheidsprijs" HeaderText="Eenheidsprijs" SortExpression="Eenheidsprijs" />
            <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto" />
            <asp:BoundField DataField="Merk" HeaderText="Merk" SortExpression="Merk" />
            <asp:BoundField DataField="CategorieID" HeaderText="CategorieID" SortExpression="CategorieID" Visible="False" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
        </Columns>
        <SelectedRowStyle BackColor="#CC0000" ForeColor="Black" />
    </asp:GridView>
    <asp:SqlDataSource ID="dtsProducten" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [Naam], [Eenheidsprijs], [Foto], [Merk], [CategorieID], [ProductID] FROM [tblProducten] ORDER BY [Merk]"></asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="ddvFoto" runat="server" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="dtsFoto" Height="50px" Width="125px">
        <Fields>
            <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="Foto's/{0}" NullImageUrl="~/Foto's/Niet.jpg">
            </asp:ImageField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="dtsFoto" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [ProductID], [Foto], [CategorieID] FROM [tblProducten]"></asp:SqlDataSource>
    </p>
<p>
    <asp:Button ID="btnBestellen" runat="server" OnClick="btnBestellen_Click" Text="BESTELLING PLAATSEN" BackColor="#CC0000" ForeColor="White" />
</p>
<p>
    <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnTerug_Click" Text="TERUG NAAR EIGEN PROFIEL" />
</p>
<p>
</p>
</asp:Content>
