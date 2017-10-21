Public Class frmUserList

    Private Sub frmUserList_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.txtCurrentUser.Text = LoginUser

    End Sub

    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        'frmUserManagment.Show()
        frmUserManagment.ShowDialog()

    End Sub

    Private Sub st_Menu_ItemClicked(sender As Object, e As ToolStripItemClickedEventArgs) Handles st_Menu.ItemClicked

    End Sub
End Class