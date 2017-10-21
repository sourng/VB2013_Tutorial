<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmUserList
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmUserList))
        Me.lv_Users = New System.Windows.Forms.ListView()
        Me.ch_ID = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_name = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_gender = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_BOD = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_email = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_Address = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_Phone = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ch_Salary = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.st_Menu = New System.Windows.Forms.ToolStrip()
        Me.ToolStripButton3 = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator()
        Me.btnAdd = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator3 = New System.Windows.Forms.ToolStripSeparator()
        Me.btnEdit = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.btnDelete = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.btnClose = New System.Windows.Forms.ToolStripButton()
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.tsb_Start = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripButton7 = New System.Windows.Forms.ToolStripButton()
        Me.txtCurrentUser = New System.Windows.Forms.ToolStripLabel()
        Me.st_Menu.SuspendLayout()
        Me.ToolStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'lv_Users
        '
        Me.lv_Users.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lv_Users.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ch_ID, Me.ch_name, Me.ch_gender, Me.ch_BOD, Me.ch_email, Me.ch_Address, Me.ch_Phone, Me.ch_Salary})
        Me.lv_Users.Font = New System.Drawing.Font("Khmer OS Battambang", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lv_Users.FullRowSelect = True
        Me.lv_Users.Location = New System.Drawing.Point(12, 87)
        Me.lv_Users.Name = "lv_Users"
        Me.lv_Users.Size = New System.Drawing.Size(848, 209)
        Me.lv_Users.TabIndex = 0
        Me.lv_Users.UseCompatibleStateImageBehavior = False
        Me.lv_Users.View = System.Windows.Forms.View.Details
        '
        'ch_ID
        '
        Me.ch_ID.Text = "ល.រ#"
        Me.ch_ID.Width = 85
        '
        'ch_name
        '
        Me.ch_name.Text = "ឈ្មោះអ្នក​ប្រើ"
        Me.ch_name.Width = 140
        '
        'ch_gender
        '
        Me.ch_gender.Text = "ភេទ"
        Me.ch_gender.Width = 77
        '
        'ch_BOD
        '
        Me.ch_BOD.Text = "ឆ្នាំកំណើត"
        Me.ch_BOD.Width = 126
        '
        'ch_email
        '
        Me.ch_email.Text = "អ៊ីម៉េល​"
        Me.ch_email.Width = 130
        '
        'ch_Address
        '
        Me.ch_Address.Text = "អាស័យដ្ឋាន"
        Me.ch_Address.Width = 180
        '
        'ch_Phone
        '
        Me.ch_Phone.Text = "ទូរស័ព្ទ"
        Me.ch_Phone.Width = 150
        '
        'ch_Salary
        '
        Me.ch_Salary.Text = "បៀវត្ស"
        Me.ch_Salary.Width = 130
        '
        'st_Menu
        '
        Me.st_Menu.Font = New System.Drawing.Font("Khmer OS Battambang", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.st_Menu.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.st_Menu.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripButton3, Me.ToolStripSeparator4, Me.btnAdd, Me.ToolStripSeparator3, Me.btnEdit, Me.ToolStripSeparator1, Me.btnDelete, Me.ToolStripSeparator2, Me.btnClose})
        Me.st_Menu.Location = New System.Drawing.Point(0, 0)
        Me.st_Menu.Name = "st_Menu"
        Me.st_Menu.Size = New System.Drawing.Size(872, 68)
        Me.st_Menu.TabIndex = 1
        Me.st_Menu.Text = "ToolStrip Menu"
        '
        'ToolStripButton3
        '
        Me.ToolStripButton3.Image = CType(resources.GetObject("ToolStripButton3.Image"), System.Drawing.Image)
        Me.ToolStripButton3.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButton3.Name = "ToolStripButton3"
        Me.ToolStripButton3.Size = New System.Drawing.Size(195, 65)
        Me.ToolStripButton3.Text = "គ្រប់​គ្រង​ព័ត៌មាន​អ្នក​ប្រើ"
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(6, 68)
        '
        'btnAdd
        '
        Me.btnAdd.Image = CType(resources.GetObject("btnAdd.Image"), System.Drawing.Image)
        Me.btnAdd.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.btnAdd.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(55, 65)
        Me.btnAdd.Text = "បន្ថែម"
        Me.btnAdd.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnAdd.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'ToolStripSeparator3
        '
        Me.ToolStripSeparator3.Name = "ToolStripSeparator3"
        Me.ToolStripSeparator3.Size = New System.Drawing.Size(6, 68)
        '
        'btnEdit
        '
        Me.btnEdit.Image = CType(resources.GetObject("btnEdit.Image"), System.Drawing.Image)
        Me.btnEdit.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnEdit.Name = "btnEdit"
        Me.btnEdit.Size = New System.Drawing.Size(54, 65)
        Me.btnEdit.Text = "កែប្រែ"
        Me.btnEdit.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 68)
        '
        'btnDelete
        '
        Me.btnDelete.Image = CType(resources.GetObject("btnDelete.Image"), System.Drawing.Image)
        Me.btnDelete.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnDelete.Name = "btnDelete"
        Me.btnDelete.Size = New System.Drawing.Size(45, 65)
        Me.btnDelete.Text = "លុប"
        Me.btnDelete.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(6, 68)
        '
        'btnClose
        '
        Me.btnClose.Image = CType(resources.GetObject("btnClose.Image"), System.Drawing.Image)
        Me.btnClose.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(39, 65)
        Me.btnClose.Text = "បិត"
        Me.btnClose.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'ToolStrip1
        '
        Me.ToolStrip1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.ToolStrip1.Font = New System.Drawing.Font("Khmer OS Battambang", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ToolStrip1.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsb_Start, Me.ToolStripButton7, Me.txtCurrentUser})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 309)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(872, 41)
        Me.ToolStrip1.TabIndex = 2
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'tsb_Start
        '
        Me.tsb_Start.Image = CType(resources.GetObject("tsb_Start.Image"), System.Drawing.Image)
        Me.tsb_Start.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_Start.Name = "tsb_Start"
        Me.tsb_Start.Size = New System.Drawing.Size(116, 38)
        Me.tsb_Start.Text = "ចាប់ផ្តើម"
        '
        'ToolStripButton7
        '
        Me.ToolStripButton7.Image = CType(resources.GetObject("ToolStripButton7.Image"), System.Drawing.Image)
        Me.ToolStripButton7.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButton7.Name = "ToolStripButton7"
        Me.ToolStripButton7.Size = New System.Drawing.Size(154, 38)
        Me.ToolStripButton7.Text = "អ្នក​កំពុង​ប្រើ​ :"
        '
        'txtCurrentUser
        '
        Me.txtCurrentUser.ForeColor = System.Drawing.Color.Navy
        Me.txtCurrentUser.Name = "txtCurrentUser"
        Me.txtCurrentUser.Size = New System.Drawing.Size(98, 38)
        Me.txtCurrentUser.Text = " សេង ស៊ង់​"
        '
        'frmUserList
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.ClientSize = New System.Drawing.Size(872, 350)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Controls.Add(Me.st_Menu)
        Me.Controls.Add(Me.lv_Users)
        Me.Name = "frmUserList"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "User List Information"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.st_Menu.ResumeLayout(False)
        Me.st_Menu.PerformLayout()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lv_Users As System.Windows.Forms.ListView
    Friend WithEvents st_Menu As System.Windows.Forms.ToolStrip
    Friend WithEvents ToolStripButton3 As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator4 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents btnAdd As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator3 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents btnEdit As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents btnDelete As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents btnClose As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents tsb_Start As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripButton7 As System.Windows.Forms.ToolStripButton
    Friend WithEvents txtCurrentUser As System.Windows.Forms.ToolStripLabel
    Friend WithEvents ch_ID As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_name As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_gender As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_BOD As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_email As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_Address As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_Phone As System.Windows.Forms.ColumnHeader
    Friend WithEvents ch_Salary As System.Windows.Forms.ColumnHeader
End Class
