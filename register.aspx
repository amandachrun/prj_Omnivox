<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="prjWebCsAdoOmnivox.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 600px;
            border: solid 5px orange;
            background-color: white;
            color: #000000;
            opacity: 0.9;
            border-radius: 25px;
        }
        .auto-style4 {
            width: 480px;
        }
        .auto-style6 {
            width: 480px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
            width: 11px;
        }
        .auto-style8 {
            width: 307px;
            font-weight: bold;
        }
        .auto-style9 {
            width: 307px;
            height: 29px;
            font-weight: bold;
        }

        body{
            background-image: url("images/campus.jpg");
            background-color: black;
            font-family: 'Courier New';
            text-transform: uppercase;
        }
        .auto-style10 {
            width: 307px;
        }
        .auto-style11 {
            width: 307px;
            font-weight: bold;
            height: 50px;
        }
        .auto-style12 {
            width: 480px;
            height: 50px;
        }
        .auto-style13 {
            height: 50px;
            width: 11px;
        }
        .auto-style14 {
            color: #CC0000;
        }
        .auto-style15 {
            width: 11px;
        }

        h1 {
          font-family: "Arial Black", sans-serif;
          font-size: 2.5em;
          letter-spacing: -1px;
          color: black;
          -webkit-text-stroke: 1px orange; 
          text-align: center;
          opacity: 0.8;
         }
        .auto-style16 {
            width: 307px;
            height: 33px;
        }
        .auto-style17 {
            width: 480px;
            height: 33px;
        }
        .auto-style18 {
            width: 11px;
            height: 33px;
        }

        Textbox {
            border:dashed 1px black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Register as Member</h1>
        </div>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style11">
                Student Number:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtStudentNumber" runat="server" Font-Bold="True" Width="139px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <strong>
                <asp:RequiredFieldValidator ID="reqNumber" runat="server" ControlToValidate="txtStudentNumber" ErrorMessage="Please enter your student number." CssClass="auto-style14">*</asp:RequiredFieldValidator>
                </strong>
                <br />
                <strong>
                <asp:RegularExpressionValidator ID="regexNumber" runat="server" ControlToValidate="txtStudentNumber" ErrorMessage="Your student ID must be numerical." ValidationExpression="^\d+$" CssClass="auto-style14">*</asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                Full Name:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtFullName" runat="server" Font-Bold="True" Width="302px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <strong>
                <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Your full name is required." CssClass="auto-style14">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                Year of Birth:<br />
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtYear" runat="server" Font-Bold="True" Width="82px"></asp:TextBox>
            </td>
             <td class="auto-style15">
                 <strong>
                 <asp:RequiredFieldValidator ID="reqDate" runat="server" ControlToValidate="txtYear" ErrorMessage="Year of birth is required." CssClass="auto-style14">*</asp:RequiredFieldValidator>
                 </strong>
                 <br />
                 <strong>
                 <asp:RegularExpressionValidator ID="regexBirth" runat="server" ControlToValidate="txtYear" ErrorMessage="Your year of birth must be 4 digits." CssClass="auto-style14" ValidationExpression="^[0-9]*$">*</asp:RegularExpressionValidator>
                 </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                Password:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPassword1" runat="server" Font-Bold="True" Width="302px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <strong>
                <br />
                <asp:RequiredFieldValidator ID="reqPassword1" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Password is required." CssClass="auto-style14">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                Password again:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPassword2" runat="server" Font-Bold="True" Width="302px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <strong>
                <br />
                <asp:RequiredFieldValidator ID="reqPassword2" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Password must be entered again." CssClass="auto-style14">*</asp:RequiredFieldValidator>
                </strong>
                <br />
                <strong>
                <asp:CompareValidator ID="comparePassword" runat="server" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" ErrorMessage="Password does not match" CssClass="auto-style14">*</asp:CompareValidator>
                </strong>
                <br />
                <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Button ID="btnValidate" runat="server" Font-Bold="True" Text="Register" Width="169px" OnClick="btnValidate_Click" BackColor="#33CC33" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="43px" />
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>

            <td colspan="3">
                <strong>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowModelStateErrors="true" CssClass="auto-style14" HeaderText="Your have the following errors..." />
                </strong>
                <br />
                    <asp:Label ID="lblError" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
            </td>
            
        </tr>
    </table>
    </form>
    </body>
</html>
