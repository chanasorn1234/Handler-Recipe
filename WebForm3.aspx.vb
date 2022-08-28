Imports System.Net
Imports System.Data
Imports Newtonsoft.json
Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("Name") Is Nothing) Then
            Response.Redirect("WebForm1.aspx")
        Else
            Label2.Text = "Owner Request : " + Session("Name").ToString
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim mpc As String
        mpc = TextBox1.Text.ToString.Trim()
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
        Dim json As String = (New WebClient).DownloadString("http://127.0.0.1:8000/getreview?mpc=" + mpc)
        Dim customer As List(Of Customer) = JsonConvert.DeserializeObject(Of List(Of Customer))(json)
        json = JsonConvert.SerializeObject(customer)
        'System.Diagnostics.Debug.WriteLine(customer.ElementAt(2).checksum)
        'Dim lit As List(Of String) = New List(Of String)()
        'lit.Add("")
        For r As Integer = 0 To customer.Count - 1
            Dim dt As New TableRow
            For col As Integer = 1 To 3
                Dim c As New TableCell
                If (col = 1) Then
                    c.Text = customer.ElementAt(r).mpc
                    c.Style("border") = "solid 1px"
                ElseIf (col = 2) Then
                    c.Text = customer.ElementAt(r).filename
                    c.Style("border") = "solid 1px"
                Else
                    c.Text = customer.ElementAt(r).checksum
                    c.Style("border") = "solid 1px"
                End If
                'c.Text = customer.ElementAt(r).checksum 'col.ToString
                dt.Cells.Add(c)
            Next
            Table1.Rows.Add(dt)
        Next
    End Sub
End Class

Public Class Customer
    Public Property mpc As String
    Public Property filename As String
    Public Property checksum As String
End Class