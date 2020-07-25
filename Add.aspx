<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="EFDemo.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Department Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add New Department</h1>
        </div>
        <div>
            <input type="text" name="txtName" placeholder="Enter name of the department"/>
            <input type="text" name="txtLocation" placeholder="Enter location of the department" />
        </div>
        <div>
            <asp:Button runat="server" ID="btnSaveDepartment" Text="save" OnClick="btnSaveDepartment_Click" />
        </div>
    </form>
</body>
</html>
