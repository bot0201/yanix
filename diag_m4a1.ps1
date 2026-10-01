$p = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$content = Get-Content $p -Raw -Encoding UTF8

# Find all number-like tokens that might be invalid
# JSON spec: numbers are: -? (0|[1-9][0-9]*) (\.[0-9]+)? ([eE][+-]?[0-9]+)?
# Issues: .5 (no leading 0), 1. (trailing dot), NaN, Infinity, 1e (incomplete), etc.

$issues = [regex]::Matches($content, '"(-?\d*\.?\d*(?:[eE][+-]?\d+)?)"') | ForEach-Object { $_.Value }
$strNums = $issues | Where-Object { $_ -match '^"[^"]*"$' }
Write-Host "Numbers wrapped in quotes (should NOT exist): $($strNums.Count)"
if ($strNums.Count -gt 0 -and $strNums.Count -lt 50) { $strNums | Select-Object -First 20 }

# Check for NaN/Infinity
if ($content -match 'NaN') { Write-Host "FOUND NaN!" -ForegroundColor Red }
if ($content -match 'Infinity') { Write-Host "FOUND Infinity!" -ForegroundColor Red }

# Check for numbers like .5 (no leading zero) - but not inside strings
$bareDots = [regex]::Matches($content, '(?<=[\[,])\.\d+') | ForEach-Object { $_.Value }
Write-Host "Numbers starting with dot (.XXX): $($bareDots.Count)"
if ($bareDots.Count -gt 0 -and $bareDots.Count -lt 20) { $bareDots | Select-Object -First 10 }

# Check E notation
$sciNotation = [regex]::Matches($content, '\d+[eE][+-]?\d+')
Write-Host "Scientific notation numbers: $($sciNotation.Count)"
if ($sciNotation.Count -gt 0 -and $sciNotation.Count -lt 20) { $sciNotation | Select-Object -First 10 }

# Check for rotation objects - verify structure
$j = Get-Content $p -Raw -Encoding UTF8 | ConvertFrom-Json
$badRot = @()
$elementIssues = 0
foreach ($e in $j.elements) {
    # Check from/to
    if ($e.from.Count -ne 3) { $elementIssues++; continue }
    if ($e.to.Count -ne 3) { $elementIssues++; continue }
    foreach ($v in $e.from) {
        if ($v -isnot [double] -and $v -isnot [int] -and $v -isnot [long]) { $elementIssues++ }
        if ([double]::IsNaN($v) -or [double]::IsInfinity($v)) { $elementIssues++; Write-Host "BAD from value: $v" }
    }
    foreach ($v in $e.to) {
        if ($v -isnot [double] -and $v -isnot [int] -and $v -isnot [long]) { $elementIssues++ }
        if ([double]::IsNaN($v) -or [double]::IsInfinity($v)) { $elementIssues++; Write-Host "BAD to value: $v" }
    }
    # Check faces
    foreach ($faceName in $e.faces.PSObject.Properties.Name) {
        $face = $e.faces.$faceName
        if ($face.uv.Count -ne 4) { $elementIssues++; continue }
        foreach ($v in $face.uv) {
            if ([double]::IsNaN($v) -or [double]::IsInfinity($v)) { $elementIssues++; Write-Host "BAD uv: $v ($faceName)" }
        }
    }
    # Check rotation
    if ($e.rotation) {
        if ($e.rotation.angle -isnot [double] -and $e.rotation.angle -isnot [int]) { $elementIssues++ }
        if ($e.rotation.origin.Count -ne 3) { $elementIssues++; continue }
        foreach ($v in $e.rotation.origin) {
            if ([double]::IsNaN($v) -or [double]::IsInfinity($v)) { $elementIssues++; Write-Host "BAD rot origin: $v" }
        }
    }
}
Write-Host "Element issues: $elementIssues" -ForegroundColor $(if($elementIssues -gt 0){'Red'}else{'Green'})

# Also check the display section
$displayIssues = 0
foreach ($mode in $j.display.PSObject.Properties.Name) {
    $d = $j.display.$mode
    if ($d.rotation) {
        foreach ($v in $d.rotation) {
            if ($v -isnot [double] -and $v -isnot [int]) { $displayIssues++; Write-Host "BAD display rotation: $v in $mode" }
        }
    }
    if ($d.translation) {
        foreach ($v in $d.translation) {
            if ($v -isnot [double] -and $v -isnot [int]) { $displayIssues++; Write-Host "BAD display translation: $v in $mode" }
        }
    }
    if ($d.scale) {
        foreach ($v in $d.scale) {
            if ($v -isnot [double] -and $v -isnot [int]) { $displayIssues++; Write-Host "BAD display scale: $v in $mode" }
        }
    }
}
Write-Host "Display issues: $displayIssues" -ForegroundColor $(if($displayIssues -gt 0){'Red'}else{'Green'})

Write-Host "Total elements: $($j.elements.Count)"