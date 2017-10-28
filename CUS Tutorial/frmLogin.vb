Imports MySql.Data.MySqlClient
Public Class frmLogin
    Dim drag As Boolean
    Dim mousex As Integer
    Dim mousey As Integer
    Private Sub frmLogin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Connect2DB()

        Me.AllowTransparency = True
        Me.TransparencyKey = BackColor
    End Sub

    Private Sub frmLogin_MouseDown(sender As Object, e As MouseEventArgs) Handles Me.MouseDown
        drag = True
        mousex = Windows.Forms.Cursor.Position.X - Me.Left
        mousey = Windows.Forms.Cursor.Position.Y - Me.Top
    End Sub

    Private Sub frmLogin_MouseMove(sender As Object, e As MouseEventArgs) Handles Me.MouseMove
        If drag Then
            Me.Top = Windows.Forms.Cursor.Position.Y - mousey
            Me.Left = Windows.Forms.Cursor.Position.X - mousex
        End If
    End Sub

    Private Sub frmLogin_MouseUp(sender As Object, e As MouseEventArgs) Handles Me.MouseUp
        drag = False
    End Sub

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Dim opt As String = MsgBox("Do you want to close?", vbYesNo)
        If opt = vbYes Then
            End
        End If
    End Sub

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If Me.txtUserName.Text = "admin" And txtPassword.Text = "admin" Then
            'MsgBox("You are right !")
            frmMain.Show()

        Else
            MsgBox("You are wrong, please try again")
            Me.txtUserName.Focus()
        End If
    End Sub
End Class