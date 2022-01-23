Titre = "What would you like to do ?"
message = "What would you like to do ?"&vbcr&vbcr&_
"1 - Launch Chrome "&vbcr&_
"2 - Killing Process Not Needed "&vbcr&_
"3 - Launch An Program"&vbcr&_
"4 - Start Windows Update"
Default ="1"
Question = InputBox(message,Titre,Default)
Select Case Question 
Case 1 Run(1)
Case 2 Run(2)
Case 3 Run(3)
Case 4 Run(4)
end Select

Sub Run(var)
Set WS = CreateObject("WScript.shell")
        Select Case var
        Case 1 WS.run("chrome.exe")
        Case 2 ProcessNotNeeded()
        Case 3 LaunchApplication()
        Case 4 WindowsUpdate()
End select
End Sub 

Sub Kill(Process)
Set Ws = CreateObject("Wscript.Shell")
Command = "cmd /c Taskkill /F /IM "&Process&""
Execution = Ws.Run(Command,0,False)
End Sub

Sub ProcessNotNeeded()
Titre = "Killing Process Not Needed"
message = "Type the Name of the process to be killed by this script"&vbcr&_
"Example To Kill The Internet Explorer Process You should type"&vbcr&_
"chrome.exe"
Default ="chrome.exe"
Question = InputBox(message,Titre,Default)
Kill(Question)
End Sub

Function CmdPrompt(sCmd)
Dim sCmdLine,oWS,nRes
set oWS = CreateObject("Wscript.Shell")
sCmdLine = "cmd /c Start " & sCmd & ""
nRes = oWS.Run(sCmdLine,0,False)
CmdPrompt = nRes
End Function

Sub LaunchApplication()
Titre = "Launching an Application"
message = "Type the Name of the process to be Lanuched by this script"&vbcr&_
"Example To Launch The Word Application You should type"&vbcr&_
"Winword.exe"
Default ="Winword.exe"
Question = InputBox(message,Titre,Default)
CmdPrompt(Question)
End Sub

Sub WindowsUpdate()
Title = "Checking for Windows updates"
Msg = "Looking for a list of updates, So be Patient Thank you !"
Wait = "5" 'waiting 5 secondes to close the popup
Set Ws = CreateObject("Wscript.Shell")
ws.Popup Msg,wait,Title,64
Set fso = CreateObject("Scripting.FileSystemObject")
set ts = fso.CreateTextFile("C:\ListWindowsUpdate.txt",2,TRUE)
Set updateSession = CreateObject("Microsoft.Update.Session")
Set updateSearcher = updateSession.CreateupdateSearcher()        
Set searchResult = updateSearcher.Search("IsInstalled=0 and Type='Software'")
x=0
If searchResult.Updates.Count <> 0 Then 'If updates were found
    'so with this loop shows how you can list the title of each update that was found.
    For i = 0 To searchResult.Updates.Count - 1
        x=x+1
        Set update = searchResult.Updates.Item(i)
        Mess = Mess & Update.Title & Vbcr
    Next
    ts.write "le Nombre de mise à jour est " & x & vbcr & Mess
    MsgBox "le Nombre de mise à jour est " & x & vbcr & Mess,64,Title
    ws.run "Notepad C:\ListWindowsUpdate.txt",1,False
End If
Ws.Run "wuauclt.exe /reportnow /detectnow",1,False
End Sub