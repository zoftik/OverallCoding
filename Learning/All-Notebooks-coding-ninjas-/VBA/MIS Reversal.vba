
Sub Intialize()

    Dim sh As Worksheet
    Set sh = ThisWorkbook.Sheets("Form")

    'sh.Unprotect Password:="Kotak@123"
    sh.Range("A2").Value = ""
    sh.Range("B2").Value = ""
    sh.Range("C2").Value = ""
    
    If sh.Range("A2").Value = "" Then
        sh.Range("A2").Value = Environ("username")
    End If
    
    If sh.Range("B2").Value = "" Then
            sh.Range("B2").Value = Application.UserName
    End If
        
    If sh.Range("C2").Value = "" Then
            sh.Range("C2").Value = Format([Today()], "DD-MMM-YYYY")
    End If

    'sh.Protect Password:="Kotak@123"
End Sub



Sub Reset()

    Dim iMsg As Integer

    iMsg = MsgBox("Do you want to reset this form?", vbYesNo + vbQuestion, "Reset Confirmation")

    If iMsg = vbYes Then

        Call Intialize

    End If


End Sub

Sub Send_Range()
   
   ' Select the range of cells on the active worksheet.
   Sheets("Form").Select
   'If Range("F7").Value = "Yes" Then
   ActiveSheet.Range("A1:j2").Select

  
      
   ' Show the envelope on the ActiveWorkbook.
   ActiveWorkbook.EnvelopeVisible = True
   
   ' Set the optional introduction field thats adds
   ' some header text to the email body. It also sets
   ' the To and Subject lines. Finally the message
   ' is sent.
   
   
   Dim iMsg As Integer

    iMsg = MsgBox("Do you want to Send this form?", vbYesNo + vbQuestion, "Sending Confirmation")

    If iMsg = vbYes Then

        Call Intialize

    End If
    
    With ActiveSheet.MailEnvelope
      .Item.To = "kscs.mis@kotak.com"
      .Item.cc = ""
      .Item.Subject = " Reversal In Customer Account"
      '.Display
      .Item.send
    End With
   '  Else
    ' End If
End Sub



Sub Send_Button()

    Dim iMsg As Integer

    iMsg = MsgBox("Do you want to Send this form?", vbYesNo + vbQuestion, "Sending Confirmation")

    If iMsg = vbYes Then

        Call Send_Range

    End If


End Sub

