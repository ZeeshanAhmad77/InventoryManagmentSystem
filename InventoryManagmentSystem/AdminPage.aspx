<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="InventoryManagmentSystem.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="  crossorigin="anonymous"></script>
    <link  rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
       <style>
      #divArea
      {
           border: 1px solid black;
           width:50%;
           padding:3px;
           background-color:cornsilk;

       }
   </style>
    <title> Admin Page </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 runat="server" id="heading"> </h1>
             <p runat="server" id="name"> </p>
             <p runat="server" id="password"> </p>
        </div>
        <div>

              <label for="html">Home Page </label>
              <asp:Button   ID="btnHomePage" runat="server"  Text="Home Page Button"   OnClick="btnHomePage_Click" /> 

              <br />
              <br />
              <br />

        </div>

        <div>
             <label for="html"> Accountant Namee</label>
            <input id="txtAccountantName" type="text" runat="server" /> 
            <label for="html">Accountant Password</label>
            <input id="txtAccountantPassword" type="text" runat="server" />
            <asp:Button   ID="submitAccountantData" runat="server"  Text="Add Accountant "  OnClick="submitAccountantData_Click"  />
             <label for="html" id="confirmation" runat="server"> </label>
           
        </div>


               <div id="divArea">
        <table id="AdminTable">
            <thead>
                <tr>
                     <th> ID</th>
                     <th> Name</th>
                     <th> Password</th>
                    <th> Operation</th>
                </tr>
            </thead>
        </table>
          </div>
    </form>
       <script >
           $(document).ready(function () {
               $.ajax({
                   url: 'AccountantServices.asmx/AccountantTable',
                   method: 'post',
                   dataType: 'json',
                   success: function (data) {

                       $("#AdminTable").dataTable({
                           data: data,
                           columns: [

                               { 'data': 'Id' },
                               { 'data': 'Name' },
                               { 'data': 'Password' },

                               {
                                   data: null,
                                   render: function (data, type, row) {
                                       return '<button >Delete</button> <button> ADD</button>';
                                   }
                               }


                           ],
                            select: true,
                       });
                   }

               });



           });
       </script>
</body>
</html>
