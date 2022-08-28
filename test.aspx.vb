Public Class test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "Getvalue();", True)
        MsgBox("Error")
    End Sub

    <System.Web.Services.WebMethod>
    Protected Sub tbutt()
        MsgBox("Error")
    End Sub

End Class
