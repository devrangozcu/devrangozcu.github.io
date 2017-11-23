Imports System.Data
Imports System.Data.OleDb
Imports System.Diagnostics
Imports Microsoft.VisualBasic

Public Class access
    <DebuggerStepThrough>
    Public Shared Function vericek(sorgu As String) As DataTable
        Dim baglanti As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source='/data/Data.mdb'")
        Dim veriler As New DataTable("Kayitlar")
        Dim adapter As New OleDbDataAdapter(sorgu, baglanti)
        adapter.Fill(veriler)
        adapter.Dispose()
        baglanti.Close()
        Return veriler
    End Function

    <DebuggerStepThrough>
    Public Shared Sub verikaydet(sorgu As String)
        Dim baglanti As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source='/data/data.mdb'")
        baglanti.Open()
        Dim da As New OleDbCommand(sorgu, baglanti)
        da.ExecuteNonQuery()
        da.Dispose()
        baglanti.Close()
    End Sub
End Class
