Imports System
Imports System.IO
Imports System.Text
Public Class frmMoveFiles

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click

    End Sub

    Private Sub PictureBox1_DoubleClick(sender As Object, e As EventArgs) Handles PictureBox1.DoubleClick
        If OpenFileDialog1.ShowDialog = Windows.Forms.DialogResult.OK Then
            PictureBox1.Image = Image.FromFile(OpenFileDialog1.FileName)
            Me.lblPath.Text = System.IO.Path.GetFullPath(OpenFileDialog1.FileName)


            lblImageFile.Text = System.IO.Path.GetFileName(OpenFileDialog1.FileName)
            MoveFiles(lblPath.Text, "c:\testImages\" & lblImageFile.Text)
        End If
    End Sub

    Sub MoveFiles(ByVal SourceFile As String, ByVal Dest As String)
        Dim path As String = SourceFile '"c:\temp\MyTest.txt"
        Dim path2 As String = Dest '"c:\temp2\MyTest.txt"

        Try
            If File.Exists(path) = False Then
                ' This statement ensures that the file is created,
                ' but the handle is not kept.
                Dim fs As FileStream = File.Create(path)
                fs.Close()
            End If

            ' Ensure that the target does not exist.
            If File.Exists(path2) Then
                File.Delete(path2)
            End If

            ' Move the file.
            File.Copy(path, path2)

            MsgBox("File Moved !")

            ' See if the original file exists now.
            If File.Exists(path) Then
                MsgBox("The original file still exists, which is unexpected")
            Else
                MsgBox("The original file no longer exists, which is expected.")
            End If
        Catch e As Exception
            MsgBox("The process failed !")
        End Try
    End Sub
End Class