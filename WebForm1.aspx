<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="basic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log-In</title>
<%--<link href="~/Stylelogin.css" rel="stylesheet" />--%>
    <style type="text/css">
        .auto-style1 {
            color: white;
            font-weight:bolder;
            font-size:large;
        }
        .auto-style2 {
            color: white;
            font-weight:bolder;
            font-size:large;
        }
        #form1 {
            height: 533px;
            width: 911px;
            margin-left: 0px;
            margin-right: 4px;
            margin-top: 23px;
            margin-bottom: 0px;
            text-align: center;
        }
        .loginbutton{
            border-radius:6px;
            transition: all 0.25s ease;
            cursor: pointer;
            border:1px solid ;
            border-color:blueviolet;
            background-color:blueviolet;
            color:white;
            font-weight:bolder;
        }
        .loginbutton:hover {
            transform: translate(0px,-5px);
    
        }
        .usernameinput{
            border:2px solid #aaa;
            border-radius:4px;
            margin:7px 0;
            outline:none;
            padding:8px;
            box-sizing:border-box;
            transition:.3s;
            
            
            
        }
        .usernameinput:focus{
            border-color:dodgerblue;
            box-shadow:0 0 8px 0 dodgerblue;
        }
        .formcontrol{
            margin:auto;
            margin-top:15vh;
            position:relative;
            background:inherit;
            height:450px;
            width:400px;
            top:calc(50%-175px);
            left:calc(50%-125px);
            border-radius:10px;
            overflow:hidden;
        }
        .formcontrol:after{
            content:'';
            width:450px;
            height:450px;
            background:inherit;
            position:absolute;
            left:-40px;
            right:0;
            top:25px;
            bottom:0;
            filter:blur(8px);
            box-shadow:inset 0 0 0 200px rgba(255,255,255,0.05)
        }
        .userbox{
            position:relative;
            z-index:1;
        }
    </style>
</head>
<body style="height: 100%;width:100%;letter-spacing:0.02em; text-align: center; margin: 0px;padding:0;background-repeat:no-repeat;background-attachment:fixed;background-size:cover;background-position:top;background-image:url('imagemicrochip/2017-09-13.jpg') ">
           <p style="box-shadow:0 2px 4px 0 rgba(0,0,0,.2);height: 30px;padding-left:5px ;padding-top:11px; text-align: left; background-color:#293556;margin-top: 0px">
                <asp:Label style=" color:white;font-size:large;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" ID="Label1" runat="server" Text="Request Approve Recipe Flie System"></asp:Label>
             </p>
            <form runat="server" class="formcontrol">       
          
             <div class="userbox">
             <p style="height: 224px; text-align: center">
                <asp:Image ID="Image1" runat="server" Height="200px"  ImageUrl="https://dwglogo.com/wp-content/uploads/2016/05/mchp.png" Width="320px" />
             </p>
            <p style="height: 33px; text-align: center">
                <span class="auto-style1"><em>Badge NO. :</em></span>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="usernameinput" Height="40px" Width="196px"></asp:TextBox>
            </p>
            <p style="height: 33px; text-align: center">
                <span class="auto-style2"><em>Password :</em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox TextMode="Password" ID="TextBox2" runat="server" CssClass="usernameinput" Height="40px" Width="196px"></asp:TextBox>
            </p>
            <br />
            <p style="height: 33px; text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="loginbutton" ID="Button1" runat="server" Height="40px" Text="LOGIN" Width="50%" />
            </p>
            </div>
        </form>
              


         
</body>
</html>
