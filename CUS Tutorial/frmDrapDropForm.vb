Public Class frmDrapDropForm
    Dim dragging As Boolean
    Dim startX As Integer
    Dim startY As Integer
    Private Sub frmDrapDropForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        For Each Control As Control In Me.Controls
            AddHandler Control.MouseDown, AddressOf startDrag
            AddHandler Control.MouseMove, AddressOf whileDragging
            AddHandler Control.MouseUp, AddressOf endDrag
        Next
        For Each Control As Control In Me.Controls
            For Each item In My.Settings.controlLocations
                If Split(item, "!")(0) = Control.Name Then
                    Control.Location = New Point(Split(item, "!")(1), Split(item, "!")(2))
                End If
            Next
        Next
    End Sub

    Private Sub startDrag(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)
        dragging = True
        startX = e.X
        startY = e.Y
    End Sub
    Private Sub whileDragging(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs)
        If dragging = True Then
            sender.Location = New Point(sender.Location.X + e.X - startX, sender.Location.Y + e.Y - startY)
            Me.Refresh()
        End If
    End Sub
    Private Sub endDrag(ByVal sender As System.Object, ByVal e As System.EventArgs)
        dragging = False
        My.Settings.controlLocations.Clear()
        For Each Control As Control In Me.Controls
            My.Settings.controlLocations.Add(Control.Name & "!" & Control.Location.X & "!" & Control.Location.Y)
        Next
        My.Settings.Save()

    End Sub
End Class