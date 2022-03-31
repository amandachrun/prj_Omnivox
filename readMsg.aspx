<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readMsg.aspx.cs" Inherits="prjWebCsAdoOmnivox.readMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:cadetblue;
        }

        .btnReturn {
            float: right;
            position: relative;
            margin-right: 440px;
            width: 200px;
            height: 50px;
            border-radius: 8px;
            color: cadetblue;
            font-weight: bold;
            font-family: 'Bookman Old Style';
            text-transform: uppercase;
            background-color: lightsalmon;
            border: 2px solid white;
        }

        .msgTable {
            border-radius: 10px;
            opacity: 0.8;
            border: 2px solid lightsalmon;
            
        }
        .tableHeader {
            width: 78%;
            height: 115px;
            background-color: white;
            border-radius: 5px;
            margin-left: auto;
            margin-right: auto;
            border: 2px solid lightsalmon;
        
        }

        
        .auto-style8 {
            width: 153px;
            height: 26px;
        }

        .auto-style5 {
            width: 68px;
            height: 69px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        
        .auto-style7 {
            width: 325px;
            height: 26px;
            text-align: center;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
            color: cadetblue;
            letter-spacing: 2px;
            font-size: large;
            text-shadow: 2px 2px lightsalmon;
        }


        .welcomeMsg {
            height: 26px;
            text-align: right;
            font-family: 'Book Antiqua';
            font-size: larger;
            text-transform: uppercase;
           letter-spacing: -1px;
        }
        </style>
</head>
<body>
    <form id="msgForm" runat="server">
        
            <br />
        <table class="tableHeader">
            <tr>
                <td class="auto-style8"><img src="images/omnivox2.png" class="auto-style5" /></td>
                <td class="auto-style7"><h1>Lasalle <br /> College </h1></td>
                <td class="welcomeMsg"> 
                    &nbsp;</td>
            </tr>
        </table>
        
        <div>
        
            <br />
            
        <asp:Table ID="displayMsg" runat="server" CssClass="msgTable" Height="25px" Width="1033px" BackColor="White" HorizontalAlign="Center">
            <asp:TableRow runat="server" >
                <asp:TableCell runat="server" Width="533px">Title:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="lblTitle" runat="server" Text="[LBLTITLE]"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" >
                <asp:TableCell runat="server" Width="300px">To: </asp:TableCell>
                <asp:TableCell runat="server">
                     <asp:Label ID="lblFrom" runat="server" Text="[LBLFROM]"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Width="200px" Height="200px">
                     <asp:Label ID="lblmsg" runat="server" Text="[LBLMSG]"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btnReturn" OnClick="btnReturn_Click" />
    </form>
</body>
</html>
