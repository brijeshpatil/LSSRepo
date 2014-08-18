<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Donor, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 69px;
            height: 11px;
        }
        .style2
        {
            width: 127px;
        }
        .style3
        {
            width: 156px;
        }
        .style4
        {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
        <div id="left" style="background-position: right top; background-repeat: no-repeat; background-attachment: fixed; clip: rect(auto, auto, auto, auto);">
        
        
<table align="center" style="height: 272px; width: 333px">
    <tr>
        <th colspan="2">
        <br />
        <br />
        Blood Donor Login
        <br />
        <br />
        </th>
    </tr>
    <tr>
        <td align="center">Login Id:</td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="156px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Please enter valid email-id" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr>
        <td align="center">Password:</td>
        <td><asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="156px" 
                TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        <br />
        <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        <br />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center"> 
            <asp:Button ID="Button1" runat="server" 
                Text="Login" onclick="Button1_Click" /> </td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
           <a href="donor_reg.aspx"><asp:Label ID="Label1" runat="server" Text="New User? Register Here.."></asp:Label></a>
        </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
     <a href="Donorforgotpassword.aspx">Forgot Password!!!</a>
    </tr>
</table>
</div>
<div id="right">
    <a><img src="images/images.jpg" alt="Hello" 
        style="height: 238px; width: 291px"/></a>
</div>
</div>
</asp:Content>

