<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="webprojem.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron jumbotron-fluid mb-5">
        <div class="container text-center py-5">
            <h1 class="text-white display-3">İletişim</h1>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">Haberleş</a></p>
                <i class="fa fa-circle px-3"></i>
                <p class="m-0">İletişim</p>
            </div>
        </div>
    </div>
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 pb-4 pb-lg-0">
                    <div class="bg-primary text-dark text-center p-4">
                        <h4 class="m-0"><i class="fa fa-map-marker-alt text-white mr-2"></i>123 Street, New York, USA</h4>
                    </div>
                    <iframe style="width: 100%; height: 470px;"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
                        frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="col-lg-7">
                    <h6 class="text-primary text-uppercase font-weight-bold">Contact Us</h6>
                    <h1 class="mb-4">Contact For Any Queries</h1>
                    <div class="contact-form bg-secondary"   style="padding: 30px;">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm"  runat="server" novalidate="novalidate">
                            <div class="control-group">
                                <asp:TextBox ID="Txtadınız" runat="server" CssClass="form-control" placeholder="Adınızı girin" ></asp:TextBox>
                                
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Emaili girin" ></asp:TextBox>
                                
                                
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:TextBox ID="Txtkonu" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="konu" ></asp:TextBox>
                               
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:TextBox ID="Txtarea" runat="server" TextMode="MultiLine" Height="80px" CssClass="form-control" placeholder="Mesaj" ></asp:TextBox>
                                 
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-gradient-dark mr-2" style="background-color: #00CC00" />
                               
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
