<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Admin2.aspx.cs" Inherits="User_Admin2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            height: 10px;
            width:100%;
        }
        .text-danger {
            font:"Tamaho";
            color:coral;
        }
        .auto-style13 {
            color: #FF6666;
        }
        .auto-style14 {
            color: #FF0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Xin chào,
    <asp:Label ID="lbtaikhoan" runat="server" ForeColor="#0033CC"></asp:Label>
    . Bạn vừa đăng nhập thành công vào hệ thống.<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Thoát" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource_user" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="MatKhau" HeaderText="MatKhau" SortExpression="MatKhau" />
            <asp:BoundField DataField="Sdt" HeaderText="Sdt" SortExpression="Sdt" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="TinhThanh" HeaderText="TinhThanh" SortExpression="TinhThanh" />
            <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_user" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString6 %>" DeleteCommand="DELETE FROM Account" SelectCommand="SELECT Id, HoTen, MatKhau, Sdt, DiaChi, Email, TinhThanh, RoleID FROM Account" UpdateCommand="UPDATE Account SET HoTen =@HoTen, MatKhau =@MatKhau, Sdt =@Sdt, DiaChi =@DiaChi, Email =@Email, TinhThanh =@TinhThanh, RoleID =@RoleID Where Id=@Id">
        <UpdateParameters>
            <asp:Parameter Name="HoTen" />
            <asp:Parameter Name="MatKhau" />
            <asp:Parameter Name="Sdt" />
            <asp:Parameter Name="DiaChi" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="TinhThanh" />
            <asp:Parameter Name="RoleID" />
            <asp:Parameter Name="Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <strong><span class="auto-style13">
    <br />
    </span><span class="auto-style14">RoleID (Để set quyền cho Account): [0]. Vô hiệu tài khoản; [1]. Admin; [2]. User</span></strong><br />
    <br />
    <br />
</asp:Content>

