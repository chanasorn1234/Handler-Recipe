<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="test.aspx.vb" Inherits="basic.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" action="http://127.0.0.1:8000/test/" method="get" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" name="butsub" runat="server" OnClientClick="return Getvalue();" Text="Submit" />
            <input type="date" id="birthday" name="birthday"/>
        </div>
        <script>
            function Getvalue() {
                if (document.getElementById("FileUpload1").files.length == 0) {
                    alert("Please upload file")
                    return false
                }
                else {
                    var name = document.getElementById("FileUpload1").value.split("\\").pop()
                    var re = /(\.pdf)$/i;
                    if (re.exec(name)) {
                        return true
                    }
                    else {
                        alert("PDF Only")
                        return false
                    }

                }
                //else if (document.getElementById("FileUpload1").files)
                
            }
            function cal() {
                return false
            }
        </script>
    </form>
</body>
</html>
