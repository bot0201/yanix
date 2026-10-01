$f = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$j = Get-Content $f -Raw -Encoding UTF8 | ConvertFrom-Json

$log = Join-Path $PSScriptRoot "verify_v2.txt"
$lines = @()
$lines += "Elements: $($j.elements.Count)"

# Check first element
$e0 = $j.elements[0]
$lines += "First from: $($e0.from[0]),$($e0.from[1]),$($e0.from[2])"
$lines += "First to: $($e0.to[0]),$($e0.to[1]),$($e0.to[2])"
$lines += "First faces: " + ($e0.faces.PSObject.Properties.Name -join ', ')
if ($e0.rotation) {
    $lines += "First rotation: " + ($e0.rotation | ConvertTo-Json -Compress)
}

# Count rotation types
$single = 0; $multi = 0; $none = 0
foreach ($e in $j.elements) {
    if (-not $e.rotation) { $none++; continue }
    if ($e.rotation.PSObject.Properties.Name -contains 'angle') { $single++ }
    elseif ($e.rotation.PSObject.Properties.Name -contains 'x') { $multi++ }
}
$lines += "Rotation: none=$none, single=$single, multi=$multi"

# Check for multi-axis in first few
$multiExamples = @()
foreach ($e in $j.elements) {
    if ($e.rotation -and $e.rotation.PSObject.Properties.Name -contains 'x') {
        $r = $e.rotation
        $multiExamples += "[$($r.x),$($r.y),$($r.z)] @ [$($r.origin[0]),$($r.origin[1]),$($r.origin[2])]"
        if ($multiExamples.Count -ge 5) { break }
    }
}
$lines += "Multi-axis examples:"
$lines += $multiExamples

# Check for potential number format issues in the raw JSON
$raw = Get-Content $f -Raw -Encoding UTF8
# Check for scientific notation
$sciCount = ([regex]::Matches($raw, '\d+\.\d+[Ee][+-]')).Count
$lines += "Scientific notation: $sciCount"
# Check for leading dot
$leadDot = ([regex]::Matches($raw, '(?<=[\[,])\.\d')).Count
$lines += "Leading dot (.X): $leadDot"
# Check for NaN/Inf
$nanCount = ([regex]::Matches($raw, '(NaN|Infinity)')).Count
$lines += "NaN/Inf: $nanCount"

[System.IO.File]::WriteAllLines($log, $lines)