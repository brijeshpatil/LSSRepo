<%@ page title="" language="C#" masterpagefile="~/MasterPage3.master" autoeventwireup="true" inherits="InformDonor, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <div id="left">
        <table style="height: 199px; width: 370px">
            <tr>
                <th colspan="2" align="center">
                    Display  Donor By Blood group.
                </th>
            </tr>
            <tr>
                <td>
                Blood Group:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="140px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Search By Area" 
                        onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Search By City" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" onselectedindexchanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="Donor Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("Donor_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Blood Group">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# bind("Blood_Group") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Area">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# bind("Area") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Send Mail" SelectText="Send" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </div>
        
         
</div>
</asp:Content>

