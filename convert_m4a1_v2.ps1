$inPath = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1.json"
$outPath = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"

$data = Get-Content $inPath -Raw -Encoding UTF8 | ConvertFrom-Json
$geometry = $data.'minecraft:geometry'[0]
$bones = $geometry.bones

function fmt($n) {
    # Format a number safely for JSON: no scientific notation, no leading dot, integer if possible
    $rounded = [Math]::Round($n, 6)
    if ($rounded -eq [Math]::Floor($rounded)) {
        return "$([long]$rounded)"
    }
    $s = "$rounded"
    # Ensure leading zero for fractions
    if ($s.StartsWith('.')) { $s = "0$s" }
    if ($s.StartsWith('-.')) { $s = "-0" + $s.Substring(1) }
    # Remove trailing zeros
    if ($s.Contains('.')) {
        $s = $s.TrimEnd('0')
        if ($s.EndsWith('.')) { $s = $s.TrimEnd('.') }
    }
    return $s
}

function fmtArr($arr) {
    return "[" + (($arr | ForEach-Object { fmt $_ }) -join ",") + "]"
}

function Cube-Center($origin, $size) {
    return @(
        $origin[0] + $size[0] / 2.0,
        $origin[1] + $size[1] / 2.0,
        $origin[2] + $size[2] / 2.0
    )
}

function Convert-Rotation($rotAngles, $pivot) {
    if (-not $rotAngles) { return "" }
    $rx = [Math]::Abs($rotAngles[0])
    $ry = [Math]::Abs($rotAngles[1])
    $rz = [Math]::Abs($rotAngles[2])
    $count = 0
    $axis = ""; $angle = 0
    if ($rx -gt 0.0001) { $count++; $angle = $rotAngles[0]; $axis = "x" }
    if ($ry -gt 0.0001) { $count++; $angle = $rotAngles[1]; $axis = "y" }
    if ($rz -gt 0.0001) { $count++; $angle = $rotAngles[2]; $axis = "z" }

    if ($count -eq 0) { return "" }
    if ($count -eq 1) {
        $a = fmt $angle
        $o = fmtArr $pivot
        return "`"rotation`":{`"angle`":$a,`"axis`":`"$axis`",`"origin`":$o}"
    }
    # Multi-axis: use x/y/z format
    $xa = fmt $rotAngles[0]
    $ya = fmt $rotAngles[1]
    $za = fmt $rotAngles[2]
    $o = fmtArr $pivot
    return "`"rotation`":{`"x`":$xa,`"y`":$ya,`"z`":$za,`"origin`":$o}"
}

function Convert-Cube($cube) {
    $origin = $cube.origin
    $size = $cube.size
    $pivot = if ($cube.pivot) { $cube.pivot } else { Cube-Center $origin $size }
    $rot = $cube.rotation

    $from = fmtArr $origin
    $toA = @(
        $origin[0] + $size[0],
        $origin[1] + $size[1],
        $origin[2] + $size[2]
    )
    $to = fmtArr $toA

    $faceLines = @()
    foreach ($prop in $cube.uv.PSObject.Properties) {
        $faceName = $prop.Name
        $uvData = $prop.Value
        $u1 = fmt $uvData.uv[0]
        $v1 = fmt $uvData.uv[1]
        $u2 = fmt ($uvData.uv[0] + $uvData.uv_size[0])
        $v2 = fmt ($uvData.uv[1] + $uvData.uv_size[1])
        $faceLines += "`"$faceName`":{`"uv`":[$u1,$v1,$u2,$v2],`"texture`":`"#0`"}"
    }
    $facesStr = "{" + ($faceLines -join ",") + "}"

    $rotStr = Convert-Rotation $rot $pivot
    if ($rotStr) {
        return "{`"from`":$from,`"to`":$to,$rotStr,`"faces`":$facesStr}"
    }
    return "{`"from`":$from,`"to`":$to,`"faces`":$facesStr}"
}

# Collect all elements
$elementStrs = @()
foreach ($bone in $bones) {
    if ($bone.cubes) {
        foreach ($cube in $bone.cubes) {
            $elementStrs += (Convert-Cube $cube)
        }
    }
}

$elementsJson = "[" + ($elementStrs -join ",") + "]"

# Display transforms
$disp = @"
`"display`":{
    `"thirdperson_righthand`":{`"rotation`":[-2.5,-97.0,-2.5],`"translation`":[-2.75,4.5,-11.5],`"scale`":[0.55,0.55,0.55]},
    `"thirdperson_lefthand`":{`"rotation`":[58.0,-97.0,0.0],`"translation`":[0.0,13.0,-0.75],`"scale`":[0.55,0.55,0.55]},
    `"firstperson_righthand`":{`"rotation`":[-78.58,-18.88,-41.92],`"translation`":[0.5,-3.25,-5.25],`"scale`":[0.55,0.55,0.55]},
    `"firstperson_lefthand`":{`"rotation`":[-180.0,-6.27,170.23],`"translation`":[-3.75,4.75,-5.0],`"scale`":[0.55,0.55,0.55]},
    `"ground`":{`"rotation`":[0.0,0.0,0.0],`"translation`":[0.0,3.75,0.0],`"scale`":[0.5,0.5,0.5]},
    `"gui`":{`"rotation`":[-43.04,39.65,23.33],`"translation`":[-3.25,-6.5,2.75],`"scale`":[0.38,0.38,0.38]},
    `"head`":{`"rotation`":[-90.0,0.0,0.0],`"translation`":[0.0,24.25,-3.0],`"scale`":[0.55,0.55,0.55]},
    `"fixed`":{`"rotation`":[-90.0,45.0,90.0],`"translation`":[0.0,0.0,0.0],`"scale`":[0.5,0.5,0.5]}
}
"@

# Build final JSON
$json = "{`"textures`":{`"0`":`"pve:item/m4a1`",`"particle`":`"pve:item/m4a1`"},`"elements`":$elementsJson,$disp}"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($outPath, $json, $utf8NoBom)

Write-Output "Done: $($elementStrs.Count) elements -> $outPath"