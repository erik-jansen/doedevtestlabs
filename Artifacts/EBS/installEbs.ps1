$url = 'https://github.com/erik-jansen/doedevtestlabs/blob/master/EBSVersions/4.24/Setup.exe'

#$infPath = $PSScriptRoot + "\vscode.inf"
$ebsSetup = "${env:Temp}\Setup.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl, $ebsSetup)
}
catch
{
    Write-Error "Failed to download EBS Setup"
}

try
{
    #Start-Process -FilePath $vscodeSetup -ArgumentList "/VERYSILENT /MERGETASKS=!runcode /LOADINF=$infPath"
    Start-Process -FilePath $ebsSetup
}
catch
{
    Write-Error 'Failed to install EBS'
}