<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="basic.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .cellstyle{
            border:solid 1px;
        }
    </style>
</head>
<body style="height: 36px; background-color: antiquewhite;margin:0 0 0px 0; padding:0;">
    <form id="form1" runat="server">
        <div style="background-color:blue;box-shadow:0 2px 4px 0 rgba(0,0,0,.2);height: 36px;width:100vw;padding-left:5px ;padding-top:11px; text-align: left;margin-top: 0px">
            <asp:Label style="color:white;font-size:large;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" ID="Label1" runat="server" Text="My Recipe File Status"></asp:Label>
        </div>
        <br />
        <br />
        <div style="padding-left:3rem">

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Search" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>

        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="text-align: center;">
            <asp:Table style="margin-left:auto;margin-right:auto;" ID="Table1" runat="server" BackColor="White" CellPadding="2" CellSpacing="0" BorderStyle="Solid" BorderWidth="1px" Width="1920px" >
                <asp:TableRow runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server">Item</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Recipe name</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Golden Maps</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Stepping Patterns</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Checksum</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Approve 1</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Approve 2</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Approve 3</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Status</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Timestamp</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
        </div>
    </form>
    
</body>
</html>
