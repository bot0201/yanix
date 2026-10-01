$p = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$j = Get-Content $p -Raw -Encoding UTF8 | ConvertFrom-Json
$pretty = $j | ConvertTo-Json -Depth 10
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($p, $pretty, $utf8NoBom)
Write-Host "Formatted." -ForegroundColor Green