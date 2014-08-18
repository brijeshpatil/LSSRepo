<%@ page title="" language="C#" masterpagefile="~/MasterPage5.master" autoeventwireup="true" inherits="DonorEditProfile, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <table style="margin-left:30px; margin-top:50px; margin-bottom:50px;" width="324px">
            <tr align="center">
                <th align="center" style="font-family:Times New Roman; background-color:Blue; font-style:normal; font-size:large;">
                    Donor Personal Information...
                </th>
            </tr>
        <tr align="center">
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="214px" Width="324px" 
                    AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                    onmodechanging="DetailsView1_ModeChanging" DataKeyNames="id,sid,cid" 
                    onitemupdating="DetailsView1_ItemUpdating">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("Donor_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Blood Group">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("blood_Group") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="DropDownList1" ErrorMessage="Select One" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="DropDownList2" ErrorMessage="Select One" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="DropDownList3" ErrorMessage="Select One" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Area">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# bind("Area") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="Enter Are" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# bind("Mo_No") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="Enter Valid No" ForeColor="Red" 
                                    ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" >
                        <ControlStyle BackColor="White" BorderStyle="Dotted" Font-Bold="True" 
                            Font-Size="Medium" Font-Underline="True" ForeColor="#FF9933" />
                        </asp:CommandField>
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

