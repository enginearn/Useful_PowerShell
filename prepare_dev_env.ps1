$gitignoreio_list = @()
$gitignoreio_all += curl -L -s "https://www.gitignore.io/api/list"
foreach($element in $gitignoreio_all.split(",")) {
    $gitignoreio_list += $element.trim()
}
$DEFOULT_DIR_NAME = "dev_env"

$CurrentPath = Get-Location
Write-Host "Your location is: $CurrentPath"
$DirName = Read-Host "Enter the directory name"
$PG_Lang = Read-Host "Enter the Programming lang".ToLower()

While ($DirName.Length -lt 1) {
    Write-Host "Directory name is empty"
    $DirName = Read-Host "Enter the directory name"
    if (Test-Path $DirName) {
        Write-Host "Directory already exists"
        $DirName = ""
        $DirName = Read-Host "Enter other name"
        continue

        if (Test-Path $DirName) {
            New-Item -p $CurrentPath -ItemType Directory -Name $DirName
            Set-Location $DirName
        }
    } else {
        New-Item -ItemType Directory -Force -Name $DEFOULT_DIR_NAME -Path $CurrentPath
        Set-Location $CurrentPath
    }
}

Write-Host "Directory created!"
if ($PG_Lang -and $gitignoreio_list.Contains($PG_Lang)) {
    Write-Host "${PG_Lang} Found!"
    # curl -L -s "https://www.toptal.com/developers/gitignore/api/$PG_Lang" -o ".gitignore"
    curl -L -s "https://www.gitignore.io/api/$PG_Lang" -o ".gitignore"
    Write-Host ".gitignore file for ${PG_Lang} created!"
} elseif ([String]::IsNullOrEmpty($PG_Lang)) {
    New-Item -Path . -ItemType File -Force -Name ".gitignore"
    Write-Host "Empty .gitignore file created!"
} else {
    Write-Host "Invalid programming language in gitignore.io list..."
}
# curl "https://www.toptal.com/developers/gitignore/api/$PG_Lang" -o ".gitignore"
# Write-Host ".gitignore file created"
New-Item -Path . -ItemType File -Name "README.md"
Write-Host "README.md file created!"

