Imports MySql.Data.MySqlClient
Imports System.Data.SqlClient


Public Class frmUserList
    Dim conn As MySqlConnection
    Dim cmd As MySqlCommand
    Dim dr As MySqlDataReader

    Private Sub frmUserList_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.txtCurrentUser.Text = LoginUser
        'InitializeList()
        'Connect2DB()
        GetDataToListView()


    End Sub
    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        'frmUserManagment.Show()
        frmUserManagment.ShowDialog()
    End Sub
    'Sub InitializeList()
    '    Dim j As Integer
    '    For j = Me.lv_Users.Items.Count To 10
    '        Me.lv_Users.Items.Add(j + 1)
    '        Me.lv_Users.Items(j).SubItems.Add("Your Name")
    '        Me.lv_Users.Items(j).SubItems.Add("M")
    '        Me.lv_Users.Items(j).SubItems.Add("12-05-1982")
    '        Me.lv_Users.Items(j).SubItems.Add("youremail@gmail.com")
    '        'frmUserList.lv_Users.Items(j).SubItems.Add(Me.txtPassword.Text)
    '        Me.lv_Users.Items(j).SubItems.Add("Address")
    '        Me.lv_Users.Items(j).SubItems.Add("Phone")
    '        Me.lv_Users.Items(j).SubItems.Add("Salary")
    '    Next
    'End Sub
    Private Sub lv_Users_DoubleClick(sender As Object, e As EventArgs) Handles lv_Users.DoubleClick

        ShowEditData()


    End Sub
    Sub ShowEditData()
        Dim i As Integer
        For i = 0 To Me.lv_Users.Items.Count - 1
            If lv_Users.Items(i).Selected = True Then
                'frmUserManagment.txtID.Text = lv_Users.Items(i).Text
                GetDataToShowInForm(lv_Users.Items(i).Text)

                'frmUserManagment.txtFName.Text = lv_Users.Items(i).SubItems(1).Text
                'frmUserManagment.txtLName.Text = lv_Users.Items(i).SubItems(2).Text
                'frmUserManagment.cboGender.Text = lv_Users.Items(i).SubItems(3).Text
                'frmUserManagment.txtBOD.Text = lv_Users.Items(i).SubItems(4).Text
                'frmUserManagment.txtEmail.Text = lv_Users.Items(i).SubItems(5).Text
                ''frmUserManagment.txtPassword.Text = lv_Users.Items(i).SubItems(6).Text

                ''frmUserManagment.txtPassword.Text = lv_Users.Items(i).SubItems(6).Text
                ''frmUserManagment.txtPassword.Text = lv_Users.Items(i).SubItems(6).Text
                'frmUserManagment.txtProvince.Text = lv_Users.Items(i).SubItems(6).Text

                'frmUserManagment.txtPhone.Text = lv_Users.Items(i).SubItems(7).Text
                'frmUserManagment.txtSalary.Text = lv_Users.Items(i).SubItems(8).Text


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
                        'lv_Users.Items(i).Remove()
                        DeleteData(Me.lv_Users.Items(i).Text)
                        Exit For
                    End If
                End If
            Next i
        End If

    End Sub

    Private Sub DeleteData(ByVal ID As String)
        conn = New MySqlConnection
        conn.ConnectionString = My.Settings.Conn
        conn.Open()
        Dim sql As String
        sql = "Delete FROM tbl_users WHERE user_id  =" + ID
        cmd = New MySqlCommand(sql, conn)
        'MsgBox(sql)
        Dim i As Integer = cmd.ExecuteNonQuery()
        If (i > 0) Then
            lblMessage.Text = "Record is Successfully Deleted"
            GetDataToListView()
        Else
            lblMessage.Text = "Record is not Deleted"
        End If
        conn.Close()
    End Sub

    Private Sub btnEdit_Click(sender As Object, e As EventArgs) Handles btnEdit.Click
        ShowEditData()
    End Sub

    Private Sub btnGetData_Click(sender As Object, e As EventArgs) Handles btnGetData.Click

        GetDataToListView()
    End Sub
    Private Sub GetDataToListView()
        lv_Users.Items.Clear()
        Try
            conn = New MySqlConnection
            conn.ConnectionString = My.Settings.Conn
            conn.Open()
            Dim sql As String
            sql = "SELECT user_id,FName,LName,Gender,BOD,Email,Province,Phone,Salary FROM tbl_users"
            cmd = New MySqlCommand(sql, conn)
            dr = cmd.ExecuteReader
            Dim list As ListViewItem
            Do While dr.Read = True
                list = New ListViewItem(dr(0).ToString)
                list.SubItems.Add(dr(1))
                list.SubItems.Add(dr(2))
                list.SubItems.Add(dr(3))
                list.SubItems.Add(dr(4))
                list.SubItems.Add(dr(5))
                list.SubItems.Add(dr(6))
                list.SubItems.Add(dr(7))
                list.SubItems.Add(dr(8))

                lv_Users.Items.Add(list)
            Loop
        Catch ex As MySqlException
            conn.Close()
            MsgBox(ex.Message)
            Exit Try

        Finally
            conn.Close()
            dr.Close()
        End Try
    End Sub

    'កូដ​សម្រាប់​បង្ហាញ​ទិន្ន​ន័យ​ពី​ Table of Database ទៅកាន់​ frmUserManagement តាម​ ID
    Private Sub GetDataToShowInForm(ByVal user_ID As String)
        'lv_Users.Items.Clear()
        Try
            conn = New MySqlConnection
            conn.ConnectionString = My.Settings.Conn
            conn.Open()
            Dim sql As String
            sql = "SELECT * FROM tbl_users WHERE user_id=" + user_ID
            cmd = New MySqlCommand(sql, conn)
            dr = cmd.ExecuteReader
          
            Do While dr.Read = True
                frmUserManagment.txtID.Text = dr(0)
                frmUserManagment.txtFName.Text = dr(1)
                frmUserManagment.txtLName.Text = dr(2)
                frmUserManagment.cboGender.Text = dr(3)

                frmUserManagment.txtEmail.Text = dr(4)
                frmUserManagment.txtPassword.Text = dr(5)
                frmUserManagment.txtBOD.Text = dr(6)

                frmUserManagment.txtCommune.Text = dr(7)
                frmUserManagment.txtDistrict.Text = dr(8)
                frmUserManagment.txtProvince.Text = dr(9)

                frmUserManagment.txtPhone.Text = dr(10)
                frmUserManagment.txtSalary.Text = dr(11)


            Loop
        Catch ex As MySqlException
            conn.Close()
            MsgBox(ex.Message)
            Exit Try

        Finally
            conn.Close()
            dr.Close()
        End Try
    End Sub

  
End Class