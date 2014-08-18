<%@ page title="" language="C#" masterpagefile="~/MasterPage3.master" autoeventwireup="true" inherits="UStock, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="section">
    <div id="left">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            DataKeyNames="stid" Height="238px" Width="484px">
            <Columns>
                <asp:TemplateField HeaderText="Blood Group">
                    <EditItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# bind("Blood_Group") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("Blood_Group") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stock">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("stock_count") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# bind("stock_count") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>    
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
    </div>    
</div>
</asp:Content>

