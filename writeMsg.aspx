<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writeMsg.aspx.cs" Inherits="prjWebCsAdoOmnivox.writeMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:cadetblue;
        }

        .msgTable {
            border-radius: 10px;
            border: 2px solid lightsalmon;
            
        }
        .tableHeader {
            width: 1033px;
            height: 115px;
            background-color: white;
            border-radius: 10px;
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

        p {
            text-transform: uppercase;
            color: lightsalmon;
            text-align: center;
            font-weight: bold;
            letter-spacing: 5px;
        }
        .welcomeMsg {
            height: 26px;
            text-align: right;
            font-family: 'Book Antiqua';
            font-size: larger;
            text-transform: uppercase;
           letter-spacing: -1px;
        }

        .txtmsg{
            width: 1020px;
            height: 300px;
            border-radius: 10px;
            border: 2px solid lightsalmon;
            background-color: cadetblue;
        }

        .txtTitle {
            border-radius: 10px;
            border: 2px solid lightsalmon;
            width: 500px;
            height: 25px;
            background-color: cadetblue;
        }

        .dropDownRecipients {
            width: 350px;
            height: 25px;
            border: 2px solid lightsalmon;
            background-color: cadetblue;
        }

        .mybtn {
            background-color: white;
            color: lightsalmon;
            width: 150px;
            height: 40px;
            border-radius: 10px;
            font-size: 20px;
            font-family: 'Bookman Old Style';
            text-transform: uppercase;

        }

        .container {
            text-align: center;
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
        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" />
        
            <br />
            
        <asp:Table ID="readMsg" runat="server" CssClass="msgTable" Height="500px" Width="1033px" BackColor="White" HorizontalAlign="Center">
            <asp:TableRow runat="server" Height="50px">
                <asp:TableCell runat="server" Width="200px"><p>Recipient:</p></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="dropDownRecipients" runat="server" CssClass="dropDownRecipients">
                    </asp:DropDownList>
                </asp:TableCell>

                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="ReqRecipient" runat="server" ErrorMessage="Recipient is Required" Text="*" ControlToValidate="dropDownRecipients"></asp:RequiredFieldValidator>
                </asp:TableCell>

            </asp:TableRow>


            <asp:TableRow runat="server" Height="50px" >
                <asp:TableCell runat="server" Width="200px"><p>Title:</p> </asp:TableCell>
                <asp:TableCell runat="server">
                     <asp:TextBox runat="server" CssClass="txtTitle" ID="txtTitle"></asp:TextBox>
                </asp:TableCell>

                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="ReqTitle" runat="server" ErrorMessage="The title is required." Text="*" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
                </asp:TableCell>

            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Width="200px" Height="200px" ColSpan="3">
                     <asp:TextBox runat="server" ID="txtmsg" TextMode="MultiLine" CssClass="txtmsg"></asp:TextBox>
                </asp:TableCell>

            </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <div class="container">
            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="mybtn" OnClick="btnSend_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="mybtn" OnClick="btnCancel_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="mybtn" OnClick="btnClear_Click"/>
        </div>
    </form>
</body>
</html>

