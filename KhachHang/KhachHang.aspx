<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="KhachHang.aspx.cs" Inherits="KhachHang_KhachHang" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a>
        <asp:Button ID="Button1" runat="server" Text="Đăng Tin" Height="38px" Width="123px" PostBackUrl="~/KhachHang/DangTin.aspx" />
        </a>
    <br />
    <div id="coin-slider">
        <a href="#"><img src="/images/Honda_Website_Banner_940x250.jpg" height="80%" alt="slide1" class="nav-justified" /></a>
        <a href="#"><img src="/images/maxresdefault.jpg" height="80%" alt="slide2" class="nav-justified" /></a>
        
        <div class="text-center">
        
        
        </div>
        
      </div>
    <br />
    <br />
    <asp:DataList ID="dtlSanPhamDM" runat="server" CaptionAlign="Top" HorizontalAlign="Center" RepeatColumns="4" Width="530px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" CellPadding="3" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/User/"+Eval("HinhAnh") %>' Width="150px" />
        <br />
        <span style="font-size: large">
        <asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' />
        </span>
        <br />
        Giá:
        <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Eval("GiaBan","{0:0,000}") %>' ForeColor="#FF6666" />
        <span style="font-size: x-small">VND</span><br /><span style="font-weight: normal">
            
            <asp:Label ID="NoiBanLabel" runat="server" style="color: #2C2C2C" Text='<%# Eval("NoiBan") %>' ForeColor="#333333" /></a></span>
        <a href="chi-tiet.aspx?Id=<%#Eval("Id")%>" >
        
     <img src="../images/button_detail.jpg" alt="" style=" height: 16px"   />
</a>
        <br />
        <br />
        <br />
    </ItemTemplate>
        <SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C" />
        <FooterTemplate>
        <div class="paging" style="color: #FFFFFF"><%=strPaging %></div>
    </FooterTemplate>
        <SeparatorStyle ForeColor="#FF5050" />
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource_TieuDeTin" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString %>" SelectCommand="SELECT [TieuDe], [GiaBan], [NoiBan], [HinhAnh] FROM [NoiDungTin] WHERE ([Duyet] = @Duyet)">
    <SelectParameters>
        <asp:Parameter DefaultValue="true" Name="Duyet" Type="Boolean" />
    </SelectParameters>
    </asp:SqlDataSource>
    <td >
            </td>
    </asp:Content>


