$p = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$j = Get-Content $p -Raw -Encoding UTF8 | ConvertFrom-Json
Write-Host "Elements: $($j.elements.Count)"
Write-Host "Has textures: $($j.textures -ne $null)"
Write-Host "Has display: $($j.display -ne $null)"
$e0 = $j.elements[0]
Write-Host "First element from: $($e0.from -join ' ')"
Write-Host "First element to: $($e0.to -join ' ')"
$faces = $e0.faces.PSObject.Properties.Name -join ', '
Write-Host "First element faces: $faces"
if ($e0.rotation) {
    Write-Host "First element has rotation: axis=$($e0.rotation.axis) angle=$($e0.rotation.angle)"
} else {
    Write-Host "First element: no rotation"
}

# Check last element
$last = $j.elements[-1]
Write-Host "Last element from: $($last.from -join ' ')"
Write-Host "Last element to: $($last.to -join ' ')"

# Count elements with rotation
$withRot = ($j.elements | Where-Object { $_.rotation -ne $null }).Count
Write-Host "Elements with rotation: $withRot / $($j.elements.Count)"