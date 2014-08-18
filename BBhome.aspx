<%@ page title="" language="C#" masterpagefile="~/MasterPage3.master" autoeventwireup="true" inherits="BBhome, App_Web_lyh2e5sx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 336px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="section">
    <div id="left">
        <table style="word-spacing: normal; width: 340px; color: #FF0066; text-decoration: blink; height: 74px;">
        <tr>
        <td class="style2">
        If you have logged in First time than Insert blood stock. After that you can view stock by clicking on "View Stock" button. You also can update stock by clicking "Update Stock" into menu bar. 
        </td>
        </tr>
        </table>
        <table style="height: 183px; width: 340px">
            <tr>
                <th colspan="2" align="center">
                    Insert Your Stock Here.....
                </th>
            </tr>
            <tr>
                <td>
                    Blood Group:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="154px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Stock Count:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="154px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="INSERT" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="26px" Text="View Stock" 
                        Width="77px" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div id="right">
        <asp:Label ID="Label1" runat="server" Text="Available Stock Is as Below:" 
            Font-Bold="True" Font-Names="Arial" Font-Overline="False" ForeColor="Red" 
            Height="30px" Width="309px"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="227px" Width="312px">
            <Columns>
                <asp:BoundField DataField="Blood_Group" HeaderText="Blood Group" />
                <asp:BoundField DataField="stock_count" HeaderText="Stock" />
            </Columns>
        </asp:GridView>    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT B.Blood_Group, S.stock_count FROM stock AS S INNER JOIN BloodGroup AS B ON S.bgid = B.bgid INNER JOIN BBRegistration AS BB ON S.bbid = BB.bbid">
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>

