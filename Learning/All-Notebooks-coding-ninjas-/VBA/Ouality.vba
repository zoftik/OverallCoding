'#####################################################################################
'#   Designed and Developed by TheDatalabs                                           #
'#   www.thedatalabs.org                                                             #
'#   www.youtube.com/thedatalabs                                                     #
'#   info@thedatalabs.org                                                            #
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

    shForm.Range("H8:H11").Value = ""

    shForm.Range("L9:L11").Value = ""
    
    'Additional Insights
    
    shForm.Range("H93:H95").Value = ""
    
    'Complaince
    
    shForm.Range("D85:D86").Value = ""
    shForm.Range("D88").Value = ""
    
    'Audit Score & Comments
    
    shForm.Range("J34:J38").Value = ""
    shForm.Range("L34:L38").Value = ""
    
    shForm.Range("J42:J46").Value = ""
    shForm.Range("L42:L46").Value = ""
    
    shForm.Range("J50:J53").Value = ""
    shForm.Range("L50:L53").Value = ""
        
    shForm.Range("J57:J60").Value = ""
    shForm.Range("L57:L60").Value = ""
    
    shForm.Range("J64:J65").Value = ""
    shForm.Range("L64:L65").Value = ""
    
    shForm.Range("J69").Value = ""
    shForm.Range("L69").Value = ""
    
    
    
    ' Feedbak/Remarks
    
    shForm.Range("B75").Value = ""

   'Adding Validation to feedback Shared Yes/No
    
    shForm.Range("L11").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No"
    End With
    
    'Adding Validation to Comms
    
    shForm.Range("H93").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Red,Ember,Green"
    End With
    
    'Adding Validation to Customer types
    
    shForm.Range("H94").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,NA"
    End With
    
    'Adding Validation to Incase of FTR, has the customer come back with same query?
    
    shForm.Range("H95").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,NA"
    End With



    'Adding Validation
    'Tailored Touch

    shForm.Range("J34").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J35").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J36").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J37").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J34").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    

    'Connect

    
    shForm.Range("J42").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J43").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J44").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J45").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J46").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J47").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With



    'Discover

    
    shForm.Range("J50").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    shForm.Range("J51").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With


    shForm.Range("J52").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J53").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With

    
    'Propose and Commit

    
    shForm.Range("J57").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J58").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J59").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J60").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J61").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With


    'Lasting Impression

    shForm.Range("J64").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    shForm.Range("J65").Select
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Yes,No,N/A"
    End With
    
    'Notes

    shForm.Range("J69").Select
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

    

    If Trim(shForm.Range("H9").Value) = "" Then

        MsgBox "Client Code can't be blank.", vbOKOnly + vbInformation, "Client Code"
        Range("H9").Select
        CheckEntry = False
        Exit Function

    End If
    
    If Trim(shForm.Range("H9").Value) = "" Then

        MsgBox "Query ID can't be blank.", vbOKOnly + vbInformation, "Query ID"
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
    
    If Trim(shForm.Range("D85").Value) = "" Then

        MsgBox "Please select 'Compliance' Yes or No from the drop-down.", vbOKOnly + vbInformation, "Compliance"
        Range("D85").Select
        CheckEntry = False
        Exit Function

    End If


    
    'Category Validation

    'Tailored Touch - 1



    'I open the call promptly and set the scene. (opening within 5sec)

    If Trim(shForm.Range("J34").Value) = "" Or (Trim(shForm.Range("J34").Value) <> "Yes" _
    And Trim(shForm.Range("J34").Value) <> "No" And Trim(shForm.Range("J34").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 1"
        Range("J34").Select
        CheckEntry = False
        Exit Function

    End If

    'I don't leave the customer on hold for long (transfer or during conversation). (Hold no longer than 2mins)

    If Trim(shForm.Range("J35").Value) = "" Or (Trim(shForm.Range("J35").Value) <> "Yes" _
    And Trim(shForm.Range("J35").Value) <> "No" And Trim(shForm.Range("J35").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 2"
        Range("J35").Select
        CheckEntry = False
        Exit Function

    End If
    
    'I'm polite and confident.

    If Trim(shForm.Range("J36").Value) = "" Or (Trim(shForm.Range("J36").Value) <> "Yes" _
    And Trim(shForm.Range("J36").Value) <> "No" And Trim(shForm.Range("J36").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 3"
        Range("J36").Select
        CheckEntry = False
        Exit Function

    End If
    
    'Language is professional & positive.

    If Trim(shForm.Range("J37").Value) = "" Or (Trim(shForm.Range("J37").Value) <> "Yes" _
    And Trim(shForm.Range("J37").Value) <> "No" And Trim(shForm.Range("J37").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 4"
        Range("J37").Select
        CheckEntry = False
        Exit Function

    End If

    'My sentences are clear and I tailor / personalise it for my customers needs.

    If Trim(shForm.Range("J38").Value) = "" Or (Trim(shForm.Range("J38").Value) <> "Yes" _
    And Trim(shForm.Range("J38").Value) <> "No" And Trim(shForm.Range("J38").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Tailored Touch - Parameter 5"
        Range("J38").Select
        CheckEntry = False
        Exit Function

    End If


    'Connect -2

    'I involve my customer in the conversation and allowed them time to speak. ( 2 way communication) ?

    If Trim(shForm.Range("J42").Value) = "" Or (Trim(shForm.Range("J42").Value) <> "Yes" _
    And Trim(shForm.Range("J42").Value) <> "No" And Trim(shForm.Range("J42").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 1 "
        Range("J41").Select
        CheckEntry = False
        Exit Function

    End If

    'I'm calm, respectful and optimistic, even when the going gets tough. (Be patient even if customer is shouting)

    If Trim(shForm.Range("J43").Value) = "" Or (Trim(shForm.Range("J43").Value) <> "Yes" _
    And Trim(shForm.Range("J43").Value) <> "No" And Trim(shForm.Range("J43").Value) <> "N/A") Then


        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 2"
        Range("J43").Select
        CheckEntry = False
        Exit Function

    End If

    'My customer doesn't need to repeat what they've told me.

    If Trim(shForm.Range("J44").Value) = "" Or (Trim(shForm.Range("J44").Value) <> "Yes" _
    And Trim(shForm.Range("J44").Value) <> "No" And Trim(shForm.Range("J44").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 3"
        Range("J44").Select
        CheckEntry = False
        Exit Function

    End If

    'I show empathy and I apologise (if appropriate).

    If Trim(shForm.Range("J45").Value) = "" Or (Trim(shForm.Range("J45").Value) <> "Yes" _
    And Trim(shForm.Range("J45").Value) <> "No" And Trim(shForm.Range("J45").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 4"
        Range("J45").Select
        CheckEntry = False
        Exit Function

    End If
    
    'I make friends with my customer by building a connection with them and avoiding long silences; they know I care!

    If Trim(shForm.Range("J46").Value) = "" Or (Trim(shForm.Range("J46").Value) <> "Yes" _
    And Trim(shForm.Range("J46").Value) <> "No" And Trim(shForm.Range("J46").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Connect - Parameter 5"
        Range("J46").Select
        CheckEntry = False
        Exit Function

    End If
    

    'Discover - 3


    'I summarise to confirm I got the issue(s).

    If Trim(shForm.Range("J50").Value) = "" Or (Trim(shForm.Range("J50").Value) <> "Yes" _
    And Trim(shForm.Range("J50").Value) <> "No" And Trim(shForm.Range("J50").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 1"
        Range("J50").Select
        CheckEntry = False
        Exit Function

    End If

    'I use effective questioning to understand all issues and I don't make assumptions. I got to the bottom of it (where possible).

    If Trim(shForm.Range("J51").Value) = "" Or (Trim(shForm.Range("J51").Value) <> "Yes" _
    And Trim(shForm.Range("J51").Value) <> "No" And Trim(shForm.Range("J51").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 2"
        Range("J51").Select
        CheckEntry = False
        Exit Function

    End If

    'I use the systems effectively to find things out for myself.

    If Trim(shForm.Range("J52").Value) = "" Or (Trim(shForm.Range("J52").Value) <> "Yes" _
    And Trim(shForm.Range("J52").Value) <> "No" And Trim(shForm.Range("J52").Value) <> "N/A") Then
        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 3"
        Range("J52").Select
        CheckEntry = False
        Exit Function

    End If

    'I show good knowledge of Kotak Security processes, products and services.

    If Trim(shForm.Range("J53").Value) = "" Or (Trim(shForm.Range("J53").Value) <> "Yes" _
    And Trim(shForm.Range("J53").Value) <> "No" And Trim(shForm.Range("J53").Value) <> "N/A") Then
        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Discover - Parameter 4"
        Range("J53").Select
        CheckEntry = False
        Exit Function

    End If

    'Propose and Commit - 4

    'I try other solutions if the first offer doesn't fit and whenever possible, I provide a digital solution offered by Kotak Securities

    If Trim(shForm.Range("J57").Value) = "" Or (Trim(shForm.Range("J57").Value) <> "Yes" _
    And Trim(shForm.Range("J57").Value) <> "No" And Trim(shForm.Range("J57").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 1"
        Range("J57").Select
        CheckEntry = False
        Exit Function

    End If

    'I've given solutions that are the best for my customer and company.

    If Trim(shForm.Range("J58").Value) = "" Or (Trim(shForm.Range("J58").Value) <> "Yes" _
    And Trim(shForm.Range("J58").Value) <> "No" And Trim(shForm.Range("J58").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 2"
        Range("J58").Select
        CheckEntry = False
        Exit Function

    End If
    
    'I explain the reasons behind our decisions / solutions; making my customer feel special and WOWing them when delivering the resolution(s).

    If Trim(shForm.Range("J59").Value) = "" Or (Trim(shForm.Range("J59").Value) <> "Yes" _
    And Trim(shForm.Range("J59").Value) <> "No" And Trim(shForm.Range("J59").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 3"
        Range("J59").Select
        CheckEntry = False
        Exit Function

    End If
    
    'I own it. My customer got all the information they need to get the situation resolved.

    If Trim(shForm.Range("J60").Value) = "" Or (Trim(shForm.Range("J60").Value) <> "Yes" _
    And Trim(shForm.Range("J60").Value) <> "No" And Trim(shForm.Range("J60").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Propose and Commit - Parameter 4"
        Range("J60").Select
        CheckEntry = False
        Exit Function

    End If


    'Lasting Impression - 5
    'I've made sure my customer understands what Kotak Securities have done for them and what's next.

    If Trim(shForm.Range("J64").Value) = "" Or (Trim(shForm.Range("J64").Value) <> "Yes" _
    And Trim(shForm.Range("J64").Value) <> "No" And Trim(shForm.Range("J64").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Lasting Impression - Parameter 1 "
        Range("J64").Select
        CheckEntry = False
        Exit Function

    End If

    'I've offered the customer further support and checked they're happy and my customer has left with a smile

    If Trim(shForm.Range("J65").Value) = "" Or (Trim(shForm.Range("J65").Value) <> "Yes" _
    And Trim(shForm.Range("J65").Value) <> "No" And Trim(shForm.Range("J65").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Lasting Impression - Parameter 2 "
        Range("J65").Select
        CheckEntry = False
        Exit Function

    End If
    
    
    'Notes - 6
    'Add specific information which was discussed on call so the next advisor managing the call can get a clear gist of the conversation.

    If Trim(shForm.Range("J69").Value) = "" Or (Trim(shForm.Range("J69").Value) <> "Yes" _
    And Trim(shForm.Range("J69").Value) <> "No" And Trim(shForm.Range("J69").Value) <> "N/A") Then

        MsgBox "Audit Result can't be Blank/Invalid. Please select from Drop Down.", vbOKOnly + vbInformation, "Notes - Parameter 1 "
        Range("J69").Select
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

    .Cells(iRow, 4).Value = shForm.Range("H9").Value 'Query ID
    .Cells(iRow, 5).Value = shForm.Range("H9").Value 'Client Code
    .Cells(iRow, 6).Value = shForm.Range("H10").Value 'Call Date
    .Cells(iRow, 7).Value = shForm.Range("H11").Value 'Transaction ID

    
    .Cells(iRow, 8).Value = shForm.Range("L9").Value 'Auditor's Name
    .Cells(iRow, 9).Value = shForm.Range("L10").Value 'Audit Date
    .Cells(iRow, 10).Value = shForm.Range("L11").Value 'Feedback Shared

    ' Audit Score Summary
    
    .Cells(iRow, 11).Value = shForm.Range("F26").Value 'Overall Appliable Points
    .Cells(iRow, 12).Value = shForm.Range("H26").Value 'Overall Earned Points
    .Cells(iRow, 13).Value = shForm.Range("J26").Value 'Overall Score

    

    'Tailored Touch -1

    .Cells(iRow, 14).Value = shForm.Range("J34").Value 'I open the call promptly and set the scene. (opening within 5sec)- Audit Result
    .Cells(iRow, 15).Value = shForm.Range("N34").Value 'I open the call promptly and set the scene. (opening within 5sec) - Applicable Points
    .Cells(iRow, 16).Value = shForm.Range("O34").Value 'I open the call promptly and set the scene. (opening within 5sec) - Earned Points
    .Cells(iRow, 17).Value = shForm.Range("L34").Value 'I open the call promptly and set the scene. (opening within 5sec) - Comment


    .Cells(iRow, 18).Value = shForm.Range("J35").Value 'I don't leave the customer on hold for long (transfer or during conversation). (Hold no longer than 2mins) - Audit Result
    .Cells(iRow, 19).Value = shForm.Range("N35").Value 'I don't leave the customer on hold for long (transfer or during conversation). (Hold no longer than 2mins) - Applicable Points
    .Cells(iRow, 20).Value = shForm.Range("O35").Value 'I don't leave the customer on hold for long (transfer or during conversation). (Hold no longer than 2mins) - Earned Points
    .Cells(iRow, 21).Value = shForm.Range("L35").Value 'I don't leave the customer on hold for long (transfer or during conversation). (Hold no longer than 2mins) - Comment

    .Cells(iRow, 22).Value = shForm.Range("J36").Value 'I'm polite and confident.  - Audit Result
    .Cells(iRow, 23).Value = shForm.Range("N36").Value 'I'm polite and confident.  - Applicable Points
    .Cells(iRow, 24).Value = shForm.Range("O36").Value 'I'm polite and confident.  - Earned Points
    .Cells(iRow, 25).Value = shForm.Range("L36").Value 'I'm polite and confident.  - Comment
    
    .Cells(iRow, 26).Value = shForm.Range("J37").Value 'Language is professional & positive. - Audit Result
    .Cells(iRow, 27).Value = shForm.Range("N37").Value 'Language is professional & positive. - Applicable Points
    .Cells(iRow, 28).Value = shForm.Range("O37").Value 'Language is professional & positive. - Earned Points
    .Cells(iRow, 29).Value = shForm.Range("L37").Value 'Language is professional & positive. - Comment
    
    .Cells(iRow, 30).Value = shForm.Range("J38").Value 'My sentences are clear and I tailor / personalise it for my customers needs. - Audit Result
    .Cells(iRow, 31).Value = shForm.Range("N38").Value 'My sentences are clear and I tailor / personalise it for my customers needs. - Applicable Points
    .Cells(iRow, 32).Value = shForm.Range("O38").Value 'My sentences are clear and I tailor / personalise it for my customers needs. - Earned Points
    .Cells(iRow, 33).Value = shForm.Range("L38").Value 'My sentences are clear and I tailor / personalise it for my customers needs. - Comment




   'Connect - 2

    .Cells(iRow, 34).Value = shForm.Range("J42").Value 'I involve my customer in the conversation and allowed them time to speak. ( 2 way communication) - Audit Result
    .Cells(iRow, 35).Value = shForm.Range("N42").Value 'I involve my customer in the conversation and allowed them time to speak. ( 2 way communication) - Applicable Points
    .Cells(iRow, 36).Value = shForm.Range("O42").Value 'I involve my customer in the conversation and allowed them time to speak. ( 2 way communication) - Earned Points
    .Cells(iRow, 37).Value = shForm.Range("L42").Value 'I involve my customer in the conversation and allowed them time to speak. ( 2 way communication) - Comment


    .Cells(iRow, 38).Value = shForm.Range("J43").Value 'I'm calm, respectful and optimistic, even when the going gets tough. (Be patient even if customer is shouting) - Audit Result
    .Cells(iRow, 39).Value = shForm.Range("N43").Value 'I'm calm, respectful and optimistic, even when the going gets tough. (Be patient even if customer is shouting) - Applicable Points
    .Cells(iRow, 40).Value = shForm.Range("O43").Value 'I'm calm, respectful and optimistic, even when the going gets tough. (Be patient even if customer is shouting) - Earned Points
    .Cells(iRow, 41).Value = shForm.Range("L43").Value 'I'm calm, respectful and optimistic, even when the going gets tough. (Be patient even if customer is shouting) - Comment

    .Cells(iRow, 42).Value = shForm.Range("J44").Value 'My customer doesn't need to repeat what they've told me. - Audit Result
    .Cells(iRow, 43).Value = shForm.Range("N44").Value 'My customer doesn't need to repeat what they've told me. - Applicable Points
    .Cells(iRow, 44).Value = shForm.Range("O44").Value 'My customer doesn't need to repeat what they've told me. - Earned Points
    .Cells(iRow, 45).Value = shForm.Range("L44").Value 'My customer doesn't need to repeat what they've told me. - Comment

    .Cells(iRow, 46).Value = shForm.Range("J45").Value 'I show empathy and I apologise (if appropriate).  - Audit Result
    .Cells(iRow, 47).Value = shForm.Range("N45").Value 'I show empathy and I apologise (if appropriate).  - Applicable Points
    .Cells(iRow, 48).Value = shForm.Range("O45").Value 'I show empathy and I apologise (if appropriate).  - Earned Points
    .Cells(iRow, 49).Value = shForm.Range("L45").Value 'I show empathy and I apologise (if appropriate).  - Comment

    .Cells(iRow, 50).Value = shForm.Range("J46").Value 'I make friends with my customer by building a connection with them and avoiding long silences; they know I care! - Audit Result
    .Cells(iRow, 51).Value = shForm.Range("N46").Value 'I make friends with my customer by building a connection with them and avoiding long silences; they know I care! - Applicable Points
    .Cells(iRow, 52).Value = shForm.Range("O46").Value 'I make friends with my customer by building a connection with them and avoiding long silences; they know I care! - Earned Points
    .Cells(iRow, 53).Value = shForm.Range("L46").Value 'I make friends with my customer by building a connection with them and avoiding long silences; they know I care! - Comment


    'Discover - 3


    .Cells(iRow, 54).Value = shForm.Range("J50").Value 'I summarise to confirm I got the issue(s).- Audit Result
    .Cells(iRow, 55).Value = shForm.Range("N50").Value 'I summarise to confirm I got the issue(s). - Applicable Points
    .Cells(iRow, 56).Value = shForm.Range("O50").Value 'I summarise to confirm I got the issue(s). - Earned Points
    .Cells(iRow, 57).Value = shForm.Range("L50").Value 'I summarise to confirm I got the issue(s). - Comment

    .Cells(iRow, 58).Value = shForm.Range("J51").Value 'I use effective questioning to understand all issues and I don't make assumptions. I got to the bottom of it (where possible). - Audit Result
    .Cells(iRow, 59).Value = shForm.Range("N51").Value 'I use effective questioning to understand all issues and I don't make assumptions. I got to the bottom of it (where possible). - Applicable Points
    .Cells(iRow, 60).Value = shForm.Range("O51").Value 'I use effective questioning to understand all issues and I don't make assumptions. I got to the bottom of it (where possible). - Earned Points
    .Cells(iRow, 61).Value = shForm.Range("L51").Value 'I use effective questioning to understand all issues and I don't make assumptions. I got to the bottom of it (where possible). - Comment

    .Cells(iRow, 62).Value = shForm.Range("J52").Value 'I use the systems effectively to find things out for myself.  - Audit Result
    .Cells(iRow, 63).Value = shForm.Range("N52").Value 'I use the systems effectively to find things out for myself.  - Applicable Points
    .Cells(iRow, 64).Value = shForm.Range("O52").Value 'I use the systems effectively to find things out for myself.  - Earned Points
    .Cells(iRow, 65).Value = shForm.Range("L52").Value 'I use the systems effectively to find things out for myself.  - Comment

    .Cells(iRow, 66).Value = shForm.Range("J53").Value 'I show good knowledge of Kotak Security processes, products and services.  - Audit Result
    .Cells(iRow, 67).Value = shForm.Range("N53").Value 'I show good knowledge of Kotak Security processes, products and services.  - Applicable Points
    .Cells(iRow, 68).Value = shForm.Range("O53").Value 'I show good knowledge of Kotak Security processes, products and services.  - Earned Points
    .Cells(iRow, 69).Value = shForm.Range("L53").Value 'I show good knowledge of Kotak Security processes, products and services.  - Comment
    
    'Propose and Commit - 4

    .Cells(iRow, 70).Value = shForm.Range("J57").Value 'I try other solutions if the first offer doesn't fit and whenever possible, I provide a digital solution offered by Kotak Securities - Audit Result
    .Cells(iRow, 71).Value = shForm.Range("N57").Value 'I try other solutions if the first offer doesn't fit and whenever possible, I provide a digital solution offered by Kotak Securities - Applicable Points
    .Cells(iRow, 72).Value = shForm.Range("O57").Value 'I try other solutions if the first offer doesn't fit and whenever possible, I provide a digital solution offered by Kotak Securities - Earned Points
    .Cells(iRow, 73).Value = shForm.Range("L57").Value 'I try other solutions if the first offer doesn't fit and whenever possible, I provide a digital solution offered by Kotak Securities - Comment

    .Cells(iRow, 74).Value = shForm.Range("J58").Value 'I've given solutions that are the best for my customer and company. - Audit Result
    .Cells(iRow, 75).Value = shForm.Range("N58").Value 'I've given solutions that are the best for my customer and company. - Applicable Points
    .Cells(iRow, 76).Value = shForm.Range("O58").Value 'I've given solutions that are the best for my customer and company. - Earned Points
    .Cells(iRow, 77).Value = shForm.Range("L58").Value 'I've given solutions that are the best for my customer and company. - Comment

    .Cells(iRow, 78).Value = shForm.Range("J59").Value 'I explain the reasons behind our decisions / solutions; making my customer feel special and WOWing them when delivering the resolution(s). - Audit Result
    .Cells(iRow, 79).Value = shForm.Range("N59").Value 'I explain the reasons behind our decisions / solutions; making my customer feel special and WOWing them when delivering the resolution(s). - Applicable Points
    .Cells(iRow, 80).Value = shForm.Range("O59").Value 'I explain the reasons behind our decisions / solutions; making my customer feel special and WOWing them when delivering the resolution(s). - Earned Points
    .Cells(iRow, 81).Value = shForm.Range("L59").Value 'I explain the reasons behind our decisions / solutions; making my customer feel special and WOWing them when delivering the resolution(s). - Comment

    .Cells(iRow, 82).Value = shForm.Range("J60").Value 'I own it. My customer got all the information they need to get the situation resolved. - Audit Result
    .Cells(iRow, 83).Value = shForm.Range("N60").Value 'I own it. My customer got all the information they need to get the situation resolved. - Applicable Points
    .Cells(iRow, 84).Value = shForm.Range("O60").Value 'I own it. My customer got all the information they need to get the situation resolved. - Earned Points
    .Cells(iRow, 85).Value = shForm.Range("L60").Value 'I own it. My customer got all the information they need to get the situation resolved. - Comment


    'Lasting Impression - 5

    .Cells(iRow, 86).Value = shForm.Range("J64").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Audit Result
    .Cells(iRow, 87).Value = shForm.Range("N64").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Applicable Points
    .Cells(iRow, 88).Value = shForm.Range("O64").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Earned Points
    .Cells(iRow, 89).Value = shForm.Range("L64").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Comment

    .Cells(iRow, 90).Value = shForm.Range("J65").Value 'I've offered the customer further support and checked they're happy and my customer has left with a smile - Audit Result
    .Cells(iRow, 91).Value = shForm.Range("N65").Value 'I've offered the customer further support and checked they're happy and my customer has left with a smile - Applicable Points
    .Cells(iRow, 92).Value = shForm.Range("O65").Value 'I've offered the customer further support and checked they're happy and my customer has left with a smile - Earned Points
    .Cells(iRow, 93).Value = shForm.Range("L65").Value 'I've offered the customer further support and checked they're happy and my customer has left with a smile - Comment
    
    'Notes - 6

    .Cells(iRow, 94).Value = shForm.Range("J69").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Audit Result
    .Cells(iRow, 95).Value = shForm.Range("N69").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Applicable Points
    .Cells(iRow, 96).Value = shForm.Range("O69").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Earned Points
    .Cells(iRow, 97).Value = shForm.Range("L69").Value 'I've made sure my customer understands what Kotak Securities have done for them and what's next. - Comment
    
    'Compliance - 7
    
    .Cells(iRow, 98).Value = shForm.Range("B85").Value 'I've given solutions that are the best for my customer and company. - Compliance
    .Cells(iRow, 99).Value = shForm.Range("B86").Value 'I've given solutions that are the best for my customer and company. - Parameter
    .Cells(iRow, 100).Value = shForm.Range("B87").Value 'I've given solutions that are the best for my customer and company. - Definition
    .Cells(iRow, 101).Value = shForm.Range("B88").Value 'I've given solutions that are the best for my customer and company. - Comment
    
    
    'Additional Insight - 8
    
    .Cells(iRow, 102).Value = shForm.Range("H93").Value 'Commms
    .Cells(iRow, 103).Value = shForm.Range("H94").Value 'Customer type
    .Cells(iRow, 104).Value = shForm.Range("H95").Value 'Incase of FTR, has the customer come back with same query?
    

    'Others - 9
    .Cells(iRow, 105).Value = shForm.Range("L11").Value 'Feedback Shared Yes/No
    .Cells(iRow, 106).Value = shForm.Range("B75").Value 'Feedback/Remarks
    .Cells(iRow, 107).Value = Application.UserName 'Updated By
    .Cells(iRow, 108).Value = [Now()] 'Updated Date
    

    .Range("A2").Select
    
    End With


End Sub


