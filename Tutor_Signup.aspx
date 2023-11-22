<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>
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

      
        <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>


        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-4">

            <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="PLease Enter Name"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="PLease Enter Surname Name"></asp:RequiredFieldValidator>

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
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be within 20 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            <br />
             <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="PLease Enter Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ID="RegularExpressionValidator2" runat="server" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Email is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
               
            <br />
             <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
             <asp:ListItem>Select Status</asp:ListItem>
             <asp:ListItem>Single</asp:ListItem>
             <asp:ListItem>Married</asp:ListItem>
             <asp:ListItem>Seperated</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="Select Status" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="PLease Select Status"></asp:RequiredFieldValidator>

            
        </div>

        <div class="col-md-4">
        
              <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="PLease Enter Country Name"></asp:RequiredFieldValidator>
            <br />
             <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="PLease Enter City Name"></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="PLease Enter Address"></asp:RequiredFieldValidator>

            <br />
            <asp:DropDownList ID="QulificationDropDownList" CssClass="form-control" runat="server">
             <asp:ListItem>Select Qulification</asp:ListItem>
             <asp:ListItem>Graducation</asp:ListItem>
             <asp:ListItem>Masters</asp:ListItem>
             <asp:ListItem>MPHIL</asp:ListItem>
             <asp:ListItem>PHD</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="Select Qulification" ControlToValidate="QulificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Qulification is requierd"></asp:RequiredFieldValidator>
        
           
        </div>

        <div class="col-md-4">
             <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="PLease Enter Degree"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
             <asp:ListItem>Select Experience</asp:ListItem>
             <asp:ListItem>2 years</asp:ListItem>
             <asp:ListItem>3 years</asp:ListItem>
             <asp:ListItem>4 years</asp:ListItem>
             <asp:ListItem>5+ years</asp:ListItem>
             <asp:ListItem>10+ years</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Experience is requierd"></asp:RequiredFieldValidator>


            <br />
           <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="PLease Enter Contact No"></asp:RequiredFieldValidator>
         
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
            <asp:Button ID="TutorSignUpButton" OnClick="TutorSignUpButton_Click" CssClass="btn bg-primary col-md-3" runat="server" Text="LOGIN" />


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
     <br />
<br />


</asp:Content>
