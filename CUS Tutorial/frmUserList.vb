Public Class frmUserList
    Private Sub frmUserList_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.txtCurrentUser.Text = LoginUser
        InitializeList()
    End Sub
    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        'frmUserManagment.Show()
        frmUserManagment.ShowDialog()
    End Sub
    Sub InitializeList()
        Dim j As Integer
        For j = Me.lv_Users.Items.Count To 10
            Me.lv_Users.Items.Add(j + 1)
            Me.lv_Users.Items(j).SubItems.Add("Your Name")
            Me.lv_Users.Items(j).SubItems.Add("M")
            Me.lv_Users.Items(j).SubItems.Add("12-05-1982")
            Me.lv_Users.Items(j).SubItems.Add("youremail@gmail.com")
            'frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtPassword.Text)
            Me.lv_Users.Items(j).SubItems.Add("Address")
            Me.lv_Users.Items(j).SubItems.Add("Phone")
            Me.lv_Users.Items(j).SubItems.Add("Salary")
        Next
    End Sub
    Private Sub lv_Users_DoubleClick(sender As Object, e As EventArgs) Handles lv_Users.DoubleClick
       
        ShowEditData()

    End Sub
    Sub ShowEditData()
        Dim i As Integer
        For i = 0 To Me.lv_Users.Items.Count - 1
            If lv_Users.Items(i).Selected = True Then
                frmUserManagment.txtID.Text = lv_Users.Items(i).Text
                frmUserManagment.txtFName.Text = lv_Users.Items(i).SubItems(1).Text
                frmUserManagment.cboGender.Text = lv_Users.Items(i).SubItems(2).Text
                frmUserManagment.txtBOD.Text = lv_Users.Items(i).SubItems(3).Text
                frmUserManagment.txtEmail.Text = lv_Users.Items(i).SubItems(4).Text
                frmUserManagment.txtPassword.Text = lv_Users.Items(i).SubItems(5).Text

                frmUserManagment.ShowDialog()
            End If
        Next
    End Sub
    Private Sub lv_Users_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lv_Users.SelectedIndexChanged

    End Sub

    Private Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        If lv_Users.Items.Count > 0 Then
            For i As Integer = lv_Users.Items.Count - 1 To 0 Step -1
                If lv_Users.Items(i).Selected = True Then
                    Dim msgb As String = MsgBox("Do you want to remvoe?(Y/N)", vbYesNo)
                    If msgb = vbYes Then
                        lv_Users.Items(i).Remove()
                        Exit For
                    End If
                End If
            Next i
        End If
    End Sub

    Private Sub btnEdit_Click(sender As Object, e As EventArgs) Handles btnEdit.Click
        ShowEditData()
    End Sub
End Class