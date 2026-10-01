$p = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$content = Get-Content $p -Raw -Encoding UTF8
$out = Join-Path $PSScriptRoot "m4a1_sample.txt"
# Extract first 50000 chars
$sample = $content.Substring(0, [Math]::Min(50000, $content.Length))
$utf8 = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($out, $sample, $utf8)
Write-Output "Sample written: $($sample.Length) chars to $out"