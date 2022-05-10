<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyFirstApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <form runat="server">
    <div class="container">
          
                  <div class="table-responsive">
                <table class="table">
               <asp:Repeater ID="Repeaters1" runat="server">
                   <HeaderTemplate>
                       <thead>
                           <tr>
                           <th>Fname</th>
                            <th>Lname</th>
                            <th>Email</th>
                            <th>Address</th>
                             <th>Action</th>
                       </tr>
                       </thead>
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tbody>
                           <tr>
                           <td><%#Eval("fname")%></td>
                           <td><%#Eval("lname")%></td>
                           <td><%#Eval("email")%></td>
                           <td><%#Eval("address")%></td>
                           <td><a href="edit.aspx?id=<%#Eval("id")%>">edit</a></td>
                       </tr>
                       </tbody>
                   </ItemTemplate>
               </asp:Repeater>
                    </table>
          </div>
           
       <div class="card">
           <div class="card-header">Add</div>
           <div class="card-body">
                    
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First Name</label>
        <asp:TextBox ID="fname" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last Name</label>
      <asp:TextBox ID="lname" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
     <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address</label>
     <asp:TextBox ID="address" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
                <asp:Button ID="Button1" CssClass="btn btn-primary" onClick="submitData" runat="server" Text="Submit" />

                <asp:Label ID="message" runat="server" Text=""></asp:Label>
              
           </div>
       </div>
            </div>

       
       </form>
</asp:Content>
