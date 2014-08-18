<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="BBRegistration, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <div id="left">
        <table style="height: 448px; width: 483px">
            <tr>
                <th colspan="3">
                    Blood Bank Registration<br />
                </th>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="uday" /> 
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Blood Bank Name:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Name" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter valid name " 
                        ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Head Person Name:
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Head Person Name" ControlToValidate="TextBox2" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select State" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Select City" ControlToValidate="DropDownList2" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Area:
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter the Area Name" ControlToValidate="TextBox3" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Contact No:   
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter Contact Number" ControlToValidate="TextBox4" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter 10 digit Contact No" ControlToValidate="TextBox4" ForeColor="Red"
                        ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    E-mail ID:
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter Email ID" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox5" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>    
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter Password" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="length 8-10,Atleast one digit and one character." 
                        ControlToValidate="TextBox6" ForeColor="Red"
                        ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$">*</asp:RegularExpressionValidator>    
                </td>
            </tr>

            <tr>
                <td>
                    Enter Captcha:
                </td>
                <td>
                    <asp:TextBox ID="txtCaptchaText" runat="server" 
                    CssClass="txtInput"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <img src="GenerateCaptcha.ashx" />    
                </td>
                <td>
                    <asp:Button ID="btnReGenerate" runat="server" 
                    Text="Refresh" OnClick="btnReGenerate_Click" />
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

