Imports MySql.Data.MySqlClient

Public Class frmLesson02
    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If Me.txtUserName.Text = "admin" And txtPassword.Text = "admin" Then
            'MsgBox("You are right !")
            LoginUser = Me.txtUserName.Text
            frmMain.Show()

        Else
            MsgBox("You are wrong, please try again")
            Me.txtUserName.Focus()
        End If

    End Sub
    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Dim opt As String = MsgBox("Do you want to close?", vbYesNo)
        If opt = vbYes Then
            End
        End If

    End Sub

    Private Sub frmLesson02_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.btnLogin.Enabled = False     'ControlName.Enabled=True/False
        Connect2DB()
    End Sub

    Private Sub txtUserName_LostFocus(sender As Object, e As EventArgs) Handles txtUserName.LostFocus
        If Me.txtUserName.Text = "" Then
            MsgBox("Please fill in Username !", vbCritical)
            Me.txtUserName.Focus()
        End If

    End Sub
    Private Sub txtPassword_TextChanged(sender As Object, e As EventArgs) Handles txtPassword.TextChanged
        If Me.txtPassword.Text = "" Then
            Me.btnLogin.Enabled = False
        Else
            Me.btnLogin.Enabled = True
        End If

    End Sub
    Private Sub txtUserName_TextChanged(sender As Object, e As EventArgs) Handles txtUserName.TextChanged

    End Sub

    Private Sub btnConnect_Click(sender As Object, e As EventArgs) Handles btnConnect.Click
        
        Connect2DB()

    End Sub

End Class