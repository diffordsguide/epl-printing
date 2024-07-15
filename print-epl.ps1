Write-Host "Welcome to the DPD Printer!"

$eplFile=$args[0]

write-host "Printing $eplFile, please wait..."

cmd.exe /c COPY /B $eplFile \\127.0.0.1\DPD

# removed & and handler redirects, these no longer work in Windows 11
#& cmd.exe /c COPY /B $eplFile \\127.0.0.1\DPD 2`>`&1

Write-Host "Deleting temp file $eplFile"
rm $eplFile

Write-Host "Done, you can now close this window."
