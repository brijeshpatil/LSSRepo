<%@ page title="" language="C#" masterpagefile="~/MasterPage4.master" autoeventwireup="true" inherits="ViewFB, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="section">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             Width="507px" onselectedindexchanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Feedback">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# bind("Message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Compose reply message">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Send Reply" SelectText="Send" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label4" runat="server" ForeColor="Blue"></asp:Label>

</div>
</asp:Content>

