while($true) {

    Write-host 
    "Bitte starten Sie das Programm als Administrator!
    1.Rechte
    2.Prozesse
    3.IP Konfiguration
    5.Defender Deatkiviern 
    6.Defender aktivieren
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
        Set-MpPreference -DisableRealtimeMonitoring $true
        }

        elseif ($Eingabe -eq '5') {
        Set-MpPreference -DisableRealtimeMonitoring $false
        }

        elseif ($Eingabe -eq '6') {
    
        }
    
    else {
        write-host 'Die Eingabe ist keine Zahl zwischen 1 und 4' -foregroundcolor red
    }
}