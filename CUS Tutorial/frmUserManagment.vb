Public Class frmUserManagment

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles txtID.TextChanged

    End Sub
    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click

    End Sub

    Private Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click

        Call Clear()

    End Sub
    Private Sub Clear()
        Me.txtID.Text = ""
        Me.txtUserName.Text = ""
        Me.cboGender.Text = ""
        Me.txtPassword.Text = ""
        Me.txtEmail.Text = ""
        Me.txtID.Text = Me.lvUserList.Items.Count + 1
        Me.txtUserName.Focus()

    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim i As Integer
        i = lvUserList.Items.Count
        Me.lvUserList.Items.Add(Me.txtID.Text)
        Me.lvUserList.Items(i).SubItems.Add(Me.txtUserName.Text)
        Me.lvUserList.Items(i).SubItems.Add(Me.cboGender.Text)
        Me.lvUserList.Items(i).SubItems.Add(Me.txtEmail.Text)
        Me.lvUserList.Items(i).SubItems.Add(Me.txtPassword.Text)
    End Sub

    Private Sub txtUserName_KeyDown(sender As Object, e As KeyEventArgs) Handles txtUserName.KeyDown
        If e.KeyCode = Keys.Enter Then
            cboGender.Focus()
        End If
    End Sub

    Private Sub txtUserName_TextChanged(sender As Object, e As EventArgs) Handles txtUserName.TextChanged

    End Sub

    Private Sub cboGender_KeyDown(sender As Object, e As KeyEventArgs) Handles cboGender.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtEmail.Focus()
        End If
    End Sub

    Private Sub txtPassword_KeyDown(sender As Object, e As KeyEventArgs) Handles txtPassword.KeyDown
        If e.KeyCode = Keys.Enter Then
            btnSave.Focus()
        End If
    End Sub
End Class