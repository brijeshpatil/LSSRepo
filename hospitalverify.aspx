<%@ page title="" language="C#" masterpagefile="~/MasterPage4.master" autoeventwireup="true" inherits="hospitalverify, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="section">
    <div id="left">
        <asp:Label ID="Label17" runat="server" Font-Bold="True" 
            Text="Approved Hospitals"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="hid" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" 
            onrowcancelingedit="GridView1_RowCancelingEdit">
            <Columns>
                <asp:TemplateField HeaderText="Hospital Name">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# bind("hname") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("hname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <EditItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone No. ">
                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# bind("number") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# bind("number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# bind("status") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# bind("status") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        </div>
    <div id="right">
        <asp:Label ID="Label18" runat="server" Font-Bold="True" 
            Text="Pending to be Approved"></asp:Label>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="hid" onrowediting="GridView2_RowEditing" 
            onrowupdating="GridView2_RowUpdating" 
            onrowcancelingedit="GridView2_RowCancelingEdit">
            <Columns>
                <asp:TemplateField HeaderText="Hospital Name">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# bind("hname") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# bind("hname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <EditItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# bind("CName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone No. ">
                    <EditItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# bind("number") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# bind("number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# bind("status") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# bind("status") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        </div>

    

</div>
</asp:Content>

