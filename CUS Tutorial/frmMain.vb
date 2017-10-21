Public Class frmMain

    Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.MaximizeBox = True
        Me.txtCurrentUser.Text = LoginUser

    End Sub

    Private Sub ToolStripButton1_Click(sender As Object, e As EventArgs) Handles tsb_New.Click

    End Sub

    Private Sub ToolStripStatusLabel3_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel3.Click

    End Sub

    Private Sub tsb_Users_Click(sender As Object, e As EventArgs) Handles tsb_Users.Click
        'frmUserManagment.Show()
        frmUserList.Show()

    End Sub
End Class