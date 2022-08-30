<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="basic.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .cellstyle{
            border:solid 1px;
        }
        .header-content > *{
            background-color:#000080;
            color:white;
            font-weight:bold;
        }
    </style>
</head>
<body style="height: auto;width:100vw; background-color: antiquewhite;margin:0; padding:0;">
    <form id="form1" runat="server">
        <div style="display:flex;align-items:center;background-color:blue;box-shadow:0 2px 4px 0 rgba(0,0,0,.2);height: 36px;padding-left:5px; text-align: left;">
            <asp:Label style="color:white;font-size:large;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" ID="Label1" runat="server" Text="My Recipe File Status"></asp:Label>
        </div>
        <br />
        <br />
        <div style="padding-left:3rem;padding-right:30rem;display:flex;justify-content:space-between">
            <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            </div>
            <asp:Label ID="Label2" runat="server"></asp:Label>

        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="text-align: center;overflow-x:auto">
            <asp:Table ID="Table1" runat="server" BackColor="White" CellPadding="2" CellSpacing="0" BorderStyle="Solid" BorderWidth="1px" Width="100%" >
                <asp:TableRow CssClass="header-content" runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server">Tester-Model</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">MASK-PKG CODE</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Package</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Request Date</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Target Date</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Req By</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Requester Comment</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Resp By</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Start Working Date</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Finished Working Date</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Handler Recipe Name</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Equipment Comment</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Prod Mgr Approval</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Eqp Mgr Approval</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Proc Mgr Approval</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Status</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
        </div>
    </form>
    
</body>
</html>
