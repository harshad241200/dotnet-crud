<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="edit.aspx.cs" Inherits="MyFirstApp.edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <form runat="server">
    <div class="container">            
       <div class="card">
           <div class="card-header">Add</div>
           <div class="card-body">
     <asp:Repeater ID="Repeaters1" runat="server">
         <ItemTemplate>
                            
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First Name</label>
        <asp:TextBox ID="fname" CssClass="form-control" runat="server" Text='<%#Eval("fname") %>'></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last Name</label>
      <asp:TextBox ID="lname" CssClass="form-control" runat="server" Text='<%#Eval("lname") %>'></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
     <asp:TextBox ID="email" CssClass="form-control" runat="server" Text='<%#Eval("email") %>'></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address</label>
     <asp:TextBox ID="address" CssClass="form-control" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
  </div>
         </ItemTemplate>
     </asp:Repeater>
                
              
           </div>
       </div>
            </div>

       
       </form>
</asp:Content>