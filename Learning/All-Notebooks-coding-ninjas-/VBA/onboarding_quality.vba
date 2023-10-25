'#####################################################################################
'#   Designed and Developed by Ashish navale                                         #
'#####################################################################################

' Procedure to initialize the Cells, Controls

Sub InitializeSheet()

    Application.ScreenUpdating = False

    Dim shForm As Object

    Set shForm = ThisWorkbook.Sheets("Form")

    shForm.Activate

    shForm.Unprotect Password:="Kotak@123"
    
    
    'Employee & Other Details

    shForm.Range("D9").Value = ""
    
    shForm.Range("L5").Value = ""

    shForm.Range("H8:H11").Value = ""

    shForm.Range("L9:L11").Value = ""
    
    'Audit Score & Comments
    
    shForm.Range("J34").Value = ""
    shForm.Range("L34").Value = ""
    
    shForm.Range("J38:J40").Value = ""
    shForm.Range("L38:L40").Value = ""
    
    shForm.Range("J44:J46").Value = ""
    shForm.Range("L44:L46").Value = ""
        
    shForm.Range("J50:J51").Value = ""
    shForm.Range("L50:L51").Value = ""
    
    shForm.Range("J55:J56").Value = ""
    shForm.Range("L55:L56").Value = ""
    
    shForm.Range("J60").Value = ""
    shForm.Range("L60").Value = ""
    
    shForm.Range("L10").Value = [Today()]
    
    
    
    ' Feedbak/Remarks
    
    shForm.Range("B66").Value = ""
    
    'Complaince
    shForm.Range("D76:D78").Value = ""
    shForm.Range("H83:H85").Value = ""

   'Adding Validation to feedback Shared Yes/No
    
    shForm.Range("L11").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No"
    End With

    'Adding Validation
    'Probing

    shForm.Range("J34").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    'Communication

    shForm.Range("J38").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J39").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J40").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    

    'Call Etiquettes

    shForm.Range("J44").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Half,Yes,No,N/A"
    End With

    shForm.Range("J45").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,Half,N/A"
    End With


    shForm.Range("J46").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,Half,N/A"
    End With
    
    
    'Probing

    
    shForm.Range("J50").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,'Half',N/A"
    End With
    
    shForm.Range("J51").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,Half,N/A"
    End With
    
    'Resolution

    shForm.Range("J55").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,Half,N/A"
    End With
    
    shForm.Range("J56").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,Half,N/A"
    End With
    
    'Complaince

    shForm.Range("J60").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("L9").Value = Application.UserName
    shForm.Range("L10").Value = [Today()]
    
    shForm.optYes = False
    shForm.optNo = False

    shForm.Activate
    shForm.Range("D9").Select

    ActiveWindow.ScrollRow = 8
    ActiveWindow.ScrollColumn = 1

   shForm.Protect Password:="Kotak@123"

    Application.ScreenUpdating = True

End Sub

'Procedure to Reset the form

Sub Reset()

    Dim iMsg As Integer

    iMsg = MsgBox("Do you want to reset this form?", vbYesNo + vbQuestion, "Reset Confirmation")

    If iMsg = vbYes Then

        Call InitializeSheet

    End If


End Sub

'Function to Validate the Entry

