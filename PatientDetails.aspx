<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="PatientDetails, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="section">
  <div class="left">
      <table style="height: 132px; width: 380px">
        <tr>
            <th colspan="2" align="center">
                Search Patient By Blood Group..
            </th>
        </tr>  
        <tr>
            <td align="center">
                Blood Group:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="145px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
            </td>
        </tr>
      </table>
      <br />
      <br />
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          Width="381px" DataKeyNames="pid,bgid" 
          onselectedindexchanging="GridView1_SelectedIndexChanging">
          <Columns>
              <asp:BoundField DataField="pname" HeaderText="Name" />
              <asp:BoundField DataField="age" HeaderText="Age" />
              <asp:BoundField DataField="gender" HeaderText="Gender" />
              <asp:BoundField DataField="Blood_Group" HeaderText="Blood Group" />
              <asp:BoundField DataField="pd" HeaderText="Disease" />
              <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
          </Columns>
      </asp:GridView>


      <br />
      <br />
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
          onselectedindexchanging="GridView2_SelectedIndexChanging" 
          DataKeyNames="stid,EId,bgid">
          <Columns>
              <asp:BoundField DataField="Name" HeaderText="Blood Bank Name" />
              <asp:TemplateField HeaderText="Blood Group">
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# bind("Blood_Group") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Stock">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("stock_count") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("stock_count") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Quantity">
                  <ItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Email-ID">
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# bind("EId") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:CommandField HeaderText="Send Mail" SelectText="Send" 
                  ShowSelectButton="True" />
          </Columns>
      </asp:GridView>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label3" runat="server"></asp:Label>
  </div>

</div>
</asp:Content>

