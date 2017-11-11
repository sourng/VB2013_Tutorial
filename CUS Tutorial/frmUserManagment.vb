Imports MySql.Data.MySqlClient

Public Class frmUserManagment
    Dim UrsImagePath As String

    Private Sub btnNew_Click(sender As Object, e As EventArgs)

        Call Clear()

    End Sub
    Private Sub Clear()
        Me.txtID.Text = ""
        Me.txtFName.Text = ""
        Me.cboGender.Text = ""
        Me.txtPassword.Text = ""
        Me.txtEmail.Text = ""
        Me.txtLName.Text = ""
        Me.txtBOD.Text = ""
        Me.txtCommune.Text = ""
        Me.txtDistrict.Text = ""
        Me.txtProvince.Text = ""
        Me.txtPhone.Text = ""
        Me.txtSalary.Text = ""
        Me.UserImage.Image = Nothing
        Me.lblImageFile.Text = "No Image"
        Me.txtID.Text = frmUserList.lv_Users.Items.Count + 1
        Me.txtFName.Focus()

    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs)
        'Dim i As Integer
        'i = lvUserList.Items.Count
        'Me.lvUserList.Items.Add(Me.txtID.Text)
        'Me.lvUserList.Items(i).SubItems.Add(Me.txtUserName.Text)
        'Me.lvUserList.Items(i).SubItems.Add(Me.cboGender.Text)
        'Me.lvUserList.Items(i).SubItems.Add(Me.txtEmail.Text)
        'Me.lvUserList.Items(i).SubItems.Add(Me.txtPassword.Text)




        Dim j As Integer = frmUserList.lv_Users.Items.Count

        frmUserList.lv_Users.Items.Add(Me.txtID.Text)
        frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtFName.Text)
        frmUserList.lv_Users.Items(j).SubItems.Add(Me.cboGender.Text)
        frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtEmail.Text)
        frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtPassword.Text)

    End Sub

    Private Sub txtUserName_KeyDown(sender As Object, e As KeyEventArgs) Handles txtFName.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtLName.Focus()
        End If
    End Sub

    Private Sub txtFName_LostFocus(sender As Object, e As EventArgs) Handles txtFName.LostFocus

    End Sub

    Private Sub txtUserName_TextChanged(sender As Object, e As EventArgs) Handles txtFName.TextChanged
        If txtFName.Text <> "" Then
            Me.txtFName.BackColor = Color.White
        End If
    End Sub

    Private Sub cboGender_KeyDown(sender As Object, e As KeyEventArgs) Handles cboGender.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtEmail.Focus()
        End If
    End Sub



    Private Sub GroupBox1_Enter(sender As Object, e As EventArgs) Handles GroupBox1.Enter

    End Sub

    Private Sub tsb_Save_Click(sender As Object, e As EventArgs) Handles tsb_Save.Click
        Dim j As Integer = frmUserList.lv_Users.Items.Count
        If Me.txtFName.Text = "" Then
            MsgBox("Please Fill in First Name")
            lbl_FName.ForeColor = Color.Red

            Me.txtFName.Focus()
        ElseIf Me.txtLName.Text = "" Then
            MsgBox("Please fill in Last Name")
            lbl_LName.ForeColor = Color.Red
            Me.txtLName.Focus()
        Else

            frmUserList.lv_Users.Items.Add(Me.txtID.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtFName.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtLName.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.cboGender.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtBOD.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtEmail.Text)
            'frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtPassword.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtCommune.Text & "," & txtDistrict.Text & "," & txtProvince.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtPhone.Text)
            frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtSalary.Text)

            'Save Data From form to Database table name tbl_users

            Dim MysqlConn = New MySqlConnection
            MysqlConn.ConnectionString = My.Settings.Conn
            Dim READER As MySqlDataReader
            Try
                MysqlConn.Open()
                Dim Query As String

                Query = "INSERT INTO tbl_users (FName, LName, Gender, Email, Pass,BOD, Commune, District, Province,Phone, Salary, Image) values ('" _
                   & txtFName.Text & "','" & txtLName.Text & "','" & cboGender.Text & "','" & txtEmail.Text & "','" & txtPassword.Text & "','" & txtBOD.Text & "','" _
                   & txtCommune.Text & "','" & txtDistrict.Text & "','" & txtProvince.Text & "','" & txtPhone.Text & "','" & txtSalary.Text & "','" & lblImageFile.Text & "')"

                'Query = "INSERT INTO table_Name (F1,F2,F3,F4,...,Fn) Value(" & txtFName.Text & ",'" & txtFName.Text & "','" & txtFName.Text & "')"


                Dim Command = New MySqlCommand(Query, MysqlConn)
                READER = Command.ExecuteReader
                MessageBox.Show("Data Saved")
                MysqlConn.Close()

            Catch ex As MySqlException
                MessageBox.Show(ex.Message)
            Finally
                MysqlConn.Dispose()
            End Try


            Call Clear()

        End If



    End Sub

    Private Sub tsb_New_Click(sender As Object, e As EventArgs) Handles tsb_New.Click
        Call Clear()
    End Sub


    Private Sub btnSelect_Click(sender As Object, e As EventArgs) Handles btnSelect.Click
        If OFDUserImage.ShowDialog = Windows.Forms.DialogResult.OK Then
            UserImage.Image = Image.FromFile(OFDUserImage.FileName)
            UrsImagePath = OFDUserImage.FileName
            lblImageFile.Text = OFDUserImage.FileName 'System.IO.Path.GetFileName(OFDUserImage.FileName)
            Me.lblUserImageFile.Text = System.IO.Path.GetFileName(OFDUserImage.FileName)
        End If


    End Sub

    Private Sub txtLName_KeyDown(sender As Object, e As KeyEventArgs) Handles txtLName.KeyDown
        If e.KeyCode = Keys.Enter Then
            cboGender.Focus()
        End If
    End Sub

    Private Sub txtLName_TextChanged(sender As Object, e As EventArgs) Handles txtLName.TextChanged

    End Sub

    Private Sub cboGender_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboGender.SelectedIndexChanged

    End Sub

    Private Sub txtEmail_KeyDown(sender As Object, e As KeyEventArgs) Handles txtEmail.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtPassword.Focus()
        End If
    End Sub

    Private Sub txtEmail_TextChanged(sender As Object, e As EventArgs) Handles txtEmail.TextChanged

    End Sub

    Private Sub txtPassword_KeyDown(sender As Object, e As KeyEventArgs) Handles txtPassword.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtBOD.Focus()
        End If
    End Sub

    Private Sub txtPassword_TextChanged(sender As Object, e As EventArgs) Handles txtPassword.TextChanged

    End Sub

    Private Sub txtBOD_KeyDown(sender As Object, e As KeyEventArgs) Handles txtBOD.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtCommune.Focus()
        End If
    End Sub

    Private Sub txtCommune_KeyDown(sender As Object, e As KeyEventArgs) Handles txtCommune.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtDistrict.Focus()
        End If
    End Sub

    Private Sub txtCommune_TextChanged(sender As Object, e As EventArgs) Handles txtCommune.TextChanged

    End Sub

    Private Sub txtDistrict_KeyDown(sender As Object, e As KeyEventArgs) Handles txtDistrict.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtProvince.Focus()
        End If
    End Sub

    Private Sub txtDistrict_TextChanged(sender As Object, e As EventArgs) Handles txtDistrict.TextChanged

    End Sub

    Private Sub txtProvince_KeyDown(sender As Object, e As KeyEventArgs) Handles txtProvince.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtPhone.Focus()
        End If
    End Sub

    Private Sub txtProvince_TextChanged(sender As Object, e As EventArgs) Handles txtProvince.TextChanged

    End Sub

    Private Sub txtPhone_KeyDown(sender As Object, e As KeyEventArgs) Handles txtPhone.KeyDown
        If e.KeyCode = Keys.Enter Then
            txtSalary.Focus()
        End If
    End Sub

    Private Sub txtPhone_TextChanged(sender As Object, e As EventArgs) Handles txtPhone.TextChanged

    End Sub

    Private Sub txtSalary_KeyDown(sender As Object, e As KeyEventArgs) Handles txtSalary.KeyDown
        If e.KeyCode = Keys.Enter Then
            tsb_Save.Select()
        End If
    End Sub

    Private Sub txtSalary_TextChanged(sender As Object, e As EventArgs) Handles txtSalary.TextChanged

    End Sub

    Private Sub frmUserManagment_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Clear()
    End Sub

    Private Sub tsb_Close_Click(sender As Object, e As EventArgs) Handles tsb_Close.Click
        If Me.txtFName.Text <> "" And Me.txtLName.Text <> "" Then
            Dim Check As String = MsgBox("Do you want to close?", vbYesNo)
            If Check = vbYes Then
                Me.Close()
            End If
        End If
    End Sub

 

    Private Sub btnCapture_Click(sender As Object, e As EventArgs) Handles btnCapture.Click
        lblImageFile.Text = ""
        Camera.ShowDialog()
        If lblImageFile.Text <> "" Then
            Me.UserImage.Image = Image.FromFile(lblImageFile.Text)
        End If

    End Sub
End Class