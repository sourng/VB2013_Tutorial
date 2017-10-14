Public Class frmUserList

    Private Sub frmUserList_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        'frmUserManagment.Show()
        frmUserManagment.ShowDialog()

    End Sub
End Class