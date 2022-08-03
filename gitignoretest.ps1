$gitignoreio_all = @();
$gitignoreio_list += curl -L -s "http://www.gitignore.io/api/list";
Write-Output $gitignoreio_list;
foreach($element in $gitignoreio_list.split(",")){
    $gitignoreio_all += $element.trim()
}

$pg_lang = Read-Host "Enter the Programming lang"
Write-Host "You entered $pg_lang"
$pg_lang = $pg_lang.ToLower()
Write-Host "ToLower you entered $pg_lang"

if ($gitignoreio_all.Contains($pg_lang)){
    Write-Output "${pg_lang} Found!!"
} else {
    Write-Output "Not Found..."
}
