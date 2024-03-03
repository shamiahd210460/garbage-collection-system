<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GreenCaptain.aspx.cs" Inherits="CMC_WEBSITE.GreenCaptain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Cleaning Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100" src="images/binG.jpg" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Member Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Incident</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Throwing Garbage Near Main Road" Value="English" />
                              <asp:ListItem Text="Did Not Collect Garbage" Value="Hindi" />
                              <asp:ListItem Text="Throwing Garbage Near Public Place" Value="Marathi" />
                              <asp:ListItem Text="Did not Use Dustbins" Value="French" />
                             
                           </asp:DropDownList>
                        </div>
                        <label>Area</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                       <asp:ListItem Text="Modara" Value="Modara"></asp:ListItem>
                                       <asp:ListItem Text="Mattakkuliya" Value="Mattakkuliya"></asp:ListItem>
                                       <asp:ListItem Text="Mahawatthe" Value="Mahawatthe"></asp:ListItem>
                                       <asp:ListItem Text="Aluthmawatha" Value="Aluthmawatha"></asp:ListItem>
                                       <asp:ListItem Text="Lunupokuna" Value="Lunupokuna"></asp:ListItem>
                                       <asp:ListItem Text="Bloemendhal" Value="Bloemendhal"></asp:ListItem>
                                       <asp:ListItem Text="Kotahena East" Value="Kotahena East"></asp:ListItem>
                                       <asp:ListItem Text="Pettah" Value="Pettah"></asp:ListItem>
                                       <asp:ListItem Text="Slave Island" Value="Slave Island"></asp:ListItem>
                                       <asp:ListItem Text="Hunupitiya" Value="Hunupitiya"></asp:ListItem>
                                       <asp:ListItem Text="Panchikawatte" Value="Panchikawatte"></asp:ListItem>
                                       <asp:ListItem Text="Maradana" Value="Maradana"></asp:ListItem>
                                       <asp:ListItem Text="Maligakanda" Value="Maligakanda"></asp:ListItem>
                                       <asp:ListItem Text="Kollupitiya" Value="Kollupitiya"></asp:ListItem>
                                       <asp:ListItem Text="Borella North" Value="Borella North"></asp:ListItem>
                                       <asp:ListItem Text="Dematagoda" Value="Dematagoda"></asp:ListItem>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                       
                        <label> Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                    
                     </div>
                  
                  
                  <div class="row">
                     <div class="col-12">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Incident List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</asp:Content>
