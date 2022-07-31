<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="InventoryManagmentSystem.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="  crossorigin="anonymous"></script>
    <link  rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <title>Home Page</title>
           <style>
      #divAreaCustomer,#divAreaItems
      {
           border: 1px solid black;
           width:50%;
           padding:3px;
           background-color:cornsilk;

       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Home Page</h1>

        </div>
           <div>
            <h1> Customer Table</h1>

        </div>
                <div>
            <label for="html"> ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
&nbsp;<input id="CustomerId" type="text" runat="server" /> 
            <label for="html"> 
                    <br />
                    Customer Name </label>
                    &nbsp;
            <input id="txtCustomertName" type="text" runat="server" /> 
            <label for="html">
                    <br />
                    Customer Adress</label>&nbsp;
            <input id="txtCustomerAdress" type="text" runat="server" /><br />
                    <br />
&nbsp;<asp:Button   ID="submitCustomerData" runat="server"  Text="Add Customer "  OnClick="submitCustomerData_Click" />
                    <asp:Button   ID="deleteCustomerData" runat="server"  Text="Delete Customer "  OnClick="deleteCustomerData_Click" />
                    <asp:Button   ID="updateCustomerData" runat="server"  Text="Update Customer "  OnClick="updateCustomerData_Click" />

             <label for="html" id="confirmationCustomer" runat="server"> </label>
           
        </div>

      <div id="divAreaCustomer">
        <table id="CustomerTable">
            <thead>
                <tr>
                     <th> ID</th>
                     <th> Customer Name</th>
                     <th> Customer Name</th>
                    
                </tr>
            </thead>
        </table>
      </div>

              
        <div>
            <h1> Product Table</h1>

        </div>
         <div>
             <label for="html"> ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
             <input id="ProductId" type="text" runat="server" /> 
             <label for="html"> 
             <br />
             Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<input id="txtProductName" type="text" runat="server" /> 
            <label for="html">
             <br />
             Product Cost Price&nbsp;&nbsp; </label>
&nbsp;<input id="txtCostPrice" type="text" runat="server" />
             <label for="html">
             <br />
             Product Sale Price</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="txtSalePrice" type="text" runat="server" /><br />
&nbsp;<asp:Button   ID="submitProductData" runat="server"  Text="Add Product "  OnClick="submitProductData_Click" />
             <asp:Button   ID="deleteProductData" runat="server"  Text="Delete Product "  OnClick="deleteProductData_Click" />
             <asp:Button   ID="updateProductData" runat="server"  Text="Update Product "  OnClick="updateProductData_Click" />


             <label for="html" id="confirmationProduct" runat="server"> </label>
           
        </div>
        
      <div id="divAreaItems">
        <table id="ProductTable">
            <thead>
                <tr>
                     <th> ID</th>
                     <th>Product Name</th>
                     <th> Cost Price</th>
                    <th> Sale Price</th>
                </tr>
            </thead>
        </table>
      </div>

    </form>
           <script >
           $(document).ready(function () {
               $.ajax({
                   url: 'AccountantServices.asmx/ProductTable',
                   method: 'post',
                   dataType: 'json',
                   success: function (data) {

                       $("#ProductTable").dataTable({
                           data: data,
                           columns: [

                               { 'data': 'Id' },
                               { 'data': 'Name' },
                               { 'data': 'CostPrice' },
                               { 'data': 'SalePrice' },

                           ],
                            select: true,
                       });
                   }

               });



           });
           </script>
              <script >
                  $(document).ready(function () {
                      $.ajax({
                          url: 'AccountantServices.asmx/CustomerTable',
                          method: 'post',
                          dataType: 'json',
                          success: function (data) {

                              $("#CustomerTable").dataTable({
                                  data: data,
                                  columns: [

                                      { 'data': 'Id' },
                                      { 'data': 'Name' },
                                      { 'data': 'Adress' },
                                     

                                  ],
                                  select: true,
                              });
                          }

                      });



                  });
              </script>
</body>
</html>
