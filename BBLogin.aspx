<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="BBLogin, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="section">
    <div id="left">
        <table align="center" style="height: 309px; width: 324px">
    <tr>
    <td colspan="2" align="center">
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </td>
    </tr>
    <tr>
        <td  align="center" colspan="2" 
            style="font-size: large; font-style: normal; color: #800000; background-color: #00FF00">
            <br />
            Blood Bank Login
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td align="center">Login ID:</td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="161px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Please enter valid email-id" ForeColor="Red" 
                
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="TextBox1">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr>
        <td align="center">Password:</td>
        <td><asp:TextBox ID="TextBox2" runat="server" Height="36px" Width="161px" 
                TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2" align='center'> 
            <asp:Button ID="Button1" runat="server" 
                Text="Login" onclick="Button1_Click" /> </td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr>
        <td colspan="2" align='center'>
           <a href="BBRegistration.aspx">New User? Register Here..</a>
        </td>
</tr>
<tr>
        <td colspan="2" align='center'>
           <a href="BBForgotpassword.aspx">Forgot Passward!!!</a>
        </td>
        
    </tr>
            
</table>

    </div>    
</div>
</asp:Content>

