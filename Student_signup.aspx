<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_signup.aspx.cs" Inherits="TMS_Project.Student_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #card{
            box-shadow: 10px 10px 10px 10px
            #808080;
            border:solid;
        }
    </style>
    <br />

    <div id="card" class="container">
        <br />
        <div class="row">
            <div class="col-md-12">

          
            <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>


            </div>
        </div>
        <br />

        <div class="row">
            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="PLease Enter Name"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="PLease Enter Father Name"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="PLease Enter Surname"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="PLease Select Gender"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age Name" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="PLease Enter Age"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be within 5 to 50" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="50" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="PLease Enter Country Name"></asp:RequiredFieldValidator>

            </div>

            <div class="col-md-4">
                 <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="PLease Enter City Name"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="PLease Enter Address"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="PLease Enter Class"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                     <asp:ListItem>Select GoingTo</asp:ListItem>
                     <asp:ListItem>School</asp:ListItem>
                     <asp:ListItem>College</asp:ListItem>
                     <asp:ListItem>University</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>

                 </asp:DropDownList>
                 <asp:RequiredFieldValidator InitialValue="Select GoingTo" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Going To is requierd"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="PLease Enter Subject Name"></asp:RequiredFieldValidator>


            </div>

            <div class="col-md-4">

               <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="PLease Enter Contact No"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutorialTypeDropDownList" CssClass="form-control" runat="server">
                     <asp:ListItem>Select Tutorial Type</asp:ListItem>
                     <asp:ListItem>Online</asp:ListItem>
                     <asp:ListItem>Offline</asp:ListItem>
                    
                </asp:DropDownList>
                 <asp:RequiredFieldValidator InitialValue="Select Tutorial Type" ControlToValidate="TutorialTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select Tutor Type"></asp:RequiredFieldValidator>

                <br />
                 <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                      <asp:ListItem>Select Tutor Prefer</asp:ListItem>
                      <asp:ListItem>Graduate</asp:ListItem>
                      <asp:ListItem>Masters</asp:ListItem>
                      <asp:ListItem>MPHIL</asp:ListItem>
                      <asp:ListItem>PHD</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
     
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator InitialValue="Select Tutor Prefer" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Tutor Prefer Is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="UserNameTextBox" CssClass="form-control" placeholder="Enter UserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UserNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="PLease Enter UserName"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="PLease Enter Password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="ConfirmTextBox" CssClass="form-control" placeholder="ReEnter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="ConfirmTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="PLease ReEnter Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Password Must be Identical"></asp:CompareValidator>





            </div>
            <br />


        </div>
        <br />
        <div class="row">
            <div class="col-md-12 mx-auto">
                <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="Sign Up" CssClass="btn bg-primary btn-block" />
               


            </div>
            

        </div>
        <br />
        <div class="row">
            <div class="col-md-6" mx-auto>
       
             <a href="Student_signup.aspx" class="btn btn-success">SignUp As Student</a>
             <a href="Tutor_Signup.aspx" class="btn btn-info">SignUp As Tutor</a>
</div>
        </div>

         <br />

    </div>



   
</asp:Content>
