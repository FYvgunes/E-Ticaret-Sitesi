<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="Defacto_E_Ticaret.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 252px;
            padding: 5px;
            font-size: 16px;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-left: 10px;
        }

        .auto-style4 {
            width: 150px;
            padding: 5px;
            text-align: center;
            font-size: 16px;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-left: 10px;
        }

        .auto-style5 {
            width: 450px;
            padding: 5px;
            font-size: 16px;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-left: 10px;
        }


        .auto-style6 {
            width: 270px;
            padding: 5px;
            text-align: center;
            font-size: 16px;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-left: 10px;
        }

        .auto-style7 {
            margin-left: 560px;
            text-align: center;
            background: #e2965f;
            margin: 5px;
            width: 230px;
        }
           
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Aciklama3">
            <div class="cizgi3" style="width:150%; margin-left:100px;">
                <div>

                    
                    <h3 style="text-align: center; color: red; font-size: 20px; padding: 5px; margin: 6px;" id="sonuc" runat="server"></h3>
                    <h1 id="sonuc5" runat="server" style="text-align: center; font-size: 33px; color: #e2965f; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-transform: uppercase"><i class="fas fa-shopping-bag" style="padding-right:10px"></i>Sepet</h1>
                    <h4 style="text-align: center; font-size: 17px; padding: 5px; margin: 6px;" id="H1" runat="server"></h4>

                    <h3 style="font-size: 15px; text-align: center; padding: 5px; margin: 6px; color: green;" id="sonuc3" runat="server"></h3>
                    
                    <h4 style="text-align: center; font-size: 17px; padding: 5px; margin: 6px;" id="sonuc2" runat="server"></h4>
                    <table style="border: 1px medium #333; text-align: center; word-spacing: normal; vertical-align: middle;">
                        <tr>
                            <th class="auto-style4">Ürün Resim</th>


                            <th class="auto-style5">Ürün İsim</th>


                            <th class="auto-style3">Ürün Fiyat</th>
                    


                        </tr>
                       
                       <%-- <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                 <tr>
                                    <th>
                                        <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' Width="150px" ID="Image1" runat="server" />
                                    </th>

                                    <th style="font-size: 18px; font-weight: bold; text-align: center; margin: 0 auto;"><%# Eval("UrunAd")%></th>
                                    <th style="font-size: 18px; font-weight: bold; text-align: center;"><%# Eval("UrunFiyat","{0:c}")%></th>
                                </tr>
                            </ItemTemplate>
                        </asp:DataList>--%>
                        <asp:DataList ID="DataList1" runat="server" >
                            <ItemTemplate>
                                <tr style="background:#b0c1b0; padding:10px; border-radius:10px; border-left:5px solid #e46363;">
                                    <th>
                                        <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' Width="150px" ID="Image1" runat="server" />
                                    </th>

                                    <th class="auto-style5" style="font-size: 18px; vertical-align:middle; text-align: center; padding:10px; margin: 0 auto;"><%# Eval("UrunAd")%></th>
                                    <th class="auto-style3"style="font-size: 18px; vertical-align:middle; font-weight: bold; text-align: center; initial-letter:normal; padding:10px;  "><%# Eval("UrunFiyat","{0:c}")%></th>
                                    
                                        <th class="image_icon" style="font-size: 18px; vertical-align:middle;">
                             <a href="Sepet.aspx?Urunid=<%# Eval("Urunid") %>&islem=sil"">
                                 <asp:Image CssClass="image_icon" ID="Image2" runat="server" ImageUrl="~/img/icon/Delete.png" ImageAlign="Right" /></a>
                                            </th>
                        
                                </tr>
                                  
                                 
                            </ItemTemplate>
                          
                        </asp:DataList>
                        
                     </table>   
                    <div id="div" runat="server" style="margin-left:530px; padding:10px; margin-top:5px; background:#eb9454;border-radius:5px; font-weight:bold; color:#fff;" >

                    <asp:Label class="auto-style4" style="font-size: 18px; vertical-align:middle; text-align: center; padding:10px; margin: 0 auto;" ID="Label2" runat="server" Text="Sepet Toplam : "></asp:Label>
                    <asp:Label class="auto-style4" style="font-size: 18px; vertical-align:middle; text-align: center; padding:10px; margin: 0 auto;" ID="Label1" runat="server" Text="Label"> </asp:Label>
                </div>
                    <div>
                        <a href="Odemeİslemi.aspx?odeme=<%# Eval("Odemeid") %>" class="formbtn" style="width:200px; margin-left:530px; text-align:center; font-size:18px;">Satın Al</a>
                    </div>
                        <%--    
                    </div> <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_GiyimConnectionString %>" SelectCommand="SELECT uyeid, Tbl_Sepetler.urunid,Fotolar, urunAD, UrunFiyat FROM Tbl_Sepetler,Tbl_urunler WHERE uyeid=<%# Eval() %> and Tbl_Sepetler.urunid=Tbl_urunler.urunid"></asp:SqlDataSource>   
                 --%>
                </div>

            </div>

        </div>


    </div>

</asp:Content>
