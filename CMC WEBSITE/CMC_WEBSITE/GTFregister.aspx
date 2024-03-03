<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GTFregister.aspx.cs" Inherits="CMC_WEBSITE.GTFregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1rem;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/user%20(1).png" /> 
                                </center>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
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
                                <label>UserName</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>

                               </div>
                               
                            </div>
                            



                           
                            <div class="col-md-6">
                                <label>E-Mail</label>
                               <div class="form-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-Mail" TextMode="Email"></asp:TextBox>

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
                            <div class="col-md-6">
                                <label>User ID</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>

                               </div>
                               
                            </div>
                            

                           
                            <div class="col-md-6">
                                <label>Password</label>
                               <div class="form-group"> 
                                   <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                               </div>
                            </div>
                        </div>

                      

                                
                                 <div class="row">
                                     <div class="col">
                                 <div class="auto-style1"> 
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SignUp" />

                               </div>
                                     </div>
                                     </div>
                            
                        </div>

                    </div>
                    
                </div>
                <a href="Home.aspx"><< Back to Home</a> <br><br>
                

            </div>
        
   
        

</asp:Content>
