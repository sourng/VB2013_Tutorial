Imports MySql.Data.MySqlClient

Module M_Public_Variables
    Public LoginUser As String

    Public Sub Connect2DB()
        Dim mySQLConn = New MySqlConnection
        mySQLConn.ConnectionString = My.Settings.Conn
        Try
            mySQLConn.Open()
            MsgBox("Connect Successfull !")
            mySQLConn.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        Finally
            mySQLConn.Dispose()

        End Try
    End Sub
End Module
