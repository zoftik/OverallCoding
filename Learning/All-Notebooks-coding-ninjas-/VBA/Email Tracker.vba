
Sub Intialize()
    
    Dim iStartTimeRow As Long
    Dim iEndTimeRow As Long
    Dim sh As Worksheet

    Set sh = ThisWorkbook.Sheets("TimeSheet")
    
    iStartTimeRow = sh.Range("D" & Rows.Count).End(xlUp).Row 'Identify the last row for  Start Time
    
    iEndTimeRow = sh.Range("E" & Rows.Count).End(xlUp).Row 'identify the last row for End Time
    
    'if Start Time and End Time row are not same it means one activity is pending.
    
    If iStartTimeRow <> iEndTimeRow Then
    
        MsgBox "There is an open task that yet to be completed.", vbOKOnly + vbInformation, "Open Task"
        
        sh.Rows(iStartTimeRow).Select 'Selecting the row where end time is not updated
                
    Else
        
        'if Start and End Time row are same then need to update date in next row
        
        sh.Range("A" & iStartTimeRow + 1).Value = Format([Today()], "DD-MMM-YYYY")
        
    End If
        
    '------------------------------------------------------------------------------------------------------------------------
    
    'If Name is blank then update the user name in cell B4
    
    If sh.Range("B4").Value = "" Then
    
        sh.Range("B4").Value = Environ("username") & "||" & Application.UserName
        
    End If
   

End Sub

Sub Reset_Tracker()

    Dim msgValue As VbMsgBoxResult
    Dim sh As Worksheet

    msgValue = MsgBox("Do you want to delete the data and reset this tracker?", vbYesNo + vbQuestion + vbDefaultButton2, "Clear Time Log?")
    
    If msgValue = vbNo Then Exit Sub
    
    Set sh = ThisWorkbook.Sheets("TimeSheet")
    
    'Unprotecting sheet and clearing raw data
    
    sh.Unprotect Password:="0000"
        
    sh.Range("A9:I" & Rows.Count).ClearContents
    sh.Range("A9:I" & Rows.Count).Interior.Color = xlNone
    sh.Range("B4").Value = Environ("username") & "||" & Application.UserName
    
    sh.Protect Password:="0000"
    
    'Initialize the tracker
    Call Intialize
 
End Sub


Sub Start_Time()

    Dim sh As Worksheet

    Dim iRow As Long
    
    Set sh = ThisWorkbook.Sheets("TimeSheet")
    
    iRow = sh.Range("H" & Rows.Count).End(xlUp).Row + 1 'identify the next blank row
    
    'Unprotecting the Sheet
    
    sh.Unprotect Password:="0000"
    
    'removing the back color, if any
    sh.Range("B" & iRow).Interior.Color = xlNone
    sh.Range("C" & iRow).Interior.Color = xlNone
    
    sh.Protect Password:="0000"
        
    'Code to Validate
    
    If sh.Range("B" & iRow).Value = "" Then 'Project Name
    
        MsgBox "Please select the Project Name from the drop down.", vbOKOnly + vbInformation, "Project Name"
        sh.Range("B" & iRow).Select
        sh.Unprotect Password:="0000"
        sh.Range("B" & iRow).Interior.Color = vbRed
        sh.Protect Password:="0000"
        Exit Sub
    
    ElseIf sh.Range("C" & iRow).Value = "" Then 'Task Name
    
        MsgBox "Please select the Task Name from the drop down.", vbOKOnly + vbInformation, "Task Name"
        sh.Range("C" & iRow).Select
        sh.Unprotect Password:="0000"
        sh.Range("C" & iRow).Interior.Color = vbRed
        sh.Protect Password:="0000"
        Exit Sub
        
    ElseIf sh.Range("D" & iRow).Value <> "" Then
        MsgBox "Start Time is aleady captured for the selected Task."
        Exit Sub
    Else
        
        'Unprotecting sheet to update the Start Time
        
        sh.Unprotect Password:="0000"
        
        sh.Range("D" & iRow).Value = [Now()]
        
        sh.Range("D" & iRow).NumberFormat = "hh:mm:ss AM/PM"
        
        'Protecting the sheet
        sh.Protect Password:="0000"
        
        ThisWorkbook.Save
    
    End If
   
End Sub

Sub End_Time()
    
    Dim sh As Worksheet
    
    Dim iRow As Long
    
    Set sh = ThisWorkbook.Sheets("TimeSheet")
    
    iRow = sh.Range("H" & Rows.Count).End(xlUp).Row + 1 'identify the next blank row
    
    'Code to Validate
    
    If sh.Range("D" & iRow).Value = "" Then
    
        MsgBox "Start Time has not been captured for this task."
        Exit Sub
    Else
        
        'Unprotecting sheet to update the End Time and Total Time
            
        sh.Unprotect Password:="0000"
                
        sh.Range("E" & iRow).Value = [Now()] 'Updating Start Time
                
        sh.Range("E" & iRow).NumberFormat = "hh:mm:ss AM/PM"
                
        'Calculating total time - End Time - Start Time
        
        sh.Range("F" & iRow).Value = sh.Range("E" & iRow).Value - sh.Range("D" & iRow).Value
                
        sh.Range("F" & iRow).NumberFormat = "hh:mm:ss"
                
        'Actual time after excluding any break time - Here RC[-2] is referring F column and RC[-1] is for G
        
        sh.Range("H" & iRow).Value = "=(RC[-2])-(RC[-1])"
        sh.Range("H" & iRow).NumberFormat = "hh:mm:ss"
                
        'Protecting the sheet
                
        sh.Protect Password:="0000"
        
        ThisWorkbook.Save
            
    End If

    'Fill the Date in next row
    Call Intialize
    
End Sub


Sub Send_Range()
   
   ' Select the range of cells on the active worksheet.
   Sheets("TimeSheet").Select
   'If Range("F7").Value = "Yes" Then
   ActiveSheet.Range("A8:I60").Select
 
  
      
   ' Show the envelope on the ActiveWorkbook.
   ActiveWorkbook.EnvelopeVisible = True
   
   ' Set the optional introduction field thats adds
   ' some header text to the email body. It also sets
   ' the To and Subject lines. Finally the message
   ' is sent.
   With ActiveSheet.MailEnvelope
      .Item.To = "ashish.navale@kotak.com"
      .Item.cc = "ashish.navale@kotak.com"
      .Item.Subject = Format([Today()], "DD-MMM-YYYY") & "  Email Tracker "
      .Display
      .Item.send
   End With
   '  Else
    ' End If
End Sub



Sub Area_Mail()

    Dim OutApp As Object, Mail As Object, Hi_PFB_Email_Tracker
    Dim message
    
    
    'then set desired table area
    Range("A8:I60").Select
    Selection.Copy
    
    'Open Mail
    Set OutApp = CreateObject("Outlook.Application")
    Set message = OutApp.CreateItem(0)
    With message
    .Subject = Format([Today()], "DD-MMM-YYYY") & "  Email Tracker "
    .To = "Ashish.navale@kotak.com"
    .Display
    End With
    'Set OutApp = Nothing
    'set message = "Hi, PFB Email Tracker"
    
    'Application.Wait (Now + TimeValue("0:00:02"))
    
    'Then Paste the clipboard
    Application.SendKeys ("%bHi,") 'in the Edit Menu(Alb-b)Select the e-insert
    
    Application.SendKeys (" PFB Email Tracker")
    Application.SendKeys ("^v") 'Ctrl-V Instruction is the second option instead of Alt-B + I
    
End Sub
