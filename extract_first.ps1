$f = Join-Path $PSScriptRoot "yanix_resourcepack\assets\pve\models\m4a1_converted.json"
$raw = Get-Content $f -Raw -Encoding UTF8
$search = '"elements":['
$start = $raw.IndexOf($search)
if ($start -ge 0) {
    $start += $search.Length
    $depth = 0
    $end = $start
    for ($i = $start; $i -lt $raw.Length; $i++) {
        $c = $raw[$i]
        if ($c -eq '{') { $depth++ }
        if ($c -eq '}') { 
            $depth--
            if ($depth -eq 0) { $end = $i; break }
        }
    }
    $first = $raw.Substring($start, $end - $start + 1)
    $out = Join-Path $PSScriptRoot "first_elem.txt"
    [System.IO.File]::WriteAllText($out, $first)
    Write-Output "First element written: $($first.Length) chars"
} else {
    Write-Output "Search string not found"
    # dump first 500 chars for debug
    $preview = $raw.Substring(0, [Math]::Min(500, $raw.Length))
    $out = Join-Path $PSScriptRoot "first_elem.txt"
    [System.IO.File]::WriteAllText($out, $preview)
}