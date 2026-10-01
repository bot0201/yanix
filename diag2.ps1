$p = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$src = Get-Content $p -Raw -Encoding UTF8
$j = $src | ConvertFrom-Json

$log = Join-Path $PSScriptRoot "diag_output.txt"
$lines = @()

$lines += "Total elements: $($j.elements.Count)"
$lines += ""

$bad = 0
for ($i = 0; $i -lt $j.elements.Count; $i++) {
    $e = $j.elements[$i]
    if ($e.from.Count -ne 3) { $bad++; $lines += "EL $i : from.Count=$($e.from.Count)"; continue }
    if ($e.to.Count -ne 3) { $bad++; $lines += "EL $i : to.Count=$($e.to.Count)"; continue }
    
    foreach ($fc in $e.faces.PSObject.Properties) {
        $f = $fc.Value
        if ($f.uv.Count -ne 4) { $bad++; $lines += "EL $i face $($fc.Name): uv.Count=$($f.uv.Count)" }
    }
    
    if ($e.rotation) {
        if ($e.rotation.origin.Count -ne 3) { $bad++; $lines += "EL $i rot: origin.Count=$($e.rotation.origin.Count)" }
    }
}
$lines += "Bad elements: $bad"

# Check for "true" or "false" in numeric arrays
$matches = [regex]::Matches($src, '(-?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?)')
$lines += "Total number tokens: $($matches.Count)"

# Check for boolean/non-numeric in from/to arrays
$boolInNum = ([regex]::Matches($src, '"(?:true|false|null)"')).Count
$lines += "Bool/null strings: $boolInNum"

# Write "true"/"false" (unquoted)
$bareBool = ([regex]::Matches($src, '(?<=[\[,])\s*(true|false)\s*(?=[,\]])')).Count
$lines += "Bare bool in arrays: $bareBool"

$utf8 = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllLines($log, $lines, $utf8)