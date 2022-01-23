Option Explicit

Dim arrCaps, strMsg, strProc
Dim blnExitWord, blnExitWP
Dim colItems, objItem, objWMIService

strMsg = ""

' Check for command line arguments (none required)
If WScript.Arguments.Count > 0 Then
	Syntax
End If

' Check if MSWord and/or WordPerfect are already active by
' searching for processes named WINWORD.EXE or WPWIN**.EXE
blnExitWP   = True
blnExitWord = True
Set objWMIService = GetObject( "winmgmts://./root/cimv2" )
Set colItems = objWMIService.ExecQuery( "SELECT * FROM Win32_Process", , 48 )
For Each objItem In colItems
	strProc = UCase( objItem.Name )
	If Len( strProc ) > 11 Then Exit For
	If Left( strProc, 5 ) = "WPWIN" And Right( strProc, 4 ) = ".EXE" Then
		blnExitWP = False
	End If
	If strProc = "WINWORD.EXE" Then
		blnExitWord = False
	End If
Next
Set objWMIService = Nothing

' Start with WordPerfect only if it is
' active already, otherwise try MSWord first
If blnExitWord = False And blnExitWP = True Then
	arrCaps = CapsLockWP( )
	If arrCaps(1) Then
		arrCaps = CapsLockWord( )
		If arrCaps(1) Then
			WScript.Echo strMsg & "Unable to read CapsLock status"
			WScript.Quit
		End If
	End If
Else
	arrCaps = CapsLockWord( )
	If arrCaps(1) Then
		arrCaps = CapsLockWP( )
		If arrCaps(1) Then
			WScript.Echo strMsg & "Unable to read CapsLock status"
			WScript.Quit
		End If
	End If
End If

If arrCaps(0) Then
	WScript.Echo strMsg & "CapsLock is ON"
Else
	WScript.Echo strMsg & "CapsLock is OFF"
End If


Function CapsLockWord( )
	Dim objWord, blnCapsLock, blnError
	On Error Resume Next
	Set objWord = CreateObject( "Word.Application" )
	If Err Then
		blnCapsLock = False
		blnError    = True
	Else
		blnCapsLock = CBool( objWord.CapsLock )
		blnError    = False
		If blnExitWord Then
			objWord.Quit
		End If
	End If
	On Error Goto 0
	CapsLockWord = Array( blnCapsLock, blnError )
End Function


Function CapsLockWP( )
	Dim objWP, blnCapsLock, blnError
	On Error Resume Next
	Set objWP = CreateObject( "WordPerfect.PerfectScript" )
	If Err Then
		blnCapsLock = False
		blnError    = True
	Else
		blnCapsLock = CBool( objWP.envKeyCapsLock )
		blnError    = False
		If blnExitWP Then
			objWP.ExitWordPerfect
		End If
	End If
	On Error Goto 0
	CapsLockWP = Array( blnCapsLock, blnError )
End Function


Sub Syntax( )
	strMsg = "CapsLock.vbs,  Version 1.01" _
	       & vbCrLf _
	       & "Display CapsLock status using MS Word or WordPerfect" _
	       & vbCrLf & vbCrLf _
	       & "Usage:  CAPSLOCK.VBS" _
	       & vbCrLf & vbCrLf _
	       & "Note:   This script will first check if WordPerfect is active." _
	       & vbCrLf _
	       & "        If so, it will use WordPerfect to read the CapsLock status." _
	       & vbCrLf _
	       & "        Otherwise it will try using MS Word, and if it fails try" _
	       & vbCrLf _
	       & "        again using WordPerfect." _
	       & vbCrLf _
	       & "        It won't close MS Word nor WordPerfect if they were active" _
	       & vbCrLf _
	       & "        at the time the script was started." _
	       & vbCrLf & vbCrLf _
	       & "Written by Rob van der Woude" & vbCrLf _
	       & "http://www.robvanderwoude.com" _
	       & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf
End Sub
