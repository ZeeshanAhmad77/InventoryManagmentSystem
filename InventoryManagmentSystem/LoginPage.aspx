<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="InventoryManagmentSystem.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <div id="view">
            <h1> Login form</h1>

              <!--  Defining TextBox  -->
            <asp:Label Text=" User Name" ID="LableUserName"  runat="server"> User Name</asp:Label>
            <asp:TextBox ID="userName" runat="server"  ></asp:TextBox> <br />
              <!--  Seperation Dive  -->
            <div class="sepation"></div>
            <asp:Label Text=" Password" ID="LablePassword" runat="server" > Password</asp:Label>
            <asp:TextBox ID="password" runat="server"  ></asp:TextBox> <br />
              <!--  Seperation Dive  -->
            <div class="sepation"></div>

            <!--  Defining Buttons  -->
            <asp:Button   ID="login" runat="server"  Text="Login"  OnClientClick="javascript: return Validate() "  OnClick="login_Click"/> <br />
       
            <asp:Label Text=" Incorrect User Credentials" ID="lblErrorMessage" runat="server" > </asp:Label>

        </div>
    </form>

   <script>
       function Validate() {
           var userName = document.getElementById("userName").value;
           var Password = document.getElementById("password").value;
           try {

               if (userName == "") throw " User Name is Empty";
              // if (userName != "zee") throw " Incorrect User Name";
               if (Password == "") throw " Password is Empty";
              // if (Password != "pass") throw " Incorrect Password ";
               return true;
           }
           catch (err) {
               alert(err);
               return false;
           }
       }


   </script>
</body>
</html>
