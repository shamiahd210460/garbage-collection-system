<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GTFhome.aspx.cs" Inherits="CMC_WEBSITE.GTFhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <p>
        <br />
        <span style="font-size: large">Report a Situation</span></p>
    <table class="w-100">
        <tr>
            <td style="height: 53px; width: 335px">Topic / Place</td>
            <td style="height: 53px">
                <asp:TextBox ID="TextBox1" runat="server" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 53px; width: 335px">Description</td>
            <td style="height: 53px">
                <asp:TextBox ID="TextBox2" runat="server" Height="84px" Width="434px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 52px; width: 335px">Choose Location</td>
            <td style="height: 52px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="Choose Location" OnClientClick="getLocation(); return false;" />
            </td>
        </tr>
        <tr>
            <td style="height: 59px; width: 335px">Add Image</td>
            <td style="height: 59px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 58px; width: 335px">&nbsp;</td>
            <td style="height: 58px">
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" Width="148px" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
     <script>
         function getLocation() {
             if (navigator.geolocation) {
                 navigator.geolocation.getCurrentPosition(showPosition);
             } else {
                 alert("Geolocation is not supported by this browser.");
             }
         }

         function showPosition(position) {
             var latitude = position.coords.latitude;
             var longitude = position.coords.longitude;

             // Set the location text box value to the coordinates
             var locationTextBox = document.getElementById('<%= TextBox3.ClientID %>');
             locationTextBox.value = latitude + ", " + longitude;
         }



     </script>
</asp:Content>
