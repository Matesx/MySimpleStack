gitdir = "C:\Program Files\Git"
bashfile = "configureIntelliJ13_lecteurZ.bash"

'============================================
Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

Const TemporaryFolder = 2
linkfile = fso.BuildPath(fso.GetSpecialFolder(TemporaryFolder), "Configure IntelliJ at UPS.lnk")
curdir = fso.GetParentFolderName(WScript.ScriptFullName)
' bashfilepath = fso.GetAbsolutePathName(...)

' Dynamically create a shortcut with the current directory as the working directory.
Set link = shell.CreateShortcut(linkfile)
' link.TargetPath = fso.BuildPath(gitdir, "bin\sh.exe")
' link.Arguments = "--login -i"
link.TargetPath = fso.BuildPath(gitdir, "bin\bash.exe")
link.Arguments = "--login -i " & fso.BuildPath(curdir, bashfile)

link.IconLocation = fso.BuildPath(gitdir, "etc\git.ico")
If WScript.Arguments.Length > 0 Then link.WorkingDirectory = WScript.Arguments(0)
link.Save

Set app = CreateObject("Shell.Application")
app.ShellExecute linkfile

