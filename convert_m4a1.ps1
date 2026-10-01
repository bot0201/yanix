# 从当前目录（repo）运行，使用相对路径
$inputPath = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1.json"
$outputPath = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"

Write-Host "Input: $inputPath"
Write-Host "Output: $outputPath"

if (-not (Test-Path $inputPath)) {
    Write-Host "ERROR: Input file not found!" -ForegroundColor Red
    exit 1
}

$data = Get-Content $inputPath -Raw -Encoding UTF8 | ConvertFrom-Json
$geometry = $data.'minecraft:geometry'[0]
$bones = $geometry.bones

function Cube-Center($origin, $size) {
    return @(
        $origin[0] + $size[0] / 2.0,
        $origin[1] + $size[1] / 2.0,
        $origin[2] + $size[2] / 2.0
    )
}

function Convert-Rotation($rotAngles, $pivot) {
    if (-not $rotAngles) { return $null }
    $rx = [Math]::Abs($rotAngles[0])
    $ry = [Math]::Abs($rotAngles[1])
    $rz = [Math]::Abs($rotAngles[2])
    $count = 0
    $axis = ""; $angle = 0
    if ($rx -gt 0.0001) { $count++; $angle = $rotAngles[0]; $axis = "x" }
    if ($ry -gt 0.0001) { $count++; $angle = $rotAngles[1]; $axis = "y" }
    if ($rz -gt 0.0001) { $count++; $angle = $rotAngles[2]; $axis = "z" }
    if ($count -ne 1) { return $null }
    return @{
        angle = [Math]::Round($angle, 4)
        axis = $axis
        origin = @([Math]::Round($pivot[0], 4), [Math]::Round($pivot[1], 4), [Math]::Round($pivot[2], 4))
    }
}

function Convert-Cube($cube) {
    $origin = $cube.origin
    $size = $cube.size
    $pivot = if ($cube.pivot) { $cube.pivot } else { Cube-Center $origin $size }
    $rot = $cube.rotation

    $faces = [ordered]@{}
    foreach ($prop in $cube.uv.PSObject.Properties) {
        $faceName = $prop.Name
        $uvData = $prop.Value
        $u = $uvData.uv[0]
        $v = $uvData.uv[1]
        $w = $uvData.uv_size[0]
        $h = $uvData.uv_size[1]
        $faces[$faceName] = [ordered]@{
            uv = @([Math]::Round($u, 4), [Math]::Round($v, 4), [Math]::Round($u + $w, 4), [Math]::Round($v + $h, 4))
            texture = "#0"
        }
    }

    $element = [ordered]@{
        from = @([Math]::Round($origin[0], 4), [Math]::Round($origin[1], 4), [Math]::Round($origin[2], 4))
        to = @([Math]::Round($origin[0] + $size[0], 4), [Math]::Round($origin[1] + $size[1], 4), [Math]::Round($origin[2] + $size[2], 4))
        faces = $faces
    }

    $rotation = Convert-Rotation $rot $pivot
    if ($rotation) {
        $element.rotation = $rotation
    }

    return $element
}

$elements = @()
foreach ($bone in $bones) {
    if ($bone.cubes) {
        foreach ($cube in $bone.cubes) {
            $elements += ,(Convert-Cube $cube)
        }
    }
}

$output = [ordered]@{
    textures = [ordered]@{
        "0" = "pve:item/m4a1"
        particle = "pve:item/m4a1"
    }
    elements = $elements
    display = [ordered]@{
        thirdperson_righthand = [ordered]@{ rotation = @(-2.5, -97, -2.5); translation = @(-2.75, 4.5, -11.5); scale = @(0.55, 0.55, 0.55) }
        thirdperson_lefthand = [ordered]@{ rotation = @(58, -97, 0); translation = @(0, 13, -0.75); scale = @(0.55, 0.55, 0.55) }
        firstperson_righthand = [ordered]@{ rotation = @(-78.58, -18.88, -41.92); translation = @(0.5, -3.25, -5.25); scale = @(0.55, 0.55, 0.55) }
        firstperson_lefthand = [ordered]@{ rotation = @(-180, -6.27, 170.23); translation = @(-3.75, 4.75, -5); scale = @(0.55, 0.55, 0.55) }
        ground = [ordered]@{ rotation = @(0, 0, 0); translation = @(0, 3.75, 0); scale = @(0.5, 0.5, 0.5) }
        gui = [ordered]@{ rotation = @(-43.04, 39.65, 23.33); translation = @(-3.25, -6.5, 2.75); scale = @(0.38, 0.38, 0.38) }
        head = [ordered]@{ rotation = @(-90, 0, 0); translation = @(0, 24.25, -3); scale = @(0.55, 0.55, 0.55) }
        fixed = [ordered]@{ rotation = @(-90, 45, 90); translation = @(0, 0, 0); scale = @(0.5, 0.5, 0.5) }
    }
}

$json = $output | ConvertTo-Json -Depth 10 -Compress
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($outputPath, $json, $utf8NoBom)

Write-Host "Done: $($elements.Count) elements written." -ForegroundColor Green