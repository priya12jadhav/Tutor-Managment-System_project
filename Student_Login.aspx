<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="TMS_Project.Student_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
      .card{
          position:center;
          background-color: aliceblue;
          box-shadow: 10px 10px 15px 10px
          #808080
          
      }
    </style>
</head>
<body>
    <br />
    <br />
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center><h3>Student Login</h3>
                                    </center>
                                </div>

                                <div class="row">

                                    <div class="col">
                                        <hr />
                                    </div>
                                </div>

                               
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">

                                            <asp:TextBox ID="UsernameTxt" CssClass="form-control" runat="server" placeholder="User Name" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Please enter UserName"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:TextBox ID="PasswordTxt" TextMode="Password" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                                            
                                            <br />
                                            <%--<asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" CssClass="btn btn-primary btn-block btn-lg" runat="server" Text="Login" />--%>
                                            <asp:Button ID="Student_LoginBtn" OnClick="Student_LoginBtn_Click" CssClass="btn btn-primary btn-lg btn-block col-md-12" runat="server" Text="Login" />
                                            <br />
                                            <div class="text-center">
                                            <a href="Tutor_Login.aspx">Not Register yet? Click Here </a>
                                        </div>
                                            </div>

                                    </div>

                                </div>

                            </div>

                        </div>


                    </div>

                </div>

            </div>

        </div>

    <br />
    <br />
    <br />

</asp:Content>
