
Imports System.Data
Imports System.Web.Services

Partial Class Anket
    Inherits System.Web.UI.Page

    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Session("KullaniciID") Is Nothing Then
            Response.Redirect("Giris.aspx")
        End If
    End Sub


End Class
