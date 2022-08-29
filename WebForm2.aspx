<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="basic.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .header-content{
            background-color:#000080;
            color:white;
            font-weight:bold;
        }
        .footer-cell > *{
            padding:8px;
            border:solid 1px;
            background-color:#c7ddb5;
            color:black;
            font-weight:bold
        }
    </style>
</head>
<body style="height: auto; margin:0;background-color:antiquewhite;margin-bottom:10px">
    <form method="post" action="http://127.0.0.1:8000/test/" id="form1" runat="server">
         <div style="text-align: center;height: auto;background-color:#000080;justify-content: space-between;display: flex;padding:5px">
            <asp:Label style="font-size:large;font-weight:bold;color:white" ID="Label8" runat="server" Text="<i>Striptest Handler Recipe Request Form</i>"></asp:Label>
            <asp:Button ID="Button2" OnClientClick="return Historyreq();" runat="server" Text="My Request History" />

        </div>
        <div style="background-color:#FFB6C1;box-shadow:0 2px 4px 0 rgba(0,0,0,.2); padding:2px">

            <asp:Label style="font-size:large;font-weight:bold;color:black" ID="Label3" runat="server" Text="<i>Requirement</i>"></asp:Label>

        </div>
        <div style="height: auto; text-align: left;padding-left:10px ;padding-right:10px">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label style="font-size:large;font-weight:100;" ID="Label5" runat="server" Text="Deviceand information"></asp:Label>
            <br />
            <br />
            <div style="overflow-x:auto">
            <asp:Table style="text-align: center;" Width="100%" BorderStyle="Solid" BorderWidth="1px" ID="Table1" runat="server" CellPadding="2" CellSpacing="0">
                <asp:TableRow CssClass="header-content" runat="server">
                    <asp:TableCell style="border:solid 1px;border-radius:2px" runat="server">Mask</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Package Code</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Lead count</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Package Name</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Number of Site</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Number of Touchdown</asp:TableCell>
                </asp:TableRow>
          
                <asp:TableRow runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="mask" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="packagecode" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="leadcount" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="packagename" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="numsite" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="numtounchdown" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
          
            </asp:Table>
            </div>
            <br />
            <br />
            <asp:Label style="font-size:large;font-weight:100;" ID="Label6" runat="server" Text="Strip information"></asp:Label>
            <br />
            <br />
            <div style="overflow-x:auto">
            <asp:Table style="text-align: center;" Width="100%" BorderStyle="Solid" BorderWidth="1px" ID="Table2" runat="server" CellPadding="2" CellSpacing="0">
                <asp:TableRow CssClass="header-content" runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server">Assembly loaction</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Package Outline Drawing (PDF)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Leadfraem Outline Drawing  (PDF)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Tooling / Molded Outline drawing  (PDF)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Strip picture front&back (JPG)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Magazine drawing  (PDF)</asp:TableCell>
                </asp:TableRow>
          
                <asp:TableRow runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="asmlocate" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:FileUpload ID="packageoutline" runat="server" /></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:FileUpload ID="leadfraemoutline" runat="server" /></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:FileUpload ID="toolmodel" runat="server" /></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:FileUpload ID="strippic" runat="server" /></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:FileUpload ID="magazine" runat="server" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
            <br />
            <br />
            <asp:Label style="font-size:large;font-weight:100;" ID="Label7" runat="server" Text="Equipment and Hardware information"></asp:Label>
            <br />
            <br />
            <div style="overflow-x:auto">
             <asp:Table style="text-align: center; width:100%;" BorderStyle="Solid" BorderWidth="1px" ID="Table3" runat="server" CellPadding="2" CellSpacing="0">
                <asp:TableRow  CssClass="header-content" runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server">Tester Brand</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Tester Model</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Loadboard spec number (1)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Loadboard spec number (1)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Contact spec number (1)</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Contact spec number (2)</asp:TableCell>
                </asp:TableRow>
          
                <asp:TableRow runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="testerbrand" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="testermodel" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="loadboard1" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="loadboard2" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="contactnum1" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="contactnum2" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
            <br />
            <br />
            <asp:Label style="font-size:large;font-weight:100;" ID="Label9" runat="server" Text="Temp Verification Setpoint"></asp:Label>
            <br />
            <br />
            <div style="overflow-x:auto">
             <asp:Table style="text-align: center;" Width="100%" BorderStyle="Solid" BorderWidth="1px" ID="Table4" runat="server" CellPadding="2" CellSpacing="0">
                <asp:TableRow  CssClass="header-content" runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 1</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 2</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 3</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 4</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 5</asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server">Setpoint 6</asp:TableCell>
                </asp:TableRow>
          
                <asp:TableRow runat="server">
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp1" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp2" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp3" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp4" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp5" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell style="border:solid 1px" runat="server"><asp:TextBox ID="sp6" style="text-align: center; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
            <br />
            <div style="overflow-x:auto">
                <asp:Table ID="Table5" style="text-align: left;width:50%;" runat="server" CellPadding="2" CellSpacing="-1">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Label ID="Label10" runat="server" Text="RTD strip"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:RadioButton ID="RadioButton1" runat="server" GroupName="RTD" Text="Not Require" /></asp:TableCell>
                        <asp:TableCell runat="server"><asp:RadioButton ID="RadioButton2" runat="server" GroupName="RTD" Text="Use Existing RTD Name" /></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="rtdtext" style="text-align: left; color:blue" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell runat="server"><asp:RadioButton ID="RadioButton3" runat="server" GroupName="RTD" Text="Require to build New RTD strip" /></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <br />
            <div style="overflow-x:auto">
                <asp:Table ID="Table7" style="text-align: left;width:45%;" runat="server" CellPadding="0" CellSpacing="-1">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Label ID="Label19" runat="server" Text="Product Bonding Diagram"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:FileUpload ID="productbond" runat="server" /></asp:TableCell>     
                        <asp:TableCell runat="server"><asp:Label ID="Label20" runat="server" Text="Temp Program"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:FileUpload ID="tempprogram" runat="server" /></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <br />
            <div style="overflow-x:auto">
                <asp:Table ID="Table8" style="text-align: left;width:20%;" runat="server" CellPadding="1" CellSpacing="-1">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Label ID="Label21" runat="server" Text="Optional Requested"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="oprequest" style="text-align: left; color:blue" runat="server"></asp:TextBox></asp:TableCell>     
                    </asp:TableRow>
                </asp:Table>
            </div>
            <br />
            <div style="overflow-x:auto">
                <asp:Table ID="Table9" style="text-align: left;width:31%;" runat="server" CellPadding="0" CellSpacing="-1">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Label ID="Label22" runat="server" Text="Attachment (PDF)"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:FileUpload ID="attachment" runat="server" /></asp:TableCell>     
                    </asp:TableRow>
                </asp:Table>
            </div>
            <br />
            <div style="overflow-x:auto">
                <asp:Table ID="Table10" style="text-align: left;width:35%;" runat="server" CellPadding="0" CellSpacing="-1">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Label ID="Label23" runat="server" Text="Comment"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="comment1" style="text-align: left; color:blue" runat="server"></asp:TextBox></asp:TableCell>     
                        <asp:TableCell runat="server"><asp:Label ID="Label24" runat="server" Text="Taget date to use recipe"></asp:Label></asp:TableCell>
                        <asp:TableCell runat="server"><input type="date" id="targetdate" name="targetdate"/></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        

        </div>
         <br />
         <br />
         <div style="text-align: center;box-shadow:0 2px 4px 0 rgba(0,0,0,.2);height:auto;padding:2px;background-color:#FFB6C1;justify-content: space-between;display: flex;">
         <asp:Label style="font-size:large;font-weight:bold;color:black" ID="Label11" runat="server" Text="<i>Marking Template Request Form</i>"></asp:Label>
         </div>
         <br />
         <div style="padding-left:10px ;padding-right:10px">
              <asp:Table style="text-align: left;" Width="100%" BorderStyle="Solid" BorderWidth="1px" ID="Table6" runat="server" CellPadding="2" CellSpacing="0">
                <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">You are</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><asp:Label style="color:black" ID="urname" runat="server" Text="Label"></asp:Label></asp:TableCell>
               </asp:TableRow>
               <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">MASK-PKG CODE</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><asp:TextBox ID="mpc1" style="text-align: left; color:blue;width:100px" runat="server"></asp:TextBox>-<asp:TextBox ID="mpc2" style="text-align: left; color:blue;width:50px" runat="server"></asp:TextBox><asp:Button style="margin-left:3px" ID="Button4" OnClientClick="return Viewmpc();" runat="server" Text="View MP Code" /></asp:TableCell>
               </asp:TableRow>
                <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">Sample Marking Picture</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><asp:FileUpload ID="samplemarkpic" runat="server" /></asp:TableCell>
               </asp:TableRow>
               <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">Additional Attached File</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><asp:FileUpload ID="addattach" runat="server" /></asp:TableCell>
               </asp:TableRow>
                <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">Require Date</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><input type="date" id="requiredate" name="requiredate"/></asp:TableCell>
               </asp:TableRow>
                <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server">Comment</asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"><textarea id="comment2" cols="40" rows="4" runat="server" /></asp:TableCell>
               </asp:TableRow>
                <asp:TableRow CssClass="footer-cell" runat="server">
                    <asp:TableCell  runat="server"></asp:TableCell>
                    <asp:TableCell colspan="5" style="border:solid 1px" runat="server"> <asp:Button ID="Button1" runat="server" OnClientClick="return Submit();" Text="Request" /><asp:Button ID="Button3" runat="server" OnClientClick="return Clear();" Text="Clear" /></asp:TableCell>
               </asp:TableRow>
              </asp:Table>
         </div>
         <%--<asp:Label ID="Label1" runat="server" Text="MP Code : "></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <br />
         Please Upload File&nbsp;&nbsp;
         <br />
         <br />
         <asp:FileUpload ID="FileUpload1" runat="server" />--%>
         <script>
             function Submit() {
                 var val = <%= Session("Name")%>;
                 if (val != null) {
                     window.location.href = "WebForm1.aspx"
                 }
                 return true
             }
             function Clear() {
                 window.location.href = "WebForm2.aspx"
                 return false
             }
             function Viewmpc() {
                 return false
             }
             function Historyreq() {
                 var val = <%= Session("Name")%>;
                 if (val != null) {
                     window.location.href = "WebForm1.aspx"
                 }
                 window.location.href = "WebForm3.aspx"
                 return false
             }
         </script>
    </form>
  </body>
</html>
