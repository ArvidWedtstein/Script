param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}


function Get-Temperature {
    $t = Get-CimInstance MSAcpi_ThermalZoneTemperature -Namespace "root/wmi"
    
    $fans = Get-CimInstance -ClassName Win32_Fan -Property *
    $returntemp = @()
    $t
    foreach ($temp in $t.CurrentTemperature)
    {
        $currentTempKelvin = $temp / 10
        $currentTempCelsius = $currentTempKelvin - 273.15


        $returntemp += $currentTempCelsius.ToString()

    }
    $ComputerName="localhost"
    $supportedModels= "NVIDIA NVS 290","NVIDIA NVS 295","NVIDIA NVS 300","NVIDIA NVS 310","NVIDIA NVS 315","NVIDIA NVS 420","NVIDIA NVS 450","NVIDIA NVS 510","NVIDIA Quadro NVS 450"


    $video_card_name=(gwmi win32_videocontroller -ComputerName $ComputerName)|select-object -expand name
    write-host $video_card_name

    If($supportedModels|?{$video_card_name -match $_})
    {
        gwmi -ComputerName $ComputerName -Namespace root\CIMV2\NV gpu|select-object name,percent*


        $namespace = "root\CIMV2\NV"
        $classname = "ThermalProbe"
        $probes =Get-WmiObject -class $classname -computername $ComputerName -namespace $namespace
        # print all ThermalProbe instances
        write-host "Temp: $probes"
        # iterate through all Probe instances
        foreach( $probe in $probes )
        {
            #"Call the info() method and print all the data"
            $res = $probe.InvokeMethod("info",$Null)
            write-host "Temp: $res"
            #"Query just the temperature"
            $temp = $probe.temperature
            write-host "Temp: $temp"
            #$temp
        }
    }
    return $returntemp, $temp
}
get-temperature

