<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUsers.aspx.cs" Inherits="selise.CreateUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style ="padding: 50px;">
            <h2>Create user profile</h2>
             <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" required ="required"></asp:TextBox>* 
               <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
             <br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password" Visible="false"></asp:TextBox> <br />
              <asp:TextBox ID="txtconfirmPass" runat="server" TextMode="Password" placeholder="Confirm Password"  Visible="false"></asp:TextBox>  <br /> <br />

            <asp:TextBox ID="txtfristNamw" runat="server" placeholder="First Name" required ="required"></asp:TextBox>* 
              <asp:RegularExpressionValidator ID="regexFirstName" runat="server"
                    ValidationExpression="^.{2,50}$" ControlToValidate="txtfristNamw" ErrorMessage="The range is min-2, max-50"></asp:RegularExpressionValidator>
              <br />
              <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" required ="required"></asp:TextBox>* 
              <asp:RegularExpressionValidator ID="regexLastName" runat="server"
                    ValidationExpression="^.{2,50}$" ControlToValidate="txtLastName" ErrorMessage="The range is min-2, max-50"></asp:RegularExpressionValidator>

               <br />
               <asp:TextBox ID="txtCity" runat="server" placeholder="City"></asp:TextBox> <br />
              <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone number" required ="required"></asp:TextBox>* 
                   <asp:RegularExpressionValidator ID="regexValidNumber" runat="server"
                    ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$" ControlToValidate="txtPhone" ErrorMessage="Invalid phone number"></asp:RegularExpressionValidator>
              <br />
              <asp:TextBox ID="txtBirthDate" runat="server" placeholder="mm/dd/yyyy" Textmode="Date"  required ="required"></asp:TextBox>* <br />
            <asp:RadioButtonList ID="listGender" runat="server" RepeatDirection="Horizontal" required ="required" >
      <asp:ListItem Value="Male">Male</asp:ListItem>
      <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList> <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />


        </div>
        
        <div>

            
           
                  

              <%-- <asp:RegularExpressionValidator ID="regexValidDate" runat="server"
                    ValidationExpression="\b(?:2010/12/(?:3[01]|2[5-9])|2011/01/01)\b" ControlToValidate="txtBirthDate" ErrorMessage="Min - 100 years back"></asp:RegularExpressionValidator>--%>

         
        </div>

        <div style ="padding: 50px;">
            <asp:HyperLink ID="linkUserPage" runat="server" href="Users.aspx">Users</asp:HyperLink>
            <asp:Label ID="lblShowUsers" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
