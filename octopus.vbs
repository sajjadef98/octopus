Option Explicit

Dim objShell, objFSO, objExec, phpVersion, port, selectedExe
Dim phpPaths, phpMenu, userChoice, msg, title, location

' تنظیمات
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
location = objShell.CurrentDirectory
title = "Octopus PHP Launcher"

' مسیرهای مختلف PHP را تعریف کنید (افزایش دهید در صورت نیاز)
phpPaths = Array( _
    Array("PHP 7.4", location & "\php-7.4.33-Win32-vc15-x64\php.exe"), _
    Array("PHP 8.0", location & "\php-8.0.0-Win32-vs16-x64\php.exe"), _
    Array("PHP 8.1", location & "\php-8.1.0-Win32-vs16-x64\php.exe"), _
    Array("PHP 8.2", location & "\php-8.2.0-nts-Win32-vs16-x64\php.exe") _
)

' ساخت منو نسخه‌ها
phpMenu = "Choose PHP Version:" & vbCrLf
Dim i
For i = 0 To UBound(phpPaths)
    phpMenu = phpMenu & (i+1) & ". " & phpPaths(i)(0) & vbCrLf
Next

' دریافت انتخاب نسخه
userChoice = InputBox(phpMenu, title)
If userChoice = "" Then WScript.Quit

' بررسی عدد وارد شده
If Not IsNumeric(userChoice) Then
    MsgBox "Please enter a valid number.", vbExclamation, title
    WScript.Quit
End If

i = CInt(userChoice) - 1
If i < 0 Or i > UBound(phpPaths) Then
    MsgBox "Invalid selection.", vbCritical, title
    WScript.Quit
End If

selectedExe = phpPaths(i)(1)

If Not objFSO.FileExists(selectedExe) Then
    MsgBox "PHP executable not found: " & selectedExe, vbCritical, title
    WScript.Quit
End If

' دریافت پورت
port = InputBox("Enter port to run PHP server on:", title, "8000")
If port = "" Then WScript.Quit

If Not IsNumeric(port) Then
    MsgBox "Please enter a valid port number.", vbExclamation, title
    WScript.Quit
End If

' اجرای سرور PHP
msg = "Starting " & phpPaths(i)(0) & " on http://localhost:" & port & vbCrLf & vbCrLf & "Press OK to continue..."
MsgBox msg, vbInformation, title

Dim cmd
cmd = """" & selectedExe & """" & " -S localhost:" & port & " -t """ & location & """"

objShell.Run "cmd.exe /k color 0F & title Octopus - " & phpPaths(i)(0) & " & echo Starting PHP Server... & " & cmd, 1, False
