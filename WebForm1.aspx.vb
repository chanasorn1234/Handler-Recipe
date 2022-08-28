Imports System
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim x
    Dim y
    Protected Sub Login(sender As Object, e As EventArgs) Handles Button1.Click
        x = TextBox1.Text
        y = TextBox2.Text
        If (x = "1234" And y = "1234") Then
            System.Diagnostics.Debug.WriteLine(x)
            Session("Name") = x
            Response.Redirect("WebForm2.aspx", Session("Name"))


        End If
    End Sub

End Class