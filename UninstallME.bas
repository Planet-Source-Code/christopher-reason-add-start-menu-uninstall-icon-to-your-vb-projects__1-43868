Attribute VB_Name = "UninstallME"
Option Explicit

Sub Main()
  'open the Add/Remove Programs window
  Shell "rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl,,1"
  End
End Sub
