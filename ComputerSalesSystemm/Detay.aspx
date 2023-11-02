<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="ComputerSalesSystemm.Detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detay</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" CaptionAlign="Right" CellPadding="1" CellSpacing="1" DataKeyField="BilgisayarId" DataSourceID="SqlDataSource1" Font-Bold="True" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# Eval("BilgisayarResim", "{0}") %>' Width="265px" />
                <br />
                <br />
                <br />
                BilgisayarId:
                <asp:Label ID="BilgisayarIdLabel" runat="server" Text='<%# Eval("BilgisayarId") %>' />
                <br />
                BilgisayarMarka:
                <asp:Label ID="BilgisayarMarkaLabel" runat="server" Text='<%# Eval("BilgisayarMarka") %>' />
                <br />
                BilgisayarModel:
                <asp:Label ID="BilgisayarModelLabel" runat="server" Text='<%# Eval("BilgisayarModel") %>' />
                <br />
                BİlgisayarRam:
                <asp:Label ID="BİlgisayarRamLabel" runat="server" Text='<%# Eval("BİlgisayarRam") %>' />
                <br />
                BilgisayarRamSlot:
                <asp:Label ID="BilgisayarRamSlotLabel" runat="server" Text='<%# Eval("BilgisayarRamSlot") %>' />
                <br />
                BilgisayarRamTipi:
                <asp:Label ID="BilgisayarRamTipiLabel" runat="server" Text='<%# Eval("BilgisayarRamTipi") %>' />
                <br />
                BilgisayarİşlemciNesili:
                <asp:Label ID="BilgisayarİşlemciNesiliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciNesili") %>' />
                <br />
                BilgisayarİşlemciMarkası:
                <asp:Label ID="BilgisayarİşlemciMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciMarkası") %>' />
                <br />
                BilgisayarİşlemciModeli:
                <asp:Label ID="BilgisayarİşlemciModeliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciModeli") %>' />
                <br />
                BilgisayarEkranKartıMarkası:
                <asp:Label ID="BilgisayarEkranKartıMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıMarkası") %>' />
                <br />
                BilgisayarEkranKartıModeli:
                <asp:Label ID="BilgisayarEkranKartıModeliLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıModeli") %>' />
                <br />
                BilgisayarEkranBoyutu:
                <asp:Label ID="BilgisayarEkranBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarEkranBoyutu") %>' />
                <br />
                BilgisayarEkranÇözünürlüğü:
                <asp:Label ID="BilgisayarEkranÇözünürlüğüLabel" runat="server" Text='<%# Eval("BilgisayarEkranÇözünürlüğü") %>' />
                <br />
                BilgisayarVRAM:
                <asp:Label ID="BilgisayarVRAMLabel" runat="server" Text='<%# Eval("BilgisayarVRAM") %>' />
                <br />
                BilgisayarSabitDiskTürü:
                <asp:Label ID="BilgisayarSabitDiskTürüLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskTürü") %>' />
                <br />
                BilgisayarSabitDiskMiktarı:
                <asp:Label ID="BilgisayarSabitDiskMiktarıLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskMiktarı") %>' />
                <br />
                BilgisayarSabitDiskBoyutu:
                <asp:Label ID="BilgisayarSabitDiskBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskBoyutu") %>' />
                <br />
                BilgisayarAçıklama:
                <asp:Label ID="BilgisayarAçıklamaLabel" runat="server" Text='<%# Eval("BilgisayarAçıklama") %>' />
                <br />
                BilgisayarTürü:
                <asp:Label ID="BilgisayarTürüLabel" runat="server" Text='<%# Eval("BilgisayarTürü") %>' />
                <br />
                BilgisayarİşletimSistemi:
                <asp:Label ID="BilgisayarİşletimSistemiLabel" runat="server" Text='<%# Eval("BilgisayarİşletimSistemi") %>' />
                <br />
                BilgisayarFiyat:
                <asp:Label ID="BilgisayarFiyatLabel" runat="server" Text='<%# Eval("BilgisayarFiyat") %>' />
                <br />
                BilgisayarStok:
                <asp:Label ID="BilgisayarStokLabel" runat="server" Text='<%# Eval("BilgisayarStok") %>' />
                <br />
                BilgisayarGarantiSüresi:
                <asp:Label ID="BilgisayarGarantiSüresiLabel" runat="server" Text='<%# Eval("BilgisayarGarantiSüresi") %>' />
                <br />
                BilgisayarResim:
                <asp:Label ID="BilgisayarResimLabel" runat="server" Text='<%# Eval("BilgisayarResim") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bilgisayarsatis %>" ProviderName="<%$ ConnectionStrings:bilgisayarsatis.ProviderName %>" SelectCommand="SELECT * FROM [bilgisayar] WHERE ([BilgisayarId] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="BilgisayarId" QueryStringField="BilgisayarId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
