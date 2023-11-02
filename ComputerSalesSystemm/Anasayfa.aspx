<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ComputerSalesSystemm.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Anasayfa</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" BorderWidth="2px" CellSpacing="1" DataKeyField="BilgisayarId" DataSourceID="SqlDataSource1" Height="363px" HorizontalAlign="Right" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="205px" ImageUrl='<%# Eval("BilgisayarResim", "{0}") %>' Width="234px" />
                <br />
                <br />
                <asp:Label ID="BilgisayarAçıklamaLabel" runat="server" Font-Bold="True" ForeColor="#FF33CC" Text='<%# Eval("BilgisayarAçıklama") %>' />
                <br />
                &nbsp;<br />&nbsp;<asp:Label ID="BilgisayarFiyatLabel" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("BilgisayarFiyat") %>' />
                &nbsp;TL<br />
                <br />
<br />          <a href="Detay.aspx?BilgisayarId=<%# Eval("BilgisayarId") %>" style="color:red; background-color:aqua; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"">Detay</a>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bilgisayarsatis %>" ProviderName="<%$ ConnectionStrings:bilgisayarsatis.ProviderName %>" SelectCommand="SELECT [BilgisayarId], [BilgisayarAçıklama], [BilgisayarFiyat], [BilgisayarStok], [BilgisayarResim] FROM [bilgisayar]"></asp:SqlDataSource>
    </form>
</body>
</html>
