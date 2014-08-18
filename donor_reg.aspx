
<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="donor_reg, App_Web_lyh2e5sx" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 17px;
        }
        .style2
        {
            width: 171px;
        }
        .style3
        {
            height: 17px;
            width: 171px;
        }
        .style4
        {
            height: 35px;
        }
        .style5
        {
            width: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section" >
    <!--<div id="left">
    </div>-->
    <div id="left" style="background-color: #C0C0C0">
    
        
        <br />
        <br />
    
        
        <table  style="top: auto; height: 567px; width: 435px;" 
            title="Donor Registration" align="center">
            <tr>
            <th colspan="3" align="center"> 
            Donor Registration
                <br />
            </th>
            </tr>
            <tr>
                 <td colspan="3" align="center" class="style4">
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                         CssClass="uday" />
                </td> 
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td align="left" class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter your name" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Gender</td>
                <td align="left" class="style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="Please select your gender." 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Date of Birth</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" runat="server" Width="165px"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBox8">
                    </asp:CalendarExtender>
&nbsp;
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Please enter day of birth." 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                   
                </td>
            </tr>

            <tr>
                <td>Blood Group</td>
                <td align="left" class="style2">
                    <asp:DropDownList ID="DropDownList4" runat="server" style="margin-left: 0px" 
                        Width="165px">
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="Please choose a blood group" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>State</td>
                <td align="left" class="style2">
                    <asp:DropDownList ID="DropDownList5" runat="server" 
                        onselectedindexchanged="DropDownList5_SelectedIndexChanged" 
                        AutoPostBack="True" Width="165px">
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList5" ErrorMessage="Please choose a state " 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style1">City</td>
                <td align="left" class="style3">
                    <asp:DropDownList ID="DropDownList6" runat="server" Width="165px">
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList6" ErrorMessage="Please choose a city." 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Area</td>
                <td align="left" class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Please enter your area" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Mobile Number</td>
                <td align="left" class="style2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Please enter your mobile number" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Please enter a 10 digit phone number" 
                        ForeColor="Red" ValidationExpression="^[789]\d{9}">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>E-mail ID </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="TextBox6" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Please enter your E-mail ID" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Please enter valid email-id" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td align="left" class="style2">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="165px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Please enter your password" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Captcha:
                </td>
                <td>
                    <asp:TextBox ID="txtCaptchaText" runat="server" Width="165px"></asp:TextBox>

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
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register" 
                        onclick="Button1_Click1" />
                </td>                
            </tr>
          </table>

   </div> 
   </div>
</asp:Content>

