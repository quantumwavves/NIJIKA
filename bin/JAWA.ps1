#JAWA VERSION 1.0 by QuantumWavves
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$WINVERSION=(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName
function Test-Administrator  
{  
    [OutputType([bool])]
    param()
    process {
        [Security.Principal.WindowsPrincipal]$user = [Security.Principal.WindowsIdentity]::GetCurrent();
        return $user.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator);
    }
}
if(-not (Test-Administrator))
{
    Write-Error "This script must be executed as Administrator.";
    exit 1;
}
$ErrorActionPreference = "Stop";
function AOSD {
    if($WINVERSION -eq "Windows 10 Enterprise LTSC 2021"){W10LTSC2019_2021}
    if($WINVERSION -eq "Windows 10 Enterprise LTSC 2019"){W10LTSC2019_2021}
    if($WINVERSION -eq "Windows 10 Enterprise 2016 LTSB"){W10LTSB2016}
    if($WINVERSION -eq "Windows 10 Enterprise 2015 LTSB"){W10LTSB2015}
    if($WINVERSION -eq "Windows 10 Pro"){W10_11PRO}
    if($WINVERSION -eq "Windows 10 Home"){W10_11HOME}
    if($WINVERSION -eq "Windows 8.1 Pro"){W81PRO}
    if($WINVERSION -eq "Windows 8 Pro"){W8PRO}
}
function W10_11PRO {
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W10_11HOME {
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir" 
    cmd.exe /c "slmgr //B /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W10LTSC2019_2021 {
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W10LTSB2016 {
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W10LTSB2015 {
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W81PRO{
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
function W8PRO{
    cmd.exe /c "slmgr //B /skms kms.digiboy.ir"
    cmd.exe /c "slmgr //B /ipk NG4HW-VH26C-733KW-K6F98-J8CK4"
    cmd.exe /c "slmgr //B /ato"
    Write-Output " ----------------------"
    Write-Output "| Activation Completed |"
    Write-Output " ----------------------"
}
AOSD
