<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Contact, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 177px;
        }
        .style2
        {
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <div id="left">
        <table align="center" style="height: 197px; width: 614px">
            <tr>
                <th>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Akki.jpg" 
                        Height="114px" Width="94px" />
                </th>
                <th>
                   
                    <asp:Image ID="Image2" runat="server" Height="114px" 
                        ImageUrl="~/images/Uday.JPG" Width="94px" />
                   
                </th>
                <th>
                   
                    <asp:Image ID="Image3" runat="server" Height="114px" 
                        ImageUrl="~/images/Vishal.jpg" Width="94px" />
                   
                </th>
            </tr>
            <tr>
                <td class="style1" align="center">
                    Akshay Panchal 
                
           
            
                
                    (Developer)
                
            
            
                
                    10bit001@nirmauni.ac.in
                </td>
            
                
                <td class="style1" align="center">
                    Uday Patel
                
                    (Developer)
                
                    10bit013@nirmauni.ac.in
                </td>
            
                
                <td class="style1" align="center">
                    Vishal Patel
                
                    (Developer)
                
                    10bit014@nirmauni.ac.in
                </td>
            </tr>

            </table>    
 
    </div>
    <div id="right">
        <h3>You can ask any query or give feedback by filling following feedback form.</h3>

        <br />
        <table style="height: 295px; width:501px; margin-left:10px;" >
            <tr>
                <td class="style2" align="center">
                    Name:
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please enter your Name" ForeColor="Red" 
                        ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter valid name" 
                        ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    Email ID:
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Please enter email-id" ForeColor="Red" 
                        ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please enter valid email-id" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBox2">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    Message:
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" TextMode="MultiLine" 
                        Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Please enter a feedback/query,if any." ForeColor="Red" 
                        ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                </td>
            </tr> 
            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                </td>
            </tr>

        </table>
    </div>
</div>
</asp:Content>

