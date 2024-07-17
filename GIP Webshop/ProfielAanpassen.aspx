<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="ProfielAanpassen.aspx.cs" Inherits="GIP_Webshop.ProfielAanpassen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Profiel aanpassen</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="KlantID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" BackColor="White" Font-Names="Arial">
            <Fields>
                <asp:BoundField DataField="KlantID" HeaderText="KlantID" InsertVisible="False" ReadOnly="True" SortExpression="KlantID" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Voornaam" HeaderText="Voornaam" SortExpression="Voornaam" />
                <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                <asp:BoundField DataField="Gemeente" HeaderText="Gemeente" SortExpression="Gemeente" />
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Wachtwoord" HeaderText="Wachtwoord" SortExpression="Wachtwoord" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" DeleteCommand="DELETE FROM [tblKlanten] WHERE [KlantID] = ?" InsertCommand="INSERT INTO [tblKlanten] ([KlantID], [Naam], [Voornaam], [Adres], [Gemeente], [Postcode], [Email], [Wachtwoord]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [KlantID], [Naam], [Voornaam], [Adres], [Gemeente], [Postcode], [Email], [Wachtwoord] FROM [tblKlanten] WHERE ([KlantID] = ?)" UpdateCommand="UPDATE [tblKlanten] SET [Naam] = ?, [Voornaam] = ?, [Adres] = ?, [Gemeente] = ?, [Postcode] = ?, [Email] = ?, [Wachtwoord] = ? WHERE [KlantID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="KlantID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="KlantID" Type="Int32" />
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Voornaam" Type="String" />
                <asp:Parameter Name="Adres" Type="String" />
                <asp:Parameter Name="Gemeente" Type="String" />
                <asp:Parameter Name="Postcode" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Wachtwoord" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="KlantID" SessionField="KLantID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Voornaam" Type="String" />
                <asp:Parameter Name="Adres" Type="String" />
                <asp:Parameter Name="Gemeente" Type="String" />
                <asp:Parameter Name="Postcode" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Wachtwoord" Type="String" />
                <asp:Parameter Name="KlantID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnTerug_Click" Text="TERUG NAAR JE EIGEN PROFIEL" />
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
    <p>
    </p>
</asp:Content>
