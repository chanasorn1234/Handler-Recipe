Imports System.Net
Imports System.Text
Imports System.IO
Imports System.Net.Mail
Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim account As String
        Dim name As String
        name = ""
        account = "Requester : "
        If (Session("Name") Is Nothing) Then
            Response.Redirect("WebForm1.aspx")
        End If
        'name += Session("Name").ToString()
        'Label2.Text = account + name
        'End If
        name += Session("Name").ToString()
        Label2.Text = account + name
        Label4.Text = "Request Date : " + DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
        urname.Text = name
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'If FileUpload1.HasFile And FileUpload1.FileName.ToLower().Contains(".txt") And TextBox1.Text.ToString.Trim() <> "" Then
        '    Dim filename As String
        '    Dim StartTestString As String
        '    Dim mpc As String
        '    filename = FileUpload1.FileName
        '    mpc = TextBox1.Text.ToString.Trim()
        '    FileUpload1.SaveAs(Server.MapPath("~/commit_/") + filename)
        '    StartTestString = "http://127.0.0.1:8000/requestapprove?name=" + filename + "&mpc=" + mpc
        '    Dim myHttpWebRequest As HttpWebRequest = CType(WebRequest.Create(StartTestString), HttpWebRequest)
        '    Dim myHttpWebResponse As HttpWebResponse = CType(myHttpWebRequest.GetResponse(), HttpWebResponse)
        '    Dim receiveStream As Stream = myHttpWebResponse.GetResponseStream()
        '    'MsgBox("upload done")
        '    Dim encode As Encoding = System.Text.Encoding.GetEncoding("utf-8")
        '    Dim readStream As New StreamReader(receiveStream, encode)
        '    Dim read(256) As [Char]
        '    Dim resp As String
        '    resp = ""
        '    'Reads 256 characters at a time.
        '    Dim count As Integer = readStream.Read(read, 0, 256)
        '    While count > 0
        '        Dim str As New [String](read, 0, count)
        '        'Response.Write(str)
        '        resp += str
        '        count = readStream.Read(read, 0, 256)
        '    End While
        '    If resp <> "" Then
        '        MsgBox(resp)
        '    Else
        '        MsgBox("Request failed.Please trying again.")
        '    End If
        '    'Releases the resources of the Stream.
        '    readStream.Close()
        '    ' Releases the resources of the response.
        '    myHttpWebResponse.Close()
        '    TextBox1.Text = ""
        'Else
        '    MsgBox("Please upload file(.txt) And Complete MP Code")
        'End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'If (Session("Name") Is Nothing) Then
        '    Response.Redirect("WebForm1.aspx")
        'Else
        '    Response.Redirect("WebForm3.aspx")
        'End If
    End Sub
End Class