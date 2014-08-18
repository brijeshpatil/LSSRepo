<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="AddPatientDetails, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
        <br />
        <br />
    <table style="border: medium ridge #808080" align="center">
        <tr>
            <th colspan="3" align='center'>
            Add New Patient
            </th>
        </tr>
        <tr>
            <td>
                Patient Name:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Patient Name" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please enter a valid name" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Patient Age:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td>    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Patient Age" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="Enter age Between 1 to 99" MaximumValue="99" 
                    MinimumValue="1" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                Patient Gender:
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Height="16px" Width="169px">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Select Gender" ControlToValidate="RadioButtonList1" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Blood Group:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="178px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Select Blood Group" ControlToValidate="DropDownList1" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Patient Disease:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Enter Patient Disease" ControlToValidate="TextBox3" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mobile No.:
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Enter Mobile Number" ControlToValidate="TextBox3" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter 10 digit Mobile Number" ForeColor="Red" 
                    ControlToValidate="TextBox5"
                    ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                Message:
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="59px" TextMode="MultiLine" 
                    Width="178px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="3" align='center'>
                <asp:Button ID="Button1" runat="server" Text="Add Patient" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
        CssClass="uday"  Width="260px"/>
</div>
</asp:Content>

