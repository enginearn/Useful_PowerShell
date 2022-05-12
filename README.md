# Useful PowerShell

## 環境変数を確認

```
$ Get-ChildItem env:

Name                           Value
----                           -----
ALLUSERSPROFILE                C:\ProgramData
APPDATA                        C:\Users\nagar\AppData\Roaming
CommonProgramFiles             C:\Program Files\Common Files
CommonProgramFiles(x86)        C:\Program Files (x86)\Common Files
CommonProgramW6432             C:\Program Files\Common Files
COMPUTERNAME                   GPD-P2-MAX
ComSpec                        C:\WINDOWS\system32\cmd.exe
DriverData                     C:\Windows\System32\Drivers\DriverData
HOMEDRIVE                      C:
```

## 環境変数を設定

```

```

## コンソール出力

```
$ Get-Command | Out-Host -Paging

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           Add-AdlAnalyticsDataSource                         4.2.3      AzureRM.DataLakeAnalytics
Alias           Add-AdlAnalyticsFirewallRule                       4.2.3      AzureRM.DataLakeAnalytics
Alias           Add-AdlStoreFirewallRule                           5.2.0      AzureRM.DataLakeStore
Alias           Add-AdlStoreItemContent                            5.2.0      AzureRM.DataLakeStore
Alias           Add-AdlStoreTrustedIdProvider                      5.2.0      AzureRM.DataLakeStore
Alias           Add-AppPackage                                     2.0.1.0    Appx
Alias           Add-AppPackageVolume                               2.0.1.0    Appx
Alias           Add-AppProvisionedPackage                          3.0        Dism
Alias           Add-AzureHDInsightConfigValues                     5.1.2      Azure
Alias           Add-AzureHDInsightMetastore                        5.1.2      Azure
Alias           Add-AzureHDInsightStorage                          5.1.2      Azure
Alias           Add-AzureRmAccount                                 4.6.0      AzureRM.Profile
Alias           Add-AzureRmIotHubEHCG                              3.1.2      AzureRM.IotHub
```

```
$ Get-Process | Out-Host -Paging | Format-List

 NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
 ------    -----      -----     ------      --  -- -----------
     22     9.11      15.75       0.28    3048   1 AcrobatNotificationClient
     23     9.16       2.66       0.28   15084   1 AcrobatNotificationClient
     18     4.18      14.71       0.27    6756   1 acrotray
     25    11.64      26.09      11.36   11472   1 Adobe CEF Helper
     31    47.04      85.75     231.69   11484   1 Adobe CEF Helper
     30    39.31      52.81      13.41   11492   1 Adobe CEF Helper
     23    12.99      26.01       4.27   13440   1 Adobe CEF Helper
     88    98.39      67.95      44.61   11352   1 Adobe Desktop Service
     15     4.07      12.00       0.78   11008   1 AdobeCollabSync
     20     6.33      14.38      39.38   11044   1 AdobeCollabSync
     15     4.14      11.80       0.92   11140   1 AdobeCollabSync
     20     6.34      15.20      39.97   11176   1 AdobeCollabSync
     21     5.19      11.64      18.58    7764   1 AdobeIPCBroker
     23     8.86       4.48       0.30    3592   1 AdobeNotificationClient
     13     2.64       9.23       0.00    3936   0 AdobeUpdateService
```

```
$ Get-Process | Format-List | Out-Host -Paging

Id      : 3048
Handles : 405
CPU     : 0.28125
SI      : 1
Name    : AcrobatNotificationClient

Id      : 15084
Handles : 410
CPU     : 0.359375
SI      : 1
Name    : AcrobatNotificationClient
```

## ファイル出力

```
$ Get-Process | Out-File -FilePath C:\to\your\path\PowerShell\processlist.txt
$ # ファイル出力したので、なにも返ってこない

# encodingを指定
$ Get-Process | Out-File -FilePath C:\Users\nagar\Development\PowerShell\processlist_encoded.txt -Encoding ASCII
$ # ファイル出力したので、なにも返ってこない
```
