#JAWA VERSION 2.0 by QuantumWavves
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$WINVERSION=(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName
$totalSteps=3
$currentStep=1
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
function options {
    Write-Host "#######################################"
    Write-Host "#               JAWA 2.0              #"
    Write-Host "#     1: Set your own KMS server      #"
    Write-Host "#     2: Default (kms.digiboy.ir)     #"
    Write-Host "#                                     #"
    Write-Host "#######################################"
    Write-Host "                                       "
    $choise= Read-Host "Select option: "
    if($choise -eq "1"){
        $domain= Read-Host "Put your kms server: "
        Clear-Host
        AOSD
        }
    if($choise -eq "2"){AOSD}
}
function AOSD {
    Write-Progress -Activity "Detect windows version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($WINVERSION -eq "Windows 10 Enterprise LTSC 2021"){W10LTSC2019_2021; $currentStep++}
    if($WINVERSION -eq "Windows 10 Enterprise LTSC 2019"){W10LTSC2019_2021; $currentStep++}
    if($WINVERSION -eq "Windows 10 Enterprise 2016 LTSB"){W10LTSB2016; $currentStep++}
    if($WINVERSION -eq "Windows 10 Enterprise 2015 LTSB"){W10LTSB2015; $currentStep++}
    if($WINVERSION -eq "Windows 10 Pro"){W10_11PRO; $currentStep++}
    if($WINVERSION -eq "Windows 10 Home"){W10_11HOME; $currentStep++}
    if($WINVERSION -eq "Windows 8.1 Pro"){W81PRO; $currentStep++}
    if($WINVERSION -eq "Windows 8 Pro"){W8PRO; $currentStep++}
}
function W10_11PRO {
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10_11HOME {
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSC2019_2021 {
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSB2016 {
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSB2015 {
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W81PRO{
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W8PRO{
    Write-Progress -Activity "Connect with kms volume server for $WINVERSION version" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"}
    $currentStep++
    Write-Progress -Activity "Apply volume key" -Status "Step $currentStep of $totalSteps" -PercentComplete (($currentStep/$totalSteps)*100)
    cmd.exe /c "slmgr //B /ipk NG4HW-VH26C-733KW-K6F98-J8CK4"
    cmd.exe /c "slmgr //B /ato"
    Write-Progress -Activity "Activation completed" -Status "Installation complete" -Completed
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
options