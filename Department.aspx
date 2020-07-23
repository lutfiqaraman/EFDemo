<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="EFDemo.Department1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                ForeColor="#333333" GridLines="None" 
                ShowFooter = "True"
                DataKeyNames="Id"
                OnRowEditing = "gvDepartment_RowEditing"
                OnRowDeleting="gvDepartment_RowDeleting">

                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                <Columns>
                    <asp:TemplateField HeaderText="Name of Department">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Location of Department">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Location") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Operations">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="~/images/edit.png" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                            <asp:ImageButton runat="server" ImageUrl="~/images/delete.png" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"  />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

                <EditRowStyle BackColor="#999999" />

                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                

            </asp:GridView>
        </div>
    </form>
</body>
</html>
