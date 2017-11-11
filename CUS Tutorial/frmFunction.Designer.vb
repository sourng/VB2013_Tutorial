<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmFunction
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
        Me.btnCallFunction = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtValueA = New System.Windows.Forms.TextBox()
        Me.txtValueB = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnSum = New System.Windows.Forms.Button()
        Me.btnSub = New System.Windows.Forms.Button()
        Me.btnMul = New System.Windows.Forms.Button()
        Me.btnDiv = New System.Windows.Forms.Button()
        Me.txtResult = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.btnFindMax = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'btnCallFunction
        '
        Me.btnCallFunction.Location = New System.Drawing.Point(98, 165)
        Me.btnCallFunction.Name = "btnCallFunction"
        Me.btnCallFunction.Size = New System.Drawing.Size(120, 33)
        Me.btnCallFunction.TabIndex = 0
        Me.btnCallFunction.Text = "Call Function"
        Me.btnCallFunction.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(32, 59)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(47, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Value A:"
        '
        'txtValueA
        '
        Me.txtValueA.Location = New System.Drawing.Point(111, 55)
        Me.txtValueA.Name = "txtValueA"
        Me.txtValueA.Size = New System.Drawing.Size(132, 20)
        Me.txtValueA.TabIndex = 2
        '
        'txtValueB
        '
        Me.txtValueB.Location = New System.Drawing.Point(111, 81)
        Me.txtValueB.Name = "txtValueB"
        Me.txtValueB.Size = New System.Drawing.Size(132, 20)
        Me.txtValueB.TabIndex = 4
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(32, 85)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(47, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Value B:"
        '
        'btnSum
        '
        Me.btnSum.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSum.Location = New System.Drawing.Point(263, 59)
        Me.btnSum.Name = "btnSum"
        Me.btnSum.Size = New System.Drawing.Size(37, 33)
        Me.btnSum.TabIndex = 5
        Me.btnSum.Text = "+"
        Me.btnSum.UseVisualStyleBackColor = True
        '
        'btnSub
        '
        Me.btnSub.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSub.Location = New System.Drawing.Point(306, 59)
        Me.btnSub.Name = "btnSub"
        Me.btnSub.Size = New System.Drawing.Size(37, 33)
        Me.btnSub.TabIndex = 6
        Me.btnSub.Text = "-"
        Me.btnSub.UseVisualStyleBackColor = True
        '
        'btnMul
        '
        Me.btnMul.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnMul.Location = New System.Drawing.Point(349, 59)
        Me.btnMul.Name = "btnMul"
        Me.btnMul.Size = New System.Drawing.Size(37, 33)
        Me.btnMul.TabIndex = 7
        Me.btnMul.Text = "x"
        Me.btnMul.UseVisualStyleBackColor = True
        '
        'btnDiv
        '
        Me.btnDiv.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnDiv.Location = New System.Drawing.Point(392, 59)
        Me.btnDiv.Name = "btnDiv"
        Me.btnDiv.Size = New System.Drawing.Size(37, 33)
        Me.btnDiv.TabIndex = 8
        Me.btnDiv.Text = "/"
        Me.btnDiv.UseVisualStyleBackColor = True
        '
        'txtResult
        '
        Me.txtResult.Location = New System.Drawing.Point(111, 107)
        Me.txtResult.Name = "txtResult"
        Me.txtResult.Size = New System.Drawing.Size(132, 20)
        Me.txtResult.TabIndex = 10
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(32, 111)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(43, 13)
        Me.Label3.TabIndex = 9
        Me.Label3.Text = "Result :"
        '
        'btnFindMax
        '
        Me.btnFindMax.Location = New System.Drawing.Point(346, 133)
        Me.btnFindMax.Name = "btnFindMax"
        Me.btnFindMax.Size = New System.Drawing.Size(114, 41)
        Me.btnFindMax.TabIndex = 11
        Me.btnFindMax.Text = "Find Max"
        Me.btnFindMax.UseVisualStyleBackColor = True
        '
        'frmFunction
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(585, 222)
        Me.Controls.Add(Me.btnFindMax)
        Me.Controls.Add(Me.txtResult)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnDiv)
        Me.Controls.Add(Me.btnMul)
        Me.Controls.Add(Me.btnSub)
        Me.Controls.Add(Me.btnSum)
        Me.Controls.Add(Me.txtValueB)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txtValueA)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnCallFunction)
        Me.Name = "frmFunction"
        Me.Text = "frmFunction"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btnCallFunction As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtValueA As System.Windows.Forms.TextBox
    Friend WithEvents txtValueB As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnSum As System.Windows.Forms.Button
    Friend WithEvents btnSub As System.Windows.Forms.Button
    Friend WithEvents btnMul As System.Windows.Forms.Button
    Friend WithEvents btnDiv As System.Windows.Forms.Button
    Friend WithEvents txtResult As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btnFindMax As System.Windows.Forms.Button
End Class
