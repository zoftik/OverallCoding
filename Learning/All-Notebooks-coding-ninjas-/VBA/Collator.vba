Sub CollateData()
Application.ScreenUpdating = False
Dim MyFSO As New FileSystemObject ‘Declaring and Initializing FSO
Dim wkbSource As Workbook ‘ Workbook
Dim iSourceRow As Long 'To store the last row number available in source file
Dim iRow As Long 'To store the last blank row available in collated sheet before pasting data
Dim iTotalRow As Long 'To store the last non-blank row available in collated sheet after pasting data
Dim sPath As String 'To store the folder path
Dim SourceFolder As Folder 'Folder Variable for FSO
Dim MyFile As File 'File Variable for FSO
Dim FileName As String 'To store the File Name only

Dim iTotalFiles As Long     'To store the count of all excel files available in Selected Folder
Dim DialogBox As FileDialog   'File Dialog to select the folder name
Set DialogBox = Application.FileDialog(msoFileDialogFolderPicker) 'Assigning FolderPicker Dialog Box
'Code to open the Dialog Box and select a folder
With DialogBox
    .Title = "Select a Folder"
    .AllowMultiSelect = False
    .InitialFileName = Application.DefaultFilePath
    If .Show <> -1 Then Exit Sub  'no folder selected
    sPath = .SelectedItems(1)
End With
    'Check whether selected folder exist or not
If Not MyFSO.FolderExists(sPath) Then
    MsgBox "Folder is not available.", vbOKOnly + vbCritical, "Error!"
    Exit Sub
End If

Set SourceFolder = MyFSO.GetFolder(sPath)
'Get the count of all excel file available in selected folder
iTotalFiles = 0
For Each MyFile In SourceFolder.Files
    If MyFSO.GetExtensionName(MyFile) = "xlsx" Then
        iTotalFiles = iTotalFiles + 1
    End If
Next MyFile
'Terminate the code if there is no excel file in selected folder
If iTotalFiles = 0 Then
    MsgBox "No Excel file available.", vbOKOnly + vbCritical, "Error!"
    Application.ScreenUpdating = True
    Exit Sub
End If
'Code to compile all files
For Each MyFile In SourceFolder.Files
    If MyFSO.GetExtensionName(MyFile) = "xlsx" Then
   'Code to find the last blank row number before pasting the data
       iRow = ThisWorkbook.Sheets("Collated Data").Range("B" & Rows.Count).End(xlUp).Row + 1
       'extracting the file name from MyFile
       FileName = MyFSO.GetFileName(MyFile)
       'Opening the source file in readonly mode
       Set wkbSource = Workbooks.Open(FileName:=MyFile, ReadOnly:=True)
       'Code to find the last non-blank row number in source file before copying the data
       iSourceRow = wkbSource.Sheets("Data").Range("A" & Rows.Count).End(xlUp).Row
       'If there is no data in the current file then move to next file and ignore it
       If iSourceRow = 1 Then GoTo NextLoop
       'Code to Copy the data
       wkbSource.Sheets("Data").Range("A2:K" & iSourceRow).Copy
       'Code to paste the data
       ThisWorkbook.Sheets("Collated Data").Range("B" & iRow).PasteSpecial Paste:=xlPasteValues
       Application.CutCopyMode = False
       'Code to find the last non-blank row number after pasting the data
       iTotalRow = ThisWorkbook.Sheets("Collated Data").Range("B" & Rows.Count).End(xlUp).Row
       'Code to update the file name
       ThisWorkbook.Sheets("Collated Data").Range("A" & iRow & ":A" & iTotalRow).Value = FileName
NextLoop:
wkbSource.Close savechanges:=False
Set wkbSource = Nothing
End If
Next MyFile
MsgBox "Data have been collated. Thanks for using this tool!", vbOKOnly + vbInformation, "Done"
Application.ScreenUpdating = True
End Sub
