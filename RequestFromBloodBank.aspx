<%@ page title="" language="C#" masterpagefile="~/MasterPage5.master" autoeventwireup="true" inherits="RequestFromBloodBank, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="section">
    <table style="margin-left:40px; margin-top:60px;">
        <tr>
            <th align="center">
                All Request From Blood Bank..
            </th>
        </tr>
        <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="mid" onrowediting="GridView1_RowEditing" 
                onrowupdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="mbbname" HeaderText="Blood Bank Name" />
                    <asp:BoundField DataField="mbbarea" HeaderText="Area" />
                    <asp:BoundField DataField="mbbcity" HeaderText="City" />
                    <asp:BoundField DataField="mbbstate" HeaderText="State" />
                    <asp:BoundField DataField="mbbcontact" HeaderText="Contact No" />
                    <asp:TemplateField HeaderText="Donated Blood?">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </tr>
    </table>    
</div>
</asp:Content>

