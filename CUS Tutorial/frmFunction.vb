Public Class frmFunction

    Private Sub btnCallFunction_Click(sender As Object, e As EventArgs) Handles btnCallFunction.Click
        MsgBox(Sum)

    End Sub

    Private Function Sum() As Integer
        Dim val1 As Integer = 4
        Dim val2 As Integer = 7
        Dim S As Integer

        S = val1 + val2
        Return S

    End Function

    

 



    Private Sub btnSum_Click(sender As Object, e As EventArgs) Handles btnSum.Click
        'Me.txtResult.Text = Val(Me.txtValueA.Text) + Val(Me.txtValueB.Text)
        'Me.txtResult.Text = Calcu(Me.txtValueA.Text, Me.txtValueB.Text, "+")
        CalBySub(Me.txtValueA.Text, Me.txtValueB.Text, "+")

    End Sub

    Private Sub btnSub_Click(sender As Object, e As EventArgs) Handles btnSub.Click
        'Me.txtResult.Text = Calcu(Me.txtValueA.Text, Me.txtValueB.Text, "-")
        CalBySub(Me.txtValueA.Text, Me.txtValueB.Text, "-")
    End Sub

    Private Sub btnMul_Click(sender As Object, e As EventArgs) Handles btnMul.Click
        'Me.txtResult.Text = Calcu(Me.txtValueA.Text, Me.txtValueB.Text, "*")
        CalBySub(Me.txtValueA.Text, Me.txtValueB.Text, "*")
    End Sub

    Private Sub btnDiv_Click(sender As Object, e As EventArgs) Handles btnDiv.Click
        'Me.txtResult.Text = Calcu(Me.txtValueA.Text, Me.txtValueB.Text, "/")
        CalBySub(Me.txtValueA.Text, Me.txtValueB.Text, "/")
    End Sub

    Private Sub frmFunction_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Function FindMax(ByVal num1 As Integer, ByVal num2 As Integer) As Integer
        ' local variable declaration */
        Dim result As Integer
        If (num1 > num2) Then
            result = num1
        Else
            result = num2
        End If
        FindMax = result
    End Function

    Private Sub btnFindMax_Click(sender As Object, e As EventArgs) Handles btnFindMax.Click
        Me.txtResult.Text = FindMax(Val(txtValueA.Text), Val(txtValueB.Text))

    End Sub
End Class