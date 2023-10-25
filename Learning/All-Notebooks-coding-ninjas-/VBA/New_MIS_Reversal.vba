Sub Intialize()
    
    'Dim iStartTimeRow As Long
    'Dim iEndTimeRow As Long
    Dim sh As Worksheet

    Set sh = ThisWorkbook.Sheets("Reversal")
    
    'iStartTimeRow = sh.Range("D" & Rows.Count).End(xlUp).Row 'Identify the last row for  Start Time
    
    'iEndTimeRow = sh.Range("E" & Rows.Count).End(xlUp).Row 'identify the last row for End Time
    
    'if Start Time and End Time row are not same it means one activity is pending.
    
    'If iStartTimeRow <> iEndTimeRow Then
    
        'MsgBox "There is an open task that yet to be completed.", vbOKOnly + vbInformation, "Open Task"
        
        'sh.Rows(iStartTimeRow).Select 'Selecting the row where end time is not updated
                
    'Else
        
        'if Start and End Time row are same then need to update date in next row
        
        'sh.Range("A" & iStartTimeRow + 1).Value = Format([Today()], "DD-MMM-YYYY")
        
    'End If
        
    '------------------------------------------------------------------------------------------------------------------------
    
    'If Name is blank then update the user name in cell B4
    'sh.Unprotect Password:="0000"
    
        sh.Range("A5:F5").Value = ""
        sh.Range("G5:h5").Value = ""
        sh.Range("J5:k5").Value = ""
    If sh.Range("A5").Value = "" Then
         sh.Range("A5").Value = Environ("username")
    End If

    If sh.Range("B5").Value = "" Then
            sh.Range("B5").Value = Application.UserName
    End If

    sh.Range("C5").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Chat,Emails,Escalation,Escalation Inbound,Outbound,PCG,Retention,Social Media,Voice"
    End With

    sh.Range("D5").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Ksec,Eureka,Concentrix,Tech-M"
    End With

    sh.Range("G5").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Online,Offline,Neo"
    End With

    sh.Range("H5").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="A/C Set-up Charge,Account Opening Fees,Annual 8.49% MTF Subscription Fee,Auction charges Reversal,Brokerage,BSEStar MF subscription Charges,Call and Trade Charges,Cash Back Subscription,Cheque Bounce charges,debit balance,Debit Wave off,DP charges,DP unbilled,FIT Subscription Charges,Income Reversal,Interest,interest unbilled charges,Intersettlement charges,IT Loss,KRA Uploading/Modification Charges,Loss Reversal,MTF 8.49%,Mutual Funds Advisory Fees,Nullification,Other Charges,prepaid transaction fees,Referral points,Reversal of account opening charge,Small case charges reversal,SMS,Trade Free Plan,Trade Smart,Unbilled DP,Unbilled Interest,Webinar charges"
    End With
    
    

    'sh.Range("J5").Select
    'With Selection.Validation
     '   .Delete
      '  .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
      '  xlBetween, Formula1:="Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec"
    'End With

    'sh.Range("K5").Select
    'With Selection.Validation
     '   .Delete
     '   .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
     '   xlBetween, Formula1:="2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023"
    'End With

    'sh.protect Password:="0000"

End Sub


'Function CheckEntry() As Boolean

    'Dim sh As Object

    'Set sh = ThisWorkbook.Sheets("Reversal")

    'CheckEntry = True

    'Function to validate entry
    'If Trim(sh.Range("L5").Value) = "" Then

    '    MsgBox "Case Details Cannot Be Blank.", vbOKOnly + vbInformation, "Case Details Blank"
  '      Range("L5").Select
   '     CheckEntry = False
 '       Exit Function

    'End If
'End Sub



Sub Send_range_()
    
    

    Sheets("Reversal").Select
    ActiveSheet.Range("A5:L5").Select
    ActiveWorkbook.EnvelopeVisible = True
    With ActiveSheet.MailEnvelope
      .Item.To = "kscs.mis@kotak.com"
      .Item.Subject = "Reversal In Customer Account"
      '.Display
      .Item.send
   End With
   
   End If
   

End Sub





