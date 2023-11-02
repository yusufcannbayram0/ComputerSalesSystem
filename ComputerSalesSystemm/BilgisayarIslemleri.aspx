<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BilgisayarIslemleri.aspx.cs" Inherits="ComputerSalesSystemm.BilgisayarIslemleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bilgisayar İşlemleri</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        #TextArea1 {
            height: 52px;
            width: 194px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style10 {
            width: 361px;
        }
        .auto-style11 {
            height: 26px;
            width: 361px;
        }
        .auto-style12 {
            height: 23px;
            width: 361px;
        }
        .auto-style14 {
            height: 18px;
            width: 311px;
        }
        .auto-style16 {
            height: 18px;
        }
        .auto-style21 {
            height: 22px;
        }
        .auto-style23 {
            width: 159px;
        }
        .auto-style24 {
            height: 26px;
            width: 159px;
        }
        .auto-style25 {
            width: 249px;
        }
        .auto-style29 {
            height: 18px;
            width: 249px;
        }
        .auto-style30 {
            height: 23px;
            width: 249px;
        }
        .auto-style31 {
            height: 26px;
            width: 249px;
        }
        .auto-style32 {
            height: 23px;
            width: 311px;
        }
        .auto-style33 {
            height: 26px;
            width: 311px;
        }
        .auto-style34 {
            width: 311px;
        }
        .auto-style35 {
            height: 23px;
            width: 255px;
        }
        .auto-style36 {
            height: 26px;
            width: 255px;
        }
        .auto-style37 {
            width: 255px;
        }
        .auto-style38 {
            height: 18px;
            width: 255px;
        }
        .auto-style39 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style35" rowspan="7">
                    &nbsp;</td>
                <td colspan="2" rowspan="6">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="338px" CssClass="auto-style39" />
                </td>
                <td class="auto-style1" colspan="3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td rowspan="13">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;</td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td rowspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style30"></td>
                <td colspan="3" class="auto-style1"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style35" rowspan="2">Bilgisayar Id&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style32" rowspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style25">İşlemci Modeli</td>
                <td colspan="3" class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10" rowspan="2">&nbsp;</td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">Ekran Kartı Markası</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="19px" Width="126px">
                        <asp:ListItem>NVIDIA</asp:ListItem>
                        <asp:ListItem>AMD</asp:ListItem>
                        <asp:ListItem>INTEL</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style36" style="margin-left: 40px" rowspan="2">Kategori Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style33" rowspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style25">Ekran Kartı Modeli</td>
                <td class="auto-style6" colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11" rowspan="2"></td>
                <td class="auto-style6" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style25">Ekran Boyutu</td>
                <td class="auto-style24" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td rowspan="2" class="auto-style37">Bilgisayar Markası&nbsp; </td>
                <td class="auto-style34" rowspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="119px">
                        <asp:ListItem>Monster</asp:ListItem>
                        <asp:ListItem>Casper</asp:ListItem>
                        <asp:ListItem>Asus</asp:ListItem>
                        <asp:ListItem>Acer</asp:ListItem>
                        <asp:ListItem>HP</asp:ListItem>
                        <asp:ListItem>Lenovo</asp:ListItem>
                        <asp:ListItem>Apple</asp:ListItem>
                        <asp:ListItem>Huawei</asp:ListItem>
                        <asp:ListItem>Dell</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style25">Ekran Çözünürlüğü</td>
                <td colspan="3" class="auto-style21">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10" rowspan="2">&nbsp;</td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">VRAM Sayısı</td>
                <td colspan="3" class="auto-style1">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style38" rowspan="2">Bilgisayar Modeli&nbsp;&nbsp; </td>
                <td class="auto-style14" rowspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style29">Sabit Disk Türü</td>
                <td class="auto-style16" colspan="2">
                    <asp:DropDownList ID="DropDownList6" runat="server" Height="17px" Width="124px">
                        <asp:ListItem>SSD</asp:ListItem>
                        <asp:ListItem>HDD</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16" colspan="3" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style29">Sabit Disk Miktarı</td>
                <td class="auto-style16" colspan="2">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td rowspan="2" class="auto-style37">Bilgisayar Ram Sayısı&nbsp;&nbsp; </td>
                <td class="auto-style34" rowspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style25">Sabit Disk Boyutu</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="126px">
                        <asp:ListItem>TB</asp:ListItem>
                        <asp:ListItem>GB</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td colspan="3" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">Açıklama</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox16" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style11" colspan="2"></td>
            </tr>
            <tr>
                <td rowspan="2" class="auto-style37">Bilgisayar Ram Slot Türü&nbsp; </td>
                <td class="auto-style34" rowspan="2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style25">Bilgisayar Türü</td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" Width="125px">
                        <asp:ListItem>Oyun</asp:ListItem>
                        <asp:ListItem>Ev</asp:ListItem>
                        <asp:ListItem>Ofis/İş</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10" colspan="2">&nbsp;</td>
                <td colspan="3" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">İşletim Sistemi</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList9" runat="server" Width="131px">
                        <asp:ListItem>Windows 11</asp:ListItem>
                        <asp:ListItem>Windows 10</asp:ListItem>
                        <asp:ListItem>Mac Os</asp:ListItem>
                        <asp:ListItem>Freedos </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style36" rowspan="2">Bilgisayar Ram Tipi&nbsp;&nbsp; </td>
                <td class="auto-style33" rowspan="2">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="125px">
                        <asp:ListItem>DDR2</asp:ListItem>
                        <asp:ListItem>DDR3</asp:ListItem>
                        <asp:ListItem>DDR4</asp:ListItem>
                        <asp:ListItem>DDR5</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style31">Bilgisayar Fiyatı</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11" colspan="2"></td>
                <td class="auto-style6" colspan="3" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style31">Stok Sayısı</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style35" rowspan="2">Bilgisayar İşlemci Nesili&nbsp;&nbsp; </td>
                <td class="auto-style32" rowspan="2">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="122px">
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style30">Garanti Süresi</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12" colspan="2"></td>
                <td class="auto-style1" colspan="3" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style30">Resim</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style12" colspan="2"></td>
            </tr>
            <tr>
                <td rowspan="2" class="auto-style37">Bilgisayar İşlemci Markası&nbsp; </td>
                <td class="auto-style34" rowspan="2">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="126px">
                        <asp:ListItem>INTEL</asp:ListItem>
                        <asp:ListItem>AMD</asp:ListItem>
                        <asp:ListItem>APPLE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10" colspan="4">
                    <asp:Button ID="btn_ekle" runat="server" OnClick="btn_ekle_Click" Text="EKLE" />
                    <asp:Button ID="btn_guncelle" runat="server" Text="GUNCELLE" OnClick="btn_guncelle_Click" />
                    <asp:Button ID="btn_sil" runat="server" Text="SIL" OnClick="btn_sil_Click" />
                </td>
                <td colspan="3" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="4">
                    <asp:Button ID="btn_doldur" runat="server" OnClick="btn_doldur_Click" Text="DOLDUR VE GETIR" Width="139px" />
                    <asp:Button ID="btn_temizle" runat="server" OnClick="btn_temizle_Click" Text="TEMİZLE" />
                </td>
            </tr>
            </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="BilgisayarId">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Label ID="BilgisayarIdLabel" runat="server" Text='<%# Eval("BilgisayarId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("KategoriId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarMarkaLabel" runat="server" Text='<%# Eval("BilgisayarMarka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarModelLabel" runat="server" Text='<%# Eval("BilgisayarModel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BİlgisayarRamLabel" runat="server" Text='<%# Eval("BİlgisayarRam") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamSlotLabel" runat="server" Text='<%# Eval("BilgisayarRamSlot") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamTipiLabel" runat="server" Text='<%# Eval("BilgisayarRamTipi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciNesiliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciNesili") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciModeliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıModeliLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarEkranBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranÇözünürlüğüLabel" runat="server" Text='<%# Eval("BilgisayarEkranÇözünürlüğü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarVRAMLabel" runat="server" Text='<%# Eval("BilgisayarVRAM") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskTürüLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskMiktarıLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskMiktarı") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarAçıklamaLabel" runat="server" Text='<%# Eval("BilgisayarAçıklama") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarTürüLabel" runat="server" Text='<%# Eval("BilgisayarTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşletimSistemiLabel" runat="server" Text='<%# Eval("BilgisayarİşletimSistemi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarFiyatLabel" runat="server" Text='<%# Eval("BilgisayarFiyat") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarStokLabel" runat="server" Text='<%# Eval("BilgisayarStok") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarGarantiSüresiLabel" runat="server" Text='<%# Eval("BilgisayarGarantiSüresi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarResimLabel" runat="server" Text='<%# Eval("BilgisayarResim") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarIdLabel1" runat="server" Text='<%# Eval("BilgisayarId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="KategoriIdTextBox" runat="server" Text='<%# Bind("KategoriId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarMarkaTextBox" runat="server" Text='<%# Bind("BilgisayarMarka") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarModelTextBox" runat="server" Text='<%# Bind("BilgisayarModel") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BİlgisayarRamTextBox" runat="server" Text='<%# Bind("BİlgisayarRam") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarRamSlotTextBox" runat="server" Text='<%# Bind("BilgisayarRamSlot") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarRamTipiTextBox" runat="server" Text='<%# Bind("BilgisayarRamTipi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciNesiliTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciNesili") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciMarkasıTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciMarkası") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciModeliTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciModeli") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranKartıMarkasıTextBox" runat="server" Text='<%# Bind("BilgisayarEkranKartıMarkası") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranKartıModeliTextBox" runat="server" Text='<%# Bind("BilgisayarEkranKartıModeli") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranBoyutuTextBox" runat="server" Text='<%# Bind("BilgisayarEkranBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranÇözünürlüğüTextBox" runat="server" Text='<%# Bind("BilgisayarEkranÇözünürlüğü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarVRAMTextBox" runat="server" Text='<%# Bind("BilgisayarVRAM") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskTürüTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskTürü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskMiktarıTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskMiktarı") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskBoyutuTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarAçıklamaTextBox" runat="server" Text='<%# Bind("BilgisayarAçıklama") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarTürüTextBox" runat="server" Text='<%# Bind("BilgisayarTürü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşletimSistemiTextBox" runat="server" Text='<%# Bind("BilgisayarİşletimSistemi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarFiyatTextBox" runat="server" Text='<%# Bind("BilgisayarFiyat") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarStokTextBox" runat="server" Text='<%# Bind("BilgisayarStok") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarGarantiSüresiTextBox" runat="server" Text='<%# Bind("BilgisayarGarantiSüresi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarResimTextBox" runat="server" Text='<%# Bind("BilgisayarResim") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="KategoriIdTextBox" runat="server" Text='<%# Bind("KategoriId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarMarkaTextBox" runat="server" Text='<%# Bind("BilgisayarMarka") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarModelTextBox" runat="server" Text='<%# Bind("BilgisayarModel") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BİlgisayarRamTextBox" runat="server" Text='<%# Bind("BİlgisayarRam") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarRamSlotTextBox" runat="server" Text='<%# Bind("BilgisayarRamSlot") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarRamTipiTextBox" runat="server" Text='<%# Bind("BilgisayarRamTipi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciNesiliTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciNesili") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciMarkasıTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciMarkası") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşlemciModeliTextBox" runat="server" Text='<%# Bind("BilgisayarİşlemciModeli") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranKartıMarkasıTextBox" runat="server" Text='<%# Bind("BilgisayarEkranKartıMarkası") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranKartıModeliTextBox" runat="server" Text='<%# Bind("BilgisayarEkranKartıModeli") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranBoyutuTextBox" runat="server" Text='<%# Bind("BilgisayarEkranBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarEkranÇözünürlüğüTextBox" runat="server" Text='<%# Bind("BilgisayarEkranÇözünürlüğü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarVRAMTextBox" runat="server" Text='<%# Bind("BilgisayarVRAM") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskTürüTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskTürü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskMiktarıTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskMiktarı") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarSabitDiskBoyutuTextBox" runat="server" Text='<%# Bind("BilgisayarSabitDiskBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarAçıklamaTextBox" runat="server" Text='<%# Bind("BilgisayarAçıklama") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarTürüTextBox" runat="server" Text='<%# Bind("BilgisayarTürü") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarİşletimSistemiTextBox" runat="server" Text='<%# Bind("BilgisayarİşletimSistemi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarFiyatTextBox" runat="server" Text='<%# Bind("BilgisayarFiyat") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarStokTextBox" runat="server" Text='<%# Bind("BilgisayarStok") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarGarantiSüresiTextBox" runat="server" Text='<%# Bind("BilgisayarGarantiSüresi") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BilgisayarResimTextBox" runat="server" Text='<%# Bind("BilgisayarResim") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Label ID="BilgisayarIdLabel" runat="server" Text='<%# Eval("BilgisayarId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("KategoriId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarMarkaLabel" runat="server" Text='<%# Eval("BilgisayarMarka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarModelLabel" runat="server" Text='<%# Eval("BilgisayarModel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BİlgisayarRamLabel" runat="server" Text='<%# Eval("BİlgisayarRam") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamSlotLabel" runat="server" Text='<%# Eval("BilgisayarRamSlot") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamTipiLabel" runat="server" Text='<%# Eval("BilgisayarRamTipi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciNesiliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciNesili") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciModeliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıModeliLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarEkranBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranÇözünürlüğüLabel" runat="server" Text='<%# Eval("BilgisayarEkranÇözünürlüğü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarVRAMLabel" runat="server" Text='<%# Eval("BilgisayarVRAM") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskTürüLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskMiktarıLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskMiktarı") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarAçıklamaLabel" runat="server" Text='<%# Eval("BilgisayarAçıklama") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarTürüLabel" runat="server" Text='<%# Eval("BilgisayarTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşletimSistemiLabel" runat="server" Text='<%# Eval("BilgisayarİşletimSistemi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarFiyatLabel" runat="server" Text='<%# Eval("BilgisayarFiyat") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarStokLabel" runat="server" Text='<%# Eval("BilgisayarStok") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarGarantiSüresiLabel" runat="server" Text='<%# Eval("BilgisayarGarantiSüresi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarResimLabel" runat="server" Text='<%# Eval("BilgisayarResim") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server">BilgisayarId</th>
                                                <th runat="server">KategoriId</th>
                                                <th runat="server">BilgisayarMarka</th>
                                                <th runat="server">BilgisayarModel</th>
                                                <th runat="server">BİlgisayarRam</th>
                                                <th runat="server">BilgisayarRamSlot</th>
                                                <th runat="server">BilgisayarRamTipi</th>
                                                <th runat="server">BilgisayarİşlemciNesili</th>
                                                <th runat="server">BilgisayarİşlemciMarkası</th>
                                                <th runat="server">BilgisayarİşlemciModeli</th>
                                                <th runat="server">BilgisayarEkranKartıMarkası</th>
                                                <th runat="server">BilgisayarEkranKartıModeli</th>
                                                <th runat="server">BilgisayarEkranBoyutu</th>
                                                <th runat="server">BilgisayarEkranÇözünürlüğü</th>
                                                <th runat="server">BilgisayarVRAM</th>
                                                <th runat="server">BilgisayarSabitDiskTürü</th>
                                                <th runat="server">BilgisayarSabitDiskMiktarı</th>
                                                <th runat="server">BilgisayarSabitDiskBoyutu</th>
                                                <th runat="server">BilgisayarAçıklama</th>
                                                <th runat="server">BilgisayarTürü</th>
                                                <th runat="server">BilgisayarİşletimSistemi</th>
                                                <th runat="server">BilgisayarFiyat</th>
                                                <th runat="server">BilgisayarStok</th>
                                                <th runat="server">BilgisayarGarantiSüresi</th>
                                                <th runat="server">BilgisayarResim</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Label ID="BilgisayarIdLabel" runat="server" Text='<%# Eval("BilgisayarId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("KategoriId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarMarkaLabel" runat="server" Text='<%# Eval("BilgisayarMarka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarModelLabel" runat="server" Text='<%# Eval("BilgisayarModel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BİlgisayarRamLabel" runat="server" Text='<%# Eval("BİlgisayarRam") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamSlotLabel" runat="server" Text='<%# Eval("BilgisayarRamSlot") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarRamTipiLabel" runat="server" Text='<%# Eval("BilgisayarRamTipi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciNesiliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciNesili") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşlemciModeliLabel" runat="server" Text='<%# Eval("BilgisayarİşlemciModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıMarkasıLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıMarkası") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranKartıModeliLabel" runat="server" Text='<%# Eval("BilgisayarEkranKartıModeli") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarEkranBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarEkranÇözünürlüğüLabel" runat="server" Text='<%# Eval("BilgisayarEkranÇözünürlüğü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarVRAMLabel" runat="server" Text='<%# Eval("BilgisayarVRAM") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskTürüLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskMiktarıLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskMiktarı") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarSabitDiskBoyutuLabel" runat="server" Text='<%# Eval("BilgisayarSabitDiskBoyutu") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarAçıklamaLabel" runat="server" Text='<%# Eval("BilgisayarAçıklama") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarTürüLabel" runat="server" Text='<%# Eval("BilgisayarTürü") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarİşletimSistemiLabel" runat="server" Text='<%# Eval("BilgisayarİşletimSistemi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarFiyatLabel" runat="server" Text='<%# Eval("BilgisayarFiyat") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarStokLabel" runat="server" Text='<%# Eval("BilgisayarStok") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarGarantiSüresiLabel" runat="server" Text='<%# Eval("BilgisayarGarantiSüresi") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BilgisayarResimLabel" runat="server" Text='<%# Eval("BilgisayarResim") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
