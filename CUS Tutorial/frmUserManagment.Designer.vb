<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmUserManagment
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmUserManagment))
        Me.lbl_FName = New System.Windows.Forms.Label()
        Me.txtFName = New System.Windows.Forms.TextBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.txtProvince = New System.Windows.Forms.TextBox()
        Me.txtDistrict = New System.Windows.Forms.TextBox()
        Me.txtSalary = New System.Windows.Forms.TextBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.txtPhone = New System.Windows.Forms.TextBox()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.txtBOD = New System.Windows.Forms.DateTimePicker()
        Me.txtLName = New System.Windows.Forms.TextBox()
        Me.lbl_LName = New System.Windows.Forms.Label()
        Me.txtCommune = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cboGender = New System.Windows.Forms.ComboBox()
        Me.txtPassword = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.txtEmail = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtID = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.btnCapture = New System.Windows.Forms.Button()
        Me.btnSelect = New System.Windows.Forms.Button()
        Me.UserImage = New System.Windows.Forms.PictureBox()
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.tsb_New = New System.Windows.Forms.ToolStripButton()
        Me.tsb_Save = New System.Windows.Forms.ToolStripButton()
        Me.tsb_Delete = New System.Windows.Forms.ToolStripButton()
        Me.tsb_Close = New System.Windows.Forms.ToolStripButton()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.GroupBox1.SuspendLayout()
        CType(Me.UserImage, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.ToolStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'lbl_FName
        '
        Me.lbl_FName.AutoSize = True
        Me.lbl_FName.Location = New System.Drawing.Point(23, 86)
        Me.lbl_FName.Name = "lbl_FName"
        Me.lbl_FName.Size = New System.Drawing.Size(77, 27)
        Me.lbl_FName.TabIndex = 0
        Me.lbl_FName.Text = "នាមត្រកូល"
        '
        'txtFName
        '
        Me.txtFName.Location = New System.Drawing.Point(123, 83)
        Me.txtFName.Name = "txtFName"
        Me.txtFName.Size = New System.Drawing.Size(168, 36)
        Me.txtFName.TabIndex = 2
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label14)
        Me.GroupBox1.Controls.Add(Me.Label13)
        Me.GroupBox1.Controls.Add(Me.Label12)
        Me.GroupBox1.Controls.Add(Me.txtProvince)
        Me.GroupBox1.Controls.Add(Me.txtDistrict)
        Me.GroupBox1.Controls.Add(Me.txtSalary)
        Me.GroupBox1.Controls.Add(Me.Label11)
        Me.GroupBox1.Controls.Add(Me.txtPhone)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.txtBOD)
        Me.GroupBox1.Controls.Add(Me.txtLName)
        Me.GroupBox1.Controls.Add(Me.lbl_LName)
        Me.GroupBox1.Controls.Add(Me.txtCommune)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.cboGender)
        Me.GroupBox1.Controls.Add(Me.txtPassword)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.txtEmail)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.txtID)
        Me.GroupBox1.Controls.Add(Me.txtFName)
        Me.GroupBox1.Controls.Add(Me.lbl_FName)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Font = New System.Drawing.Font("Khmer OS Battambang", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(12, 59)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(619, 351)
        Me.GroupBox1.TabIndex = 2
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "បំពេញ​ព័ត៌មាន​របស់​អ្នក​ប្រើ​ប្រាស់​"
        '
        'txtProvince
        '
        Me.txtProvince.BackColor = System.Drawing.Color.AliceBlue
        Me.txtProvince.Location = New System.Drawing.Point(441, 257)
        Me.txtProvince.Name = "txtProvince"
        Me.txtProvince.Size = New System.Drawing.Size(168, 36)
        Me.txtProvince.TabIndex = 10
        '
        'txtDistrict
        '
        Me.txtDistrict.BackColor = System.Drawing.Color.AliceBlue
        Me.txtDistrict.Location = New System.Drawing.Point(273, 257)
        Me.txtDistrict.Name = "txtDistrict"
        Me.txtDistrict.Size = New System.Drawing.Size(162, 36)
        Me.txtDistrict.TabIndex = 9
        '
        'txtSalary
        '
        Me.txtSalary.Location = New System.Drawing.Point(383, 302)
        Me.txtSalary.Name = "txtSalary"
        Me.txtSalary.Size = New System.Drawing.Size(226, 36)
        Me.txtSalary.TabIndex = 12
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(325, 305)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(52, 27)
        Me.Label11.TabIndex = 19
        Me.Label11.Text = "បៀវត្ស"
        '
        'txtPhone
        '
        Me.txtPhone.Location = New System.Drawing.Point(123, 299)
        Me.txtPhone.Name = "txtPhone"
        Me.txtPhone.Size = New System.Drawing.Size(168, 36)
        Me.txtPhone.TabIndex = 11
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(23, 302)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(52, 27)
        Me.Label10.TabIndex = 17
        Me.Label10.Text = "ទូរស័ព្ទ"
        '
        'txtBOD
        '
        Me.txtBOD.CustomFormat = "dd-MMM-yyyy"
        Me.txtBOD.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.txtBOD.Location = New System.Drawing.Point(383, 176)
        Me.txtBOD.Name = "txtBOD"
        Me.txtBOD.Size = New System.Drawing.Size(226, 36)
        Me.txtBOD.TabIndex = 7
        Me.txtBOD.Value = New Date(2017, 10, 14, 19, 49, 46, 0)
        '
        'txtLName
        '
        Me.txtLName.Location = New System.Drawing.Point(383, 80)
        Me.txtLName.Name = "txtLName"
        Me.txtLName.Size = New System.Drawing.Size(226, 36)
        Me.txtLName.TabIndex = 3
        '
        'lbl_LName
        '
        Me.lbl_LName.AutoSize = True
        Me.lbl_LName.Location = New System.Drawing.Point(320, 83)
        Me.lbl_LName.Name = "lbl_LName"
        Me.lbl_LName.Size = New System.Drawing.Size(57, 27)
        Me.lbl_LName.TabIndex = 13
        Me.lbl_LName.Text = "នាមខ្លួន"
        '
        'txtCommune
        '
        Me.txtCommune.BackColor = System.Drawing.Color.AliceBlue
        Me.txtCommune.Location = New System.Drawing.Point(123, 257)
        Me.txtCommune.Name = "txtCommune"
        Me.txtCommune.Size = New System.Drawing.Size(144, 36)
        Me.txtCommune.TabIndex = 8
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(23, 262)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(82, 27)
        Me.Label7.TabIndex = 12
        Me.Label7.Text = "អាស័យដ្ឋាន"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(299, 176)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(73, 27)
        Me.Label8.TabIndex = 10
        Me.Label8.Text = "ឆ្នាំកំណើត"
        '
        'cboGender
        '
        Me.cboGender.FormattingEnabled = True
        Me.cboGender.Items.AddRange(New Object() {"Male", "Female"})
        Me.cboGender.Location = New System.Drawing.Point(123, 126)
        Me.cboGender.Name = "cboGender"
        Me.cboGender.Size = New System.Drawing.Size(168, 35)
        Me.cboGender.TabIndex = 4
        '
        'txtPassword
        '
        Me.txtPassword.Location = New System.Drawing.Point(123, 167)
        Me.txtPassword.Name = "txtPassword"
        Me.txtPassword.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.txtPassword.Size = New System.Drawing.Size(168, 36)
        Me.txtPassword.TabIndex = 6
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(23, 129)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(37, 27)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "ភេទ"
        '
        'txtEmail
        '
        Me.txtEmail.Location = New System.Drawing.Point(383, 129)
        Me.txtEmail.Name = "txtEmail"
        Me.txtEmail.Size = New System.Drawing.Size(226, 36)
        Me.txtEmail.TabIndex = 5
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(23, 172)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(82, 27)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "លេខសំង៉ាត់"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(320, 132)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(52, 27)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "អ៊ីម៉ែល"
        '
        'txtID
        '
        Me.txtID.Location = New System.Drawing.Point(123, 33)
        Me.txtID.Name = "txtID"
        Me.txtID.ReadOnly = True
        Me.txtID.Size = New System.Drawing.Size(168, 36)
        Me.txtID.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(23, 36)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(67, 27)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "លេខរៀង"
        '
        'Label6
        '
        Me.Label6.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label6.BackColor = System.Drawing.Color.Navy
        Me.Label6.Font = New System.Drawing.Font("Khmer OS Muol Pali", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.Color.White
        Me.Label6.Location = New System.Drawing.Point(-4, 0)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(804, 48)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "ព័ត៌មាន​របស់​អ្នក​ប្រើ​ប្រាស់​"
        Me.Label6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'btnCapture
        '
        Me.btnCapture.Image = Global.CUS_Tutorial.My.Resources.Resources.if_BT_camera_905563__1_
        Me.btnCapture.Location = New System.Drawing.Point(727, 242)
        Me.btnCapture.Name = "btnCapture"
        Me.btnCapture.Size = New System.Drawing.Size(45, 35)
        Me.btnCapture.TabIndex = 9
        Me.btnCapture.UseVisualStyleBackColor = True
        '
        'btnSelect
        '
        Me.btnSelect.Image = Global.CUS_Tutorial.My.Resources.Resources.if_flickr_logo_of_two_dots_1269915
        Me.btnSelect.Location = New System.Drawing.Point(670, 242)
        Me.btnSelect.Name = "btnSelect"
        Me.btnSelect.Size = New System.Drawing.Size(51, 35)
        Me.btnSelect.TabIndex = 8
        Me.btnSelect.UseVisualStyleBackColor = True
        '
        'UserImage
        '
        Me.UserImage.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.UserImage.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.UserImage.Image = Global.CUS_Tutorial.My.Resources.Resources.if_36_image_584878
        Me.UserImage.Location = New System.Drawing.Point(654, 77)
        Me.UserImage.Name = "UserImage"
        Me.UserImage.Size = New System.Drawing.Size(132, 159)
        Me.UserImage.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage
        Me.UserImage.TabIndex = 7
        Me.UserImage.TabStop = False
        '
        'ToolStrip1
        '
        Me.ToolStrip1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.ToolStrip1.Font = New System.Drawing.Font("Khmer OS Battambang", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ToolStrip1.ImageScalingSize = New System.Drawing.Size(24, 24)
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsb_New, Me.tsb_Save, Me.tsb_Delete, Me.tsb_Close})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 424)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(798, 36)
        Me.ToolStrip1.TabIndex = 11
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'tsb_New
        '
        Me.tsb_New.Image = CType(resources.GetObject("tsb_New.Image"), System.Drawing.Image)
        Me.tsb_New.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_New.Name = "tsb_New"
        Me.tsb_New.Size = New System.Drawing.Size(52, 33)
        Me.tsb_New.Text = "ថ្មី"
        '
        'tsb_Save
        '
        Me.tsb_Save.Image = CType(resources.GetObject("tsb_Save.Image"), System.Drawing.Image)
        Me.tsb_Save.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_Save.Name = "tsb_Save"
        Me.tsb_Save.Size = New System.Drawing.Size(90, 33)
        Me.tsb_Save.Text = "រក្សាទុក"
        '
        'tsb_Delete
        '
        Me.tsb_Delete.Image = CType(resources.GetObject("tsb_Delete.Image"), System.Drawing.Image)
        Me.tsb_Delete.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_Delete.Name = "tsb_Delete"
        Me.tsb_Delete.Size = New System.Drawing.Size(69, 33)
        Me.tsb_Delete.Text = "លុប"
        '
        'tsb_Close
        '
        Me.tsb_Close.Image = CType(resources.GetObject("tsb_Close.Image"), System.Drawing.Image)
        Me.tsb_Close.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_Close.Name = "tsb_Close"
        Me.tsb_Close.Size = New System.Drawing.Size(63, 33)
        Me.tsb_Close.Text = "បិត"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(126, 227)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(71, 27)
        Me.Label12.TabIndex = 22
        Me.Label12.Text = "ឃុំ/សង្កាត់"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(276, 227)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(77, 27)
        Me.Label13.TabIndex = 23
        Me.Label13.Text = "ស្រុក/ខ័ណ្ឌ"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(445, 227)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(66, 27)
        Me.Label14.TabIndex = 24
        Me.Label14.Text = "ខេត្ត/ក្រុង"
        '
        'frmUserManagment
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(798, 460)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.btnCapture)
        Me.Controls.Add(Me.btnSelect)
        Me.Controls.Add(Me.UserImage)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "frmUserManagment"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "User Management"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.UserImage, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lbl_FName As System.Windows.Forms.Label
    Friend WithEvents txtFName As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtID As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cboGender As System.Windows.Forms.ComboBox
    Friend WithEvents txtPassword As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txtEmail As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents UserImage As System.Windows.Forms.PictureBox
    Friend WithEvents btnSelect As System.Windows.Forms.Button
    Friend WithEvents btnCapture As System.Windows.Forms.Button
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents tsb_New As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsb_Save As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsb_Delete As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsb_Close As System.Windows.Forms.ToolStripButton
    Friend WithEvents txtBOD As System.Windows.Forms.DateTimePicker
    Friend WithEvents txtLName As System.Windows.Forms.TextBox
    Friend WithEvents lbl_LName As System.Windows.Forms.Label
    Friend WithEvents txtCommune As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents txtProvince As System.Windows.Forms.TextBox
    Friend WithEvents txtDistrict As System.Windows.Forms.TextBox
    Friend WithEvents txtSalary As System.Windows.Forms.TextBox
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents txtPhone As System.Windows.Forms.TextBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
End Class
