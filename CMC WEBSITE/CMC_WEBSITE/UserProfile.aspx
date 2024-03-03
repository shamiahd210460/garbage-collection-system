<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CMC_WEBSITE.UserProfile" %>
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
                                    <img width="100" src="images/permission.png" />
                                </center>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>

                               </div>
                               
                            </div>
                            

                           
                            <div class="col-md-6">
                                <label>Contact Number</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Number" TextMode="Number"></asp:TextBox>

                               </div>
                            </div>
                        </div>


                    <div class="row">
                            <div class="col-md-6">
                                <label>E-Mail</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="E-Mail" TextMode="EMail"></asp:TextBox>

                               </div>
                               
                            </div>
                            

                           
                            <div class="col-md-6">
                                <label>Date</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>

                               </div>
                            </div>
                        </div>



                    <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                               <div class="form-group"> 
                                   <asp:DropDownList Class="form-control" ID="DropDownList" runat="server">

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
                                   <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="City" TextMode="Email"></asp:TextBox>

                               </div>
                            </div>

                        <div class="col-md-4">
                                <label>Pincode</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Pin" TextMode="Number"></asp:TextBox>

                               </div>
                            </div>
                        </div>

                    <div class="col">
                                <label>Description About Incident</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Incident" TextMode="MultiLine" Rows="5"></asp:TextBox>

                               </div>
                            </div>

                         <div class="col">
                                <label>Image</label>
                               <div class="form-group"> 

                                   

                               </div>
                             <div class="row">
                     <div class="col">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                            </div>
               
                        </div>

                 <div class="row">
                     
                                     <div class="col">
                                         <center>
                                 <span class="badge badge-pill badge-info">Login Credentials</span>
                                         </center>
                                     </div>
                         
                                     </div>
                     

                <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="true" ></asp:TextBox>

                               </div>
                               
                            </div>
                            

                           
                            <div class="col-md-4">
                                <label>Old Password</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" ReadOnly="true"></asp:TextBox>

                               </div>
                            </div>

                    <div class="col-md-4">
                                <label> New Password</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                               </div>
                            </div> 

                        </div>

                      

                                
                                 <div class="row">
                                     <div class="col-8 mx-auto">
                                         <center>
                                 <div class="form-group"> 
                                   <input class="btn btn-primary btn-block btn-lg" id="Button2" type="button" value="Upload" />

                               </div>
                                   </center>
                                     </div>
                                     </div>
                            
                        </div>

                    </div>
                    
            <div class="col-md-7">

               

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  width="85" src="images/upload.png" />
                                </center>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Uploadings</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your Upload Info"></asp:Label> 

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>   
                        </div>                    
                        </div>

                    </div>

            </div>
</asp:Content>
