while($true) {

    Write-host 
    "Bitte starten Sie das Programm als Administrator!
    1.Rechte
    2.Prozesse
    3.IP Konfiguration
    4.Logins
    5.Security Logs
    "
    $Eingabe=read-host -prompt "Bitte eine Zahl eingeben"

    if ($Eingabe -eq '1') {
    set-ExecutionPolicy RemoteSigned
    }
    
        elseif ($Eingabe -eq '2') { 
           Get-Process
        }

        elseif ($Eingabe -eq '3') {
            Get-NetIPConfiguration
        }
    
        elseif ($Eingabe -eq '4') {
       Get-EventLog security | Where-Object {$_.TimeGenerated -gt '9/15/16'} | Where-Object {($_.InstanceID -eq 4634) -or ($_.InstanceID -eq 4624)} | Select-Object TimeGenerated,InstanceID,Message | Out-File -FilePath "c:\Logins.txt"
        
        }

        elseif ($Eingabe -eq '5') {
        Get-EventLog Security -Newest 1000
        write-host "Aktiviert"
        pause
        }

        elseif ($Eingabe -eq '6') {
    
        }
    
    else {
        write-host 'Die Eingabe ist keine Zahl zwischen 1 und 4' -foregroundcolor red
    }
}
