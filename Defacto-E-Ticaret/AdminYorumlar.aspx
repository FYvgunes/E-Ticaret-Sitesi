﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="Defacto_E_Ticaret.AdminYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }


        .auto-style4 {
            width: 256px;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style7 {
            width: 40px;
            height: 40px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background: #2e9252; height: 40px; margin-top: 20px; text-align: center; align-items: center;">
        <h4 style="margin: 10px; color: #fff; font-size: 23px; text-align: center; text-transform: uppercase; padding: 17px; line-height: 2px;">Onaylı Yorumlar</h4>
    </div>
    <div>

        <asp:DataList ID="DataList1" runat="server" Width="488px">

            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="image_icon">
                            <a href="AdminYorumDetay.aspx?Yorumid=<%# Eval("Yorumİd") %>">
                                <asp:Image class="image_icon" ID="Image1" runat="server" ImageUrl="~/img/icon/update.png" /></a>
                        </td>
                        <td class="image_icon">
                             <a href="AdminYorumlar.aspx?Yorumid=<%# Eval("Yorumİd") %>&İslem=sil"><asp:Image CssClass="image_icon" ID="Image2" runat="server" ImageUrl="~/img/icon/Delete.png" ImageAlign="Right" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
        <div style="background: #c4c4c4"></div>
        <div style="background: #2e9252; height: 40px; margin-top: 20px; text-align: center; align-items: center;">
            <h4 style="margin: 10px; color: #fff; font-size: 23px; text-align: center; text-transform: uppercase; padding: 17px; line-height: 2px;">Onaysız yorumlar</h4>
        </div>
        <div>

            <asp:DataList ID="DataList2" runat="server" Width="488px">

                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="image_icon">
                                <a href="AdminYorumlar.aspx?Yorumid=<%# Eval("Yorumİd") %>">
                                    <asp:Image class="image_icon" ID="Image1" runat="server" ImageUrl="~/img/icon/update.png" /></a>
                            </td>
                            <td class="image_icon">
                                <a href="AdminYorumlar.aspx?Yorumid=<%# Eval("Yorumİd") %>&İslem=sil"><asp:Image CssClass="image_icon" ID="Image2" runat="server" ImageUrl="~/img/icon/Delete.png" ImageAlign="Right" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </div>
</asp:Content>