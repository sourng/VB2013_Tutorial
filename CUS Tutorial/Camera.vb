Imports AForge
Imports AForge.Video
Imports AForge.Video.DirectShow
Imports System.IO
Imports System.Drawing.Imaging

Public Class Camera
    Dim camera1 As VideoCaptureDevice
    Dim bmp As Bitmap

    Private Sub Camera_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim cameras As VideoCaptureDeviceForm = New VideoCaptureDeviceForm
        If cameras.ShowDialog() = Windows.Forms.DialogResult.OK Then
            camera1 = cameras.VideoDevice
            AddHandler camera1.NewFrame, New NewFrameEventHandler(AddressOf CaptureImage)
            camera1.Start()
        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btncamera.Click
        Dim cameras As VideoCaptureDeviceForm = New VideoCaptureDeviceForm
        If cameras.ShowDialog() = Windows.Forms.DialogResult.OK Then
            camera1 = cameras.VideoDevice
            AddHandler camera1.NewFrame, New NewFrameEventHandler(AddressOf CaptureImage)
            camera1.Start()
        End If
    End Sub
    Private Sub CaptureImage(sender As Object, EventArgs As NewFrameEventArgs)
        bmp = DirectCast(EventArgs.Frame(), Bitmap)
        PictureBox1.Image = DirectCast(EventArgs.Frame.Clone(), Bitmap)
    End Sub

    Private Sub btncapture_Click(sender As Object, e As EventArgs) Handles btncapture.Click
        PictureBox2.Image = PictureBox1.Image

    End Sub

    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        SaveFileDialog1.DefaultExt = ".jpg"
        If SaveFileDialog1.ShowDialog = Windows.Forms.DialogResult.OK Then
            PictureBox2.Image.Save(SaveFileDialog1.FileName, Drawing.Imaging.ImageFormat.Jpeg)
            'MsgBox("File Name: " & SaveFileDialog1.FileName)

            frmUserManagment.lblImageFile.Text = SaveFileDialog1.FileName

            'ចាប់​ឈ្មោះ​ File ផ្ទេរទៅឲ្យ​ Control lblUserImageFile ក្នុង​ frmUserManagement
            frmUserManagment.lblUserImageFile.Text = System.IO.Path.GetFileName(SaveFileDialog1.FileName)
            Me.Close()
        Else
            frmUserManagment.lblUserImageFile.Text = ""
        End If

    End Sub

    Private Sub Button1_Click_1(sender As Object, e As EventArgs) Handles Button1.Click
        Close()
    End Sub

    Private Sub Camera_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
      
        camera1.Stop()

    End Sub
End Class