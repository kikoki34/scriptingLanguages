<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="MijnBestellingen.aspx.cs" Inherits="GIP_Webshop.MijnBestellingen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Mijn bestellingen</p>
    <p>
        <asp:GridView ID="dgvBestellingen" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BestellingsID" DataSourceID="dtsBestellingen" BackColor="White" BorderColor="White" OnSelectedIndexChanged="dgvBestellingen_SelectedIndexChanged" Font-Names="Arial">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" ReadOnly="True" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Vervoerskosten" HeaderText="Vervoerskosten" SortExpression="Vervoerskosten" />
                <asp:BoundField DataField="KlantID" HeaderText="KlantID" SortExpression="KlantID" />
            </Columns>
            <SelectedRowStyle BackColor="#CC0000" ForeColor="Black" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dtsBestellingen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [BestellingsID], [Datum], [Vervoerskosten], [KlantID] FROM [tblBestellingen] WHERE ([KlantID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="KlantID" SessionField="KlantID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="dgvHeeft" runat="server" AutoGenerateColumns="False" DataSourceID="dtsHeeft" BackColor="White" Font-Names="Arial">
            <Columns>
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Eenheidsprijs" HeaderText="Eenheidsprijs" SortExpression="Eenheidsprijs" />
                <asp:BoundField DataField="Aantal" HeaderText="Aantal" SortExpression="Aantal" />
                <asp:BoundField DataField="Totaal" HeaderText="Totaal" ReadOnly="True" SortExpression="Totaal" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dtsHeeft" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT tblBestellingen.BestellingsID, tblProducten.Naam, tblProducten.Eenheidsprijs, tblHeeft.Aantal, tblProducten.Eenheidsprijs * tblHeeft.Aantal AS Totaal FROM ((tblBestellingen INNER JOIN tblHeeft ON tblBestellingen.BestellingsID = tblHeeft.BestellingsID) INNER JOIN tblProducten ON tblHeeft.ProductID = tblProducten.ProductID)"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Totale kost van de bestelling:"></asp:Label>
    </p>
    <p>
        &nbsp;<asp:FormView ID="FormView1" runat="server" DataKeyNames="BestellingsID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
                Totaal:
                <asp:TextBox ID="TotaalTextBox" runat="server" Text='<%# Bind("Totaal") %>' />
                <br />
                BestellingsID:
                <asp:Label ID="BestellingsIDLabel1" runat="server" Text='<%# Eval("BestellingsID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Totaal:
                <asp:TextBox ID="TotaalTextBox" runat="server" Text='<%# Bind("Totaal") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Totaal:
                <asp:Label ID="TotaalLabel" runat="server" Text='<%# Bind("Totaal") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Hierbij komen nog 5 euro vervoerskosten!"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT SUM(tblHeeft.Aantal * tblProducten.Eenheidsprijs) AS Totaal, tblBestellingen.BestellingsID FROM ((tblBestellingen INNER JOIN tblHeeft ON tblBestellingen.BestellingsID = tblHeeft.BestellingsID) INNER JOIN tblProducten ON tblHeeft.ProductID = tblProducten.ProductID) GROUP BY tblBestellingen.BestellingsID"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" Text="TERUG NAAR EIGEN PROFIEL" OnClick="btnTerug_Click" />
    </p>
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
</asp:Content>