Function CheckEntry() As Boolean

    Dim shForm As Object

    Set shForm = ThisWorkbook.Sheets("Form")

    CheckEntry = True

    '1st Section
    
    If Trim(shForm.Range("D9").Value) = "" Then

        MsgBox "Employee ID can't be blank.", vbOKOnly + vbInformation, "Employee ID"
        Range("D9").Select
        CheckEntry = False
        Exit Function

    End If

    If Trim(shForm.Range("D10").Value) = "" Then

        MsgBox "Employee Name can't be blank.", vbOKOnly + vbInformation, "Employee Name"
        Range("D10").Select
        CheckEntry = False
        Exit Function

    End If

    If Trim(shForm.Range("D11").Value) = "" Then

        MsgBox "Employee Email ID can't be blank.", vbOKOnly + vbInformation, "Email ID"
        Range("D11").Select
        CheckEntry = False
        Exit Function

    End If

    '2nd Section
    
    If Trim(shForm.Range("H8").Value) = "" Then

        MsgBox "Query ID can't be blank.", vbOKOnly + vbInformation, "Query ID"
        Range("H8").Select
        CheckEntry = False
        Exit Function

    End If

    If Trim(shForm.Range("H9").Value) = "" Then

        MsgBox "Client Code can't be blank.", vbOKOnly + vbInformation, "Client Code"
        Range("H9").Select
        CheckEntry = False
        Exit Function

    End If
    
    
    If Trim(shForm.Range("H10").Value) = "" Then

        MsgBox "Call Date can't be blank.", vbOKOnly + vbInformation, "Call Date"
        Range("H10").Select
        CheckEntry = False
        Exit Function

    End If
    
    
    
    If Trim(shForm.Range("H11").Value) = "" Then

        MsgBox "Transaction ID can't be blank.", vbOKOnly + vbInformation, "Transaction ID"
        Range("H11").Select
        CheckEntry = False
        Exit Function

    End If

    
    '3rd Section

    If Trim(shForm.Range("L9").Value) = "" Then

        MsgBox "Auditor's Name can't be blank.", vbOKOnly + vbInformation, "Auditor's Name"
        Range("L9").Select
        CheckEntry = False
        Exit Function

    End If

    If Trim(shForm.Range("L10").Value) = "" Then

        MsgBox "Audit Date can't be blank.", vbOKOnly + vbInformation, "Audit Date"
        Range("L10").Select
        CheckEntry = False
        Exit Function

    End If

    If Trim(shForm.Range("L11").Value) = "" Then

        MsgBox "Please select 'Feedback Shared' Yes or No from the drop-down.", vbOKOnly + vbInformation, "Feedback Shared"
        Range("L11").Select
        CheckEntry = False
        Exit Function

    End If
    
    If Trim(shForm.Range("D76").Value) = "" Then

        MsgBox "Please select 'Compliance' Yes or No from the drop-down.", vbOKOnly + vbInformation, "Compliance"
        Range("D76").Select
        CheckEntry = False
        Exit Function

    End If


    
    'Category Validation

    'Probing - 1

    'I open the call promptly and set the scene.

    If Trim(shForm.Range("J34").Value) = "" Or (Trim(shForm.Range("J34").Value) <> "Yes" _
    And Trim(shForm.Range("J34").Value) <> "No" And Trim(shForm.Range("J34").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 1"
        Range("J34").Select
        CheckEntry = False
        Exit Function

    End If

    'Communication - 2

    'My sentences are clear and match customer's pace.

    If Trim(shForm.Range("j38").Value) = "" Or (Trim(shForm.Range("j38").Value) <> "Yes" _
    And Trim(shForm.Range("j38").Value) <> "No" And Trim(shForm.Range("j38").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 1 "
        Range("J38").Select
        CheckEntry = False
        Exit Function

    End If

    'I'm polite and confident & acknowledge the customer.

    If Trim(shForm.Range("j39").Value) = "" Or (Trim(shForm.Range("j39").Value) <> "Yes" _
    And Trim(shForm.Range("j39").Value) <> "No" And Trim(shForm.Range("j39").Value) <> "N/A") Then


        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 2"
        Range("j39").Select
        CheckEntry = False
        Exit Function

    End If

    'Energetic & Keen to help

    If Trim(shForm.Range("j40").Value) = "" Or (Trim(shForm.Range("j40").Value) <> "Yes" _
    And Trim(shForm.Range("j40").Value) <> "No" And Trim(shForm.Range("j40").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 3"
        Range("j40").Select
        CheckEntry = False
        Exit Function

    End If


    'Call Etiquettes - 3


    'Hold guidelines

    If Trim(shForm.Range("j44").Value) = "" Or (Trim(shForm.Range("j44").Value) <> "Yes" _
    And Trim(shForm.Range("j44").Value) <> "No" And Trim(shForm.Range("j44").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 1"
        Range("j44").Select
        CheckEntry = False
        Exit Function

    End If

    'Interruption

    If Trim(shForm.Range("j45").Value) = "" Or (Trim(shForm.Range("j45").Value) <> "Yes" _
    And Trim(shForm.Range("j45").Value) <> "No" And Trim(shForm.Range("j45").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 2"
        Range("j45").Select
        CheckEntry = False
        Exit Function

    End If

    'I show empathy and I apologise (if appropriate).

    If Trim(shForm.Range("j46").Value) = "" Or (Trim(shForm.Range("j46").Value) <> "Yes" _
    And Trim(shForm.Range("j46").Value) <> "No" And Trim(shForm.Range("j46").Value) <> "N/A") Then
        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 3"
        Range("j46").Select
        CheckEntry = False
        Exit Function

    End If

    'Probing - 4

    'Customer probing

    If Trim(shForm.Range("j50").Value) = "" Or (Trim(shForm.Range("j50").Value) <> "Yes" _
    And Trim(shForm.Range("j50").Value) <> "No" And Trim(shForm.Range("j50").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 1"
        Range("j50").Select
        CheckEntry = False
        Exit Function

    End If

    'I use the systems effectively to find things out for myself.

    If Trim(shForm.Range("j51").Value) = "" Or (Trim(shForm.Range("j51").Value) <> "Yes" _
    And Trim(shForm.Range("j51").Value) <> "No" And Trim(shForm.Range("j51").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 2"
        Range("j51").Select
        CheckEntry = False
        Exit Function

    End If
    
    'Resolution - 5
    
    'I follow all the steps required as part of onboarding activity

    If Trim(shForm.Range("j55").Value) = "" Or (Trim(shForm.Range("j55").Value) <> "Yes" _
    And Trim(shForm.Range("j55").Value) <> "No" And Trim(shForm.Range("j55").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 3"
        Range("j55").Select
        CheckEntry = False
        Exit Function

    End If
    
    'I show good knowledge of Kotak Sercurities products & Services.

    If Trim(shForm.Range("j56").Value) = "" Or (Trim(shForm.Range("j56").Value) <> "Yes" _
    And Trim(shForm.Range("j56").Value) <> "No" And Trim(shForm.Range("j56").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 4"
        Range("j56").Select
        CheckEntry = False
        Exit Function

    End If

    'Closing - 6
    'Checking for further assistance and closing

    If Trim(shForm.Range("J60").Value) = "" Or (Trim(shForm.Range("J60").Value) <> "Yes" _
    And Trim(shForm.Range("J60").Value) <> "No" And Trim(shForm.Range("J60").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Notes - Parameter 1 "
        Range("J60").Select
        CheckEntry = False
        Exit Function

    End If



    ' Feedback Shared

    If shForm.optYes.Value = False And shForm.optNo.Value = False Then

        MsgBox "Please select 'Send Feedback Mail' Option (Yes/No).", vbOKOnly + vbInformation, "Send Feedback"
        Range("B13").Select
        CheckEntry = False
        Exit Function

    End If
    


End Function



' Procedure to call all the functions to transfer the data

Sub SaveData()
    
    Dim sAuditorName As String
    Dim shForm As Object
    
    Dim iMsg As Integer

    iMsg = MsgBox("Do you want to submit this form?", vbYesNo + vbQuestion, "Submit Confirmation")

    If iMsg = vbNo Then Exit Sub
       

    Set shForm = ThisWorkbook.Sheets("Form")

    If CheckEntry = False Then

        Exit Sub
    Else

        sAuditorName = shForm.Range("L9").Value

        Application.StatusBar = "Saving Data..."
        Call Transfer
        
        Application.StatusBar = "Drafting Email..."
        Call Feedback_Email
        
        Application.StatusBar = "Reseting Form..."
        Call InitializeSheet
        
        Application.StatusBar = "Done!"
        Application.StatusBar = False

        If Trim(sAuditorName) <> "" Then

            shForm.Range("L9").Value = Trim(sAuditorName)

        End If

        MsgBox "Call audit score and summary updated successfully!"
        ThisWorkbook.Save

        Exit Sub

    End If


End Sub


Sub Transfer()

    Dim iRow As Integer

    Dim shForm As Object
    Dim shDump As Object

    Set shForm = ThisWorkbook.Sheets("Form")
    Set shDump = ThisWorkbook.Sheets("Audit Dump")

    shDump.Select

    iRow = shDump.Range("A" & Application.Rows.Count).End(xlUp).Row + 1 'Identify the last row

    
    
    With shDump
    
    ''Employee & Other Details
    
    .Cells(iRow, 1).Value = shForm.Range("D9").Value 'Employee ID
    .Cells(iRow, 2).Value = shForm.Range("D10").Value ' Employee Name
    .Cells(iRow, 3).Value = shForm.Range("D11").Value 'Employee Email ID

    .Cells(iRow, 4).Value = shForm.Range("H8").Value 'Query ID
    .Cells(iRow, 5).Value = shForm.Range("H9").Value 'Client Code
    .Cells(iRow, 6).Value = shForm.Range("H10").Value 'Call Date
    .Cells(iRow, 7).Value = shForm.Range("H11").Value 'Transaction ID

    
    .Cells(iRow, 8).Value = shForm.Range("L9").Value 'Auditor's Name
    .Cells(iRow, 9).Value = [Today()]  'Audit Date
    .Cells(iRow, 10).Value = shForm.Range("L11").Value 'Feedback Shared

    ' Audit Score Summary
    
    .Cells(iRow, 11).Value = shForm.Range("F26").Value 'Overall Appliable Points
    .Cells(iRow, 12).Value = shForm.Range("H26").Value 'Overall Earned Points
    .Cells(iRow, 13).Value = shForm.Range("J26").Value 'Overall Score
    

    'Opening -1

    .Cells(iRow, 14).Value = shForm.Range("J34").Value 'I open the call promptly and set the scene. - Audit Result
    .Cells(iRow, 15).Value = shForm.Range("N34").Value 'I open the call promptly and set the scene. - Applicable Points
    .Cells(iRow, 16).Value = shForm.Range("O34").Value 'I open the call promptly and set the scene. - Earned Points
    .Cells(iRow, 17).Value = shForm.Range("L34").Value 'I open the call promptly and set the scene. - Comment


   'Communication - 2

    .Cells(iRow, 18).Value = shForm.Range("J38").Value 'My sentences are clear and match customer's pace. - Audit Result
    .Cells(iRow, 19).Value = shForm.Range("N38").Value 'My sentences are clear and match customer's pace. - Applicable Points
    .Cells(iRow, 20).Value = shForm.Range("O38").Value 'My sentences are clear and match customer's pace. - Earned Points
    .Cells(iRow, 21).Value = shForm.Range("L38").Value 'My sentences are clear and match customer's pace. - Comment

    .Cells(iRow, 22).Value = shForm.Range("J39").Value 'I'm polite and confident & acknowledge the customer. - Audit Result
    .Cells(iRow, 23).Value = shForm.Range("N39").Value 'I'm polite and confident & acknowledge the customer. - Applicable Points
    .Cells(iRow, 24).Value = shForm.Range("O39").Value 'I'm polite and confident & acknowledge the customer. - Earned Points
    .Cells(iRow, 25).Value = shForm.Range("L39").Value 'I'm polite and confident & acknowledge the customer. - Comment

    .Cells(iRow, 26).Value = shForm.Range("J40").Value 'Energetic & Keen to help - Audit Result
    .Cells(iRow, 27).Value = shForm.Range("N40").Value 'Energetic & Keen to help - Applicable Points
    .Cells(iRow, 28).Value = shForm.Range("O40").Value 'Energetic & Keen to help - Earned Points
    .Cells(iRow, 29).Value = shForm.Range("L40").Value 'Energetic & Keen to help - Comment

    'Call Etiquettes - 3

    .Cells(iRow, 30).Value = shForm.Range("J44").Value 'Hold guidelines - Audit Result
    .Cells(iRow, 31).Value = shForm.Range("N44").Value 'Hold guidelines - Applicable Points
    .Cells(iRow, 32).Value = shForm.Range("O44").Value 'Hold guidelines - Earned Points
    .Cells(iRow, 33).Value = shForm.Range("L44").Value 'Hold guidelines - Comment

    .Cells(iRow, 34).Value = shForm.Range("J45").Value 'Interruption - Audit Result
    .Cells(iRow, 35).Value = shForm.Range("N45").Value 'Interruption - Applicable Points
    .Cells(iRow, 36).Value = shForm.Range("O45").Value 'Interruption - Earned Points
    .Cells(iRow, 37).Value = shForm.Range("L45").Value 'Interruption - Comment

    .Cells(iRow, 38).Value = shForm.Range("J46").Value 'I show empathy and I apologise (if appropriate).  - Audit Result
    .Cells(iRow, 39).Value = shForm.Range("N46").Value 'I show empathy and I apologise (if appropriate).  - Applicable Points
    .Cells(iRow, 40).Value = shForm.Range("O46").Value 'I show empathy and I apologise (if appropriate).  - Earned Points
    .Cells(iRow, 41).Value = shForm.Range("L46").Value 'I show empathy and I apologise (if appropriate).  - Comment

    'Probing - 4

    .Cells(iRow, 42).Value = shForm.Range("J50").Value 'Customer probing - Audit Result
    .Cells(iRow, 43).Value = shForm.Range("N50").Value 'Customer probing - Applicable Points
    .Cells(iRow, 44).Value = shForm.Range("O50").Value 'Customer probing - Earned Points
    .Cells(iRow, 45).Value = shForm.Range("L50").Value 'Customer probing - Comment

    .Cells(iRow, 46).Value = shForm.Range("J51").Value 'I use the systems effectively to find things out for myself. - Audit Result
    .Cells(iRow, 47).Value = shForm.Range("N51").Value 'I use the systems effectively to find things out for myself. - Applicable Points
    .Cells(iRow, 48).Value = shForm.Range("O51").Value 'I use the systems effectively to find things out for myself. - Earned Points
    .Cells(iRow, 49).Value = shForm.Range("L51").Value 'I use the systems effectively to find things out for myself. - Comment

    'Resolution - 5

    .Cells(iRow, 50).Value = shForm.Range("J55").Value 'I follow all the steps required as part of onboarding activity - Audit Result
    .Cells(iRow, 51).Value = shForm.Range("N55").Value 'I follow all the steps required as part of onboarding activity - Applicable Points
    .Cells(iRow, 52).Value = shForm.Range("O55").Value 'I follow all the steps required as part of onboarding activity - Earned Points
    .Cells(iRow, 53).Value = shForm.Range("L55").Value 'I follow all the steps required as part of onboarding activity - Comment

    .Cells(iRow, 54).Value = shForm.Range("J56").Value 'I show good knowledge of Kotak Sercurities products & Services. - Audit Result
    .Cells(iRow, 55).Value = shForm.Range("N56").Value 'I show good knowledge of Kotak Sercurities products & Services. - Applicable Points
    .Cells(iRow, 56).Value = shForm.Range("O56").Value 'I show good knowledge of Kotak Sercurities products & Services. - Earned Points
    .Cells(iRow, 57).Value = shForm.Range("L56").Value 'I show good knowledge of Kotak Sercurities products & Services. - Comment
    
    'Closing - 6

    .Cells(iRow, 58).Value = shForm.Range("J60").Value 'Checking for further assistance and closing - Audit Result
    .Cells(iRow, 59).Value = shForm.Range("N60").Value 'Checking for further assistance and closing - Applicable Points
    .Cells(iRow, 60).Value = shForm.Range("O60").Value 'Checking for further assistance and closing - Earned Points
    .Cells(iRow, 61).Value = shForm.Range("L60").Value 'Checking for further assistance and closing - Comment
    
    'Compliance - 7
    
    .Cells(iRow, 62).Value = shForm.Range("D76").Value 'Compliance
    .Cells(iRow, 63).Value = shForm.Range("D77").Value 'Parameter
    .Cells(iRow, 64).Value = shForm.Range("D78").Value 'Comment
    
    'Others - 9
    .Cells(iRow, 104).Value = shForm.Range("L11").Value 'Feedback Shared Yes/No
    .Cells(iRow, 105).Value = shForm.Range("B66").Value 'Feedback/Remarks
    .Cells(iRow, 106).Value = Application.UserName 'Updated By
    .Cells(iRow, 107).Value = [Now()] 'Updated Date

    .Range("A2").Select
    
    End With


End Sub


