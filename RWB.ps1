$PSNativeCommandArgumentPassing = "Legacy"

& "C:\Program Files (x86)\WinSCP\WinSCP.com" `
  /log="C:\writable\path\to\log\WinSCP.log" /ini=nul `
  /command `
    "open sftp://SA253:HIDDEN@transport.ochin.org/ -hostkey=`"`"ssh-ed25519 255 HIDDEN HASH`"`"" `
    "cd /SA253/PHI" `
    "lcd S:\OCHIN" `
    "get -neweronly RWB" `
    "exit"

$winscpResult = $LastExitCode
if ($winscpResult -eq 0)
{
  Write-Host "Success"
}
else
{
  Write-Host "Error"
}

exit $winscpResult
