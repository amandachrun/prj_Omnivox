<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="prjWebCsAdoOmnivox.welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .logo {
            width: 135px;
            height: 26px;
        }
        .titleLasalle {
            width: 238px;
            height: 26px;
            text-align:left;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
            color: black;
            letter-spacing: 3px;
            font-size: large;
            text-shadow: 2px 2px #ff0000;
        }
        .welcomeMsg {
            height: 26px;
            text-align: right;
            font-family: 'Book Antiqua';
            font-size: larger;
            text-transform: uppercase;
           letter-spacing: -1px;
        }
        .tableHeader {
            width: 78%;
            height: 115px;
            background-color: white;
            border-radius: 5px;
            margin-left: auto;
            margin-right: auto;
        
        }

        body {
            background-color:lightskyblue;
            font-family: "Bookman Old Style";
        }

        .auto-style5 {
            width: 68px;
            height: 69px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        
        .auto-style7 {
            width: 205px;
            height: 26px;
            text-align: center;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
            color: lightskyblue;
            letter-spacing: 2px;
            font-size: large;
            text-shadow: 2px 2px lightsalmon;
        }


        .auto-style8 {
            width: 153px;
            height: 26px;
        }

        .tableMsg {
            text-align: center;
            border-radius: 5px;
            margin: auto;
            
        }
        .wrapper {
            text-align: center;
        }

        .newMsg {
            border-radius: 10px;
            color: lightskyblue;
            background-color: white;
            border: 2px solid orange;
            width: 100px;
            height: 50px;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
            font-weight: bold;
        }

        .tableHeadings {
            text-transform: uppercase;
            font-size: small;
            font-weight: bold;
            background-color: lightskyblue;
            color: white;
        }

        .auto-style9 {
            border-radius: 10px;
            color: lightskyblue;
            background-color: white;
            border: 2px solid orange;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
            font-weight: bold;
        }

    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <table class="tableHeader">
            <tr>
                <td class="auto-style8"><img src="images/omnivox2.png" class="auto-style5" /></td>
                <td class="auto-style7"><h1>Lasalle <br /> College </h1></td>
                <td class="welcomeMsg"> 
                    <asp:Label ID="lblName" runat="server" Text="[lblName]" Font-Bold="false" ForeColor="lightskyblue"></asp:Label>
                    <asp:Label ID="lblMessages" runat="server" Text="[lblMs]" Font-Bold="false" ForeColor="lightskyblue"></asp:Label>
                 </td>
            </tr>
        </table>
        <br />
        <asp:Table ID="tabMessages" CssClass="tableMsg" runat="server" Height="25px" Width="1048px">
            <asp:TableRow runat="server" CssClass="tableHeadings" >
                <asp:TableCell runat="server" Width="533px">Title:</asp:TableCell>
                <asp:TableCell runat="server" Width="300px">From:</asp:TableCell>
                <asp:TableCell runat="server" Width="100px">Actions:</asp:TableCell>
                
            </asp:TableRow>



        </asp:Table>
        <br />
       <div class="wrapper">
            <asp:Button ID="Button1" CssClass="auto-style9" runat="server" Text="Compose a New Message" OnClick="Button1_Click" Width="308px" />
       </div>
        <br />
    </form>
</body>
</html>
