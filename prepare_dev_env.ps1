$DirName = Read-Host "Enter the directory name: "
$PG_Lang = Read-Host "Enter the Programming lang: "
$CurrentPath = Get-Location
Write-Host $CurrentPath

if (Test-Path $DirName) {
    Write-Host "Directory already exists"
} else {
    New-Item -p $CurrentPath -ItemType Directory -Name $DirName
    Write-Host "Directory created"
    Set-Location $DirName
    curl "https://www.toptal.com/developers/gitignore/api/$PG_Lang" -o ".gitignore"
    Write-Host ".gitignore file created"
    New-Item -Path . -ItemType File -Name "README.md"
    Write-Host "README.md file created"
}
