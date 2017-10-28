Public Class frmMain

    Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.MaximizeBox = True
        Me.txtCurrentUser.Text = LoginUser

    End Sub

    Private Sub ToolStripButton1_Click(sender As Object, e As EventArgs) Handles tsb_New.Click

    End Sub

    Private Sub ToolStripStatusLabel3_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel3.Click

    End Sub

    Private Sub tsb_Users_Click(sender As Object, e As EventArgs) Handles tsb_Users.Click
        'frmUserManagment.Show()
        frmUserList.Show()

    End Sub

    Private Sub pbUser_Click(sender As Object, e As EventArgs) Handles pbUser.Click

    End Sub

    Private Sub pbUser_MouseHover(sender As Object, e As EventArgs) Handles pbUser.MouseHover
        Me.pbUser.Image = My.Resources.UserOver

    End Sub

    Private Sub pbUser_MouseLeave(sender As Object, e As EventArgs) Handles pbUser.MouseLeave
        Me.pbUser.Image = My.Resources.UserActive
    End Sub

    
    Private Sub pbBus_Click(sender As Object, e As EventArgs) Handles pbBus.Click


    End Sub

    Private Sub pbBus_MouseHover(sender As Object, e As EventArgs) Handles pbBus.MouseHover
        Me.pbBus.Image = My.Resources.BusOver
    End Sub

    Private Sub pbBus_MouseLeave(sender As Object, e As EventArgs) Handles pbBus.MouseLeave
        Me.pbBus.Image = My.Resources.BusActive

    End Sub

    Private Sub pbBooking_Click(sender As Object, e As EventArgs) Handles pbBooking.Click

    End Sub

    Private Sub pbBooking_MouseHover(sender As Object, e As EventArgs) Handles pbBooking.MouseHover
        Me.pbBooking.Image = My.Resources.BookingOver
    End Sub

    Private Sub pbBooking_MouseLeave(sender As Object, e As EventArgs) Handles pbBooking.MouseLeave
        Me.pbBooking.Image = My.Resources.BookingActive
    End Sub
End Class