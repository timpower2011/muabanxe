<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Đăng ký tài khoản mới.&nbsp;</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="chưa nhập tên tài khoản" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Chưa nhập Mật Khẩu." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Chưa nhập Xác Nhận Mật Khẩu." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Mật khẩu xác nhận không khớp" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="SĐT" CssClass="col-md-2 control-label">SĐT</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="SĐT" CssClass="form-control" Height="42px" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="SĐT"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Chưa nhập SĐT." />
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ĐịaChỉ" CssClass="col-md-2 control-label">Địa Chỉ</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ĐịaChỉ" TextMode="Phone" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ĐịaChỉ"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Chưa nhập Địa Chỉ." />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox  runat="server" ID="Email" CssClass="form-control" />
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Chưa nhập email." />
                <asp:RegularExpressionValidator runat="server"  ControlToValidate="Email" 
                    CssClass="text-danger" ErrorMessage="Nhập sai email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />                  
           </div>
           
       
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click"  Text="Đăng ký" CssClass="btn btn-default"  />
            </div>
        </div>
    </div>
    
    </div>
</asp:Content>

