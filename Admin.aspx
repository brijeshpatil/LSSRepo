<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <div id="left">
        <table align="center" style="height: 287px; width: 382px">
            <tr>
                <th align="center" colspan="2">
                    System Admin Login
                </th>
            </tr>    
            <tr>
                <td align="center">
                    Admin ID:
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="166px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter valid email-id" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Password:
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="166px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" />
                </td>
            </tr>
             <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>    
    </div>    
</div>
</asp:Content>

