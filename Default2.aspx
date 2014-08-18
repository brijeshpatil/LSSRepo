<%@ page title="" language="C#" masterpagefile="~/MasterPage4.master" autoeventwireup="true" inherits="Default2, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">

<div id="left">
    <asp:Label ID="Label17" runat="server"  Font-Bold="True" Text="Approved Blood Bank"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onrowediting="GridView1_RowEditing" DataKeyNames="bbid" 
        onrowupdating="GridView1_RowUpdating" onrowcancelingedit="GridView1_RowCancelingEdit" 
        >
        <Columns>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("SName") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Contact No.">
                <EditItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# bind("C_No") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("C_No") %>'></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</div>
<div id="right">
    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Pendin To be Approve"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        onrowediting="GridView2_RowEditing" DataKeyNames="bbid" 
        onrowupdating="GridView2_RowUpdating" 
        onrowcancelingedit="GridView2_RowCancelingEdit">
        <Columns>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# bind("SName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("SName") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Contact No.">
                <EditItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# bind("C_No") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label16" runat="server" Text='<%# bind("C_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <EditItemTemplate>
                    <asp:CheckBox ID="chk" runat="server" Checked='<%# bind("status") %>' />
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

