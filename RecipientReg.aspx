<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="RecipientReg, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section" 
        style="background-position: right center; background-image: url('images/images (3).jpg'); background-repeat: no-repeat;">
        <br />
        <br />
<table style="width: 564px; height: 330px">
    <tr>
        <th colspan="2">
            New Hospital Registration
            <br />
            <br />
        </th>
    </tr>
    <tr>
        <td colspan="2" align="center">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="uday" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>Hospital Name:</td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter Hospital Name" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Hospital Address:</td>
        <td><asp:TextBox ID="TextBox2" runat="server" Height="64px" TextMode="MultiLine" 
                Width="170px"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            State:
        </td>
        <td>
            &nbsp;<asp:DropDownList 
                ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Select One From The List" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>City:</td>
        <td>&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="DropDownList2" ErrorMessage="Select One From The List" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Contact Person Name:</td>
        <td>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter Contact Person Name" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Contact Number:</td>
        <td>
            &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobile Number" 
                ForeColor="Red" ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Contact number" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail Id:</td>
        <td>&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator
                ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Valid Email Id" ControlToValidate="TextBox5" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red">*</asp:RegularExpressionValidator>&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" 
                ErrorMessage="Enter email id" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td>&nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox6" 
                ErrorMessage="Password must be of 7 to 10 character and allow only a-z,A-Z,0-9,@,&amp;,#,'.'" 
                ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{7,10}$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Website Name:</td>
        <td>&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter Website Name" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2"></td>
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
        <td  colspan="2" align='center'>
            <asp:Button ID="Button1" runat="server" 
                Text="Register" onclick="Button1_Click" />
            <br />
        </td>
    </tr>
    </table>
</div>
</asp:Content>

