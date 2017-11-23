
Imports System.Web.Services
Imports System.Data

Partial Class AnketOlustur
    Inherits System.Web.UI.Page

    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Session("KullaniciID") Is Nothing Then
            Response.Redirect("Hesabim.aspx")
        End If
    End Sub



End Class
