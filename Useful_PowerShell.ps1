(1..15) | ForEach-Object{
$format = "{0:00}" -f $_
$folderName = "Chapter_$format"
New-Item -path . -ItemType "Directory" -Name $folderName
}