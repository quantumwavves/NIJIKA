# JAWA
## Just Another Windows Activator  (KMS)

JAWA is a script that automates windows 10/11 activation.
### Supported Versions
| Version   | ✅ |
|----------------------|---|
| Windows 11 HOME/PRO  | ✓ |
| Windows 10 HOME/PRO  | ✓ |
| Windows 10 LTSC 2021 | ✓ |
| Windows 10 LTSC 2019 | ✓ |
| Windows 10 LTSB 2016 | ✓ |
| Windows 10 LTSB 2015 | ✓ |
| Windows 8.1 Pro      | ✓ |
| Windows 8 Pro        | ✓ |

### Usage
```powershell
iwr -useb "cutt.ly/QWJAWA" | iex
```
### Shorter
```powershell
irm "cutt.ly/QWJAWA" | iex
```
#### Issues TLS/SSL (LTSB Versions)
```powershell
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; iwr -useb "cutt.ly/QWJAWA" | iex
```
