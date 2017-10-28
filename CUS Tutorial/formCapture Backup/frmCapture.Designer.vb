<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmCapture
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.picFinalPicture = New System.Windows.Forms.PictureBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.btnCapture = New System.Windows.Forms.Button()
        Me.btnStop = New System.Windows.Forms.Button()
        Me.btnSave = New System.Windows.Forms.Button()
        Me.picCapture = New System.Windows.Forms.PictureBox()
        Me.lstDevices = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.SFDSave = New System.Windows.Forms.SaveFileDialog()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckedListBox1 = New System.Windows.Forms.CheckedListBox()
        Me.RadioButton1 = New System.Windows.Forms.RadioButton()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.RadioButton2 = New System.Windows.Forms.RadioButton()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        CType(Me.picFinalPicture, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picCapture, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'picFinalPicture
        '
        Me.picFinalPicture.Location = New System.Drawing.Point(169, 12)
        Me.picFinalPicture.Name = "picFinalPicture"
        Me.picFinalPicture.Size = New System.Drawing.Size(136, 157)
        Me.picFinalPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picFinalPicture.TabIndex = 0
        Me.picFinalPicture.TabStop = False
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(11, 175)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(69, 33)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "Show"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'btnCapture
        '
        Me.btnCapture.Location = New System.Drawing.Point(86, 175)
        Me.btnCapture.Name = "btnCapture"
        Me.btnCapture.Size = New System.Drawing.Size(69, 33)
        Me.btnCapture.TabIndex = 2
        Me.btnCapture.Text = "Capture"
        Me.btnCapture.UseVisualStyleBackColor = True
        '
        'btnStop
        '
        Me.btnStop.Location = New System.Drawing.Point(161, 175)
        Me.btnStop.Name = "btnStop"
        Me.btnStop.Size = New System.Drawing.Size(69, 33)
        Me.btnStop.TabIndex = 2
        Me.btnStop.Text = "Stop"
        Me.btnStop.UseVisualStyleBackColor = True
        '
        'btnSave
        '
        Me.btnSave.Location = New System.Drawing.Point(236, 175)
        Me.btnSave.Name = "btnSave"
        Me.btnSave.Size = New System.Drawing.Size(69, 33)
        Me.btnSave.TabIndex = 2
        Me.btnSave.Text = "Save"
        Me.btnSave.UseVisualStyleBackColor = True
        '
        'picCapture
        '
        Me.picCapture.Location = New System.Drawing.Point(12, 12)
        Me.picCapture.Name = "picCapture"
        Me.picCapture.Size = New System.Drawing.Size(143, 157)
        Me.picCapture.TabIndex = 0
        Me.picCapture.TabStop = False
        '
        'lstDevices
        '
        Me.lstDevices.FormattingEnabled = True
        Me.lstDevices.Location = New System.Drawing.Point(12, 224)
        Me.lstDevices.Name = "lstDevices"
        Me.lstDevices.Size = New System.Drawing.Size(218, 21)
        Me.lstDevices.TabIndex = 3
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(304, 224)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(39, 13)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Label1"
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(382, 15)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(81, 17)
        Me.CheckBox1.TabIndex = 5
        Me.CheckBox1.Text = "CheckBox1"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'CheckedListBox1
        '
        Me.CheckedListBox1.FormattingEnabled = True
        Me.CheckedListBox1.Location = New System.Drawing.Point(382, 121)
        Me.CheckedListBox1.Name = "CheckedListBox1"
        Me.CheckedListBox1.Size = New System.Drawing.Size(215, 109)
        Me.CheckedListBox1.TabIndex = 6
        '
        'RadioButton1
        '
        Me.RadioButton1.AutoSize = True
        Me.RadioButton1.Location = New System.Drawing.Point(498, 14)
        Me.RadioButton1.Name = "RadioButton1"
        Me.RadioButton1.Size = New System.Drawing.Size(90, 17)
        Me.RadioButton1.TabIndex = 7
        Me.RadioButton1.TabStop = True
        Me.RadioButton1.Text = "RadioButton1"
        Me.RadioButton1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(382, 75)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(113, 29)
        Me.Button2.TabIndex = 8
        Me.Button2.Text = "Test Control"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'RadioButton2
        '
        Me.RadioButton2.AutoSize = True
        Me.RadioButton2.Location = New System.Drawing.Point(498, 37)
        Me.RadioButton2.Name = "RadioButton2"
        Me.RadioButton2.Size = New System.Drawing.Size(90, 17)
        Me.RadioButton2.TabIndex = 9
        Me.RadioButton2.TabStop = True
        Me.RadioButton2.Text = "RadioButton2"
        Me.RadioButton2.UseVisualStyleBackColor = True
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = True
        Me.CheckBox2.Location = New System.Drawing.Point(382, 39)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(81, 17)
        Me.CheckBox2.TabIndex = 10
        Me.CheckBox2.Text = "CheckBox2"
        Me.CheckBox2.UseVisualStyleBackColor = True
        '
        'ImageList1
        '
        Me.ImageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ImageList1.ImageSize = New System.Drawing.Size(16, 16)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        '
        'frmCapture
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(638, 258)
        Me.Controls.Add(Me.CheckBox2)
        Me.Controls.Add(Me.RadioButton2)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.RadioButton1)
        Me.Controls.Add(Me.CheckedListBox1)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.lstDevices)
        Me.Controls.Add(Me.btnSave)
        Me.Controls.Add(Me.btnStop)
        Me.Controls.Add(Me.btnCapture)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.picCapture)
        Me.Controls.Add(Me.picFinalPicture)
        Me.Name = "frmCapture"
        Me.Text = "frmCapture"
        CType(Me.picFinalPicture, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picCapture, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents picFinalPicture As System.Windows.Forms.PictureBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents btnCapture As System.Windows.Forms.Button
    Friend WithEvents btnStop As System.Windows.Forms.Button
    Friend WithEvents btnSave As System.Windows.Forms.Button
    Friend WithEvents picCapture As System.Windows.Forms.PictureBox
    Friend WithEvents lstDevices As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents SFDSave As System.Windows.Forms.SaveFileDialog
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents CheckedListBox1 As System.Windows.Forms.CheckedListBox
    Friend WithEvents RadioButton1 As System.Windows.Forms.RadioButton
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents RadioButton2 As System.Windows.Forms.RadioButton
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
End Class
