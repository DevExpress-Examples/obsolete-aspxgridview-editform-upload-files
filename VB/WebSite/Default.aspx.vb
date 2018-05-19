Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Grid_Editing_EditFormUploadFile_EditFormUploadFile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub UploadBtn_Click(ByVal sender As Object, ByVal e As EventArgs)
        If FileUpload1.HasFile Then
            Label1.Text = FileUpload1.FileName
        End If
    End Sub
    Protected Sub grid_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
        Throw New InvalidOperationException("Data modifications are not allowed in the online demo")
    End Sub
End Class
