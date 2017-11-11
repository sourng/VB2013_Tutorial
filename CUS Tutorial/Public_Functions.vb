Module Public_Functions
    Public Sub CalBySub(ByVal Val1 As Integer, ByVal Val2 As Integer, ByVal sign As String)
        Dim result As Integer

        If sign = "+" Then
            result = Val(Val1) + Val(Val2)
        ElseIf sign = "-" Then
            result = Val(Val1) - Val(Val2)
        ElseIf sign = "*" Then
            result = Val(Val1) * Val(Val2)
        ElseIf sign = "/" Then
            result = Val(Val1) / Val(Val2)
        Else
            MsgBox("Not valide Sign")
        End If
        frmFunction.txtResult.Text = result


        'Return result
    End Sub

    Public Function Calcu(ByVal Val1, ByVal Val2, ByVal sign) As Integer
        Dim result As Integer

        If sign = "+" Then
            result = Val(Val1) + Val(Val2)
        ElseIf sign = "-" Then
            result = Val(Val1) - Val(Val2)
        ElseIf sign = "*" Then
            result = Val(Val1) * Val(Val2)
        ElseIf sign = "/" Then
            result = Val(Val1) / Val(Val2)
        Else
            MsgBox("Not valide Sign")
        End If

        Return result

    End Function

End Module
