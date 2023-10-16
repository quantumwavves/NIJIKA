#NIJIKA VERSION 1.0 by QuantumWavves
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
function options {
    Write-Host "#######################################"
    Write-Host "#                                     #"
    Write-Host "#             NIJIKA 1.0              #"
    Write-Host "#     1: Set your own KMS server      #"
    Write-Host "#     2: Default (kms.digiboy.ir)     #"
    Write-Host "#     3: Remove any KMS activation    #"
    Write-Host "#                                     #"
    Write-Host "#######################################"
    Write-Host "                                       "
    $choise= Read-Host "[?] Select option "
    while ($choise -ne 1 -and $choise -ne 2 -and $choise -ne 3) {
      Write-Host "[*] Please select valid option"
      $choise= Read-Host "[?] Select option "
    }    
    if($choise -eq "1"){
        $domain= Read-Host "[-] Put your kms server: "
        AOSD
        }
    if($choise -eq "2"){AOSD}
    if ($choise -eq "3"){removeKms}
}

function AOSD {
    Write-Host "[-] Detecting windows version..."
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
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir entablished"}
    Write-Output "[-] Applying key for $version"
    cmd.exe /c "slmgr //B /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10_11HOME {
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir established"}
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSC2019_2021 {
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir established"}
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSB2016 {
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir", Write-Output "[+] Connection with kms.digiboy.ir established"}
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W10LTSB2015 {
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir established"}
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W81PRO {
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir established"}
    $currentStep++
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
    Write-Output "[*] The volume key was successfully applied"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function W8PRO{
    Write-Output "[-] Connect with Key Management Server for activate $WINVERSION"
    if($choise -eq "1"){cmd.exe /c "slmgr //B /skms $domain"; Write-Output "[+] Connection with $domain established"}
    if($choise -eq "2"){cmd.exe /c "slmgr //B /skms kms.digiboy.ir"; Write-Output "[+] Connection with kms.digiboy.ir established"}
    Write-Output "[-] Applying key for $WINVERSION"
    cmd.exe /c "slmgr //B /ipk NG4HW-VH26C-733KW-K6F98-J8CK4"
    cmd.exe /c "slmgr //B /ato"
    Write-Output "[*] The volume key was successfully applied"
    Write-Output "##########################"
    Write-Output "#  Activation Completed  #"
    Write-Output "##########################"
}
function removeKms {
  Write-Output "[-] Delete volume key..."
  cmd.exe /c "slmgr //B /upk"
  Write-Output "[-] Delete the registered domain"
  cmd.exe /c "slmgr //B /ckms"
    Write-Output "##################################################"
    Write-Output "#  KMS activation has been removed successfully  #"
    Write-Output "##################################################"
}
options
