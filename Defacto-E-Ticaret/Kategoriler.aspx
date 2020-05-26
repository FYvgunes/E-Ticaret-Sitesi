<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Defacto_E_Ticaret.ADMİN.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        
        
        .auto-style4 {
            width: 256px;
        }
        .auto-style5 {
           text-align:left;
        }
        
        .auto-style7 {
            width:40px;
            height:40px;

            text-align:right;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background:#2e9252; height:40px; margin-top:20px;text-align:center; align-items:center;">
        <h4 style=" margin:10px; color:#fff; font-size:23px; text-align:center; text-transform:uppercase;padding:17px;  line-height:2px;">Kategoriler</h4>
    </div>
    <div>
      
        <asp:DataList ID="DataList1" runat="server" Width="488px">
            
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td  class="image_icon">
                          <a href='ADMİN/KategoriDetay.aspx?Kategoriid=<%# Eval("Kategoriid") %>'> <asp:Image  class="image_icon" ID="Image1" runat="server" ImageUrl="~/img/icon/update.png" /></a> 
                        </td>
                        <td class="image_icon">
                          <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid")%> &islem=sil"> <asp:Image CssClass="image_icon" ID="Image2" runat="server" ImageUrl="~/img/icon/Delete.png" ImageAlign="Right" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      
    </div>

    <div>
        <div style="background:#c4c4c4"></div>
         <div style="background:#2e9252; height:40px; margin-top:20px;text-align:center; align-items:center;">
        <h4 style=" margin:10px; color:#fff; font-size:23px; text-align:center; text-transform:uppercase;padding:17px;  line-height:2px;">Kategori Ekle</h4>
    </div>
        <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>KATEGORİ AD</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ ADET :</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><asp:Label Font-Size="Large" ForeColor="Green"  ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label></td>
            <td>
                <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" />
                
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
