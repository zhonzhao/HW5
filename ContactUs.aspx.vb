Imports System.Net.Mail
Imports Microsoft.VisualBasic
Partial Class ContactUs
    Inherits System.Web.UI.Page

    Protected Sub SendMessageBtn_Click(sender As Object, e As EventArgs) Handles SendMessageBtn.Click
        Dim emailMessage As New MailMessage()
        Try
            emailMessage.From = New MailAddress("ui.6k183@gmail.com")
            emailMessage.To.Add("michael-colbert@uiowa.edu")
            emailMessage.Subject = "Question"
            emailMessage.Body = "This message is send from " & TBEmail.Text & ". Here is the message text. " & TBMessage.Text
            Dim smtp As New SmtpClient("smtp.gmail.com")
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.Credentials = New System.Net.NetworkCredential("ui.6k183@gmail.com", "6k183U*I")
            smtp.Send(emailMessage)

        Catch ex As Exception

        End Try
        MsgBox("Your message has been sent. Administrator will reply you in next 24 hrs through email.", MsgBoxStyle.OkOnly, "Sent!")
        TBEmail.Text = String.Empty
        TBMessage.Text = String.Empty

    End Sub
End Class
