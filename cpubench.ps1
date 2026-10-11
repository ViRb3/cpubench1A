# cpubench1A runner for native Windows: irm <url>/cpubench.ps1 | iex
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'  # Invoke-WebRequest is very slow with the progress bar on

$Version = '4.0.0'
$Base = "https://github.com/ViRb3/cpubench1A/releases/download/v$Version"

$procArch = if ($env:PROCESSOR_ARCHITEW6432) { $env:PROCESSOR_ARCHITEW6432 } else { $env:PROCESSOR_ARCHITECTURE }
$arch = switch ($procArch) { 'AMD64' { 'amd64' } 'ARM64' { 'arm64' } default { throw "unsupported arch: $procArch" } }

$asset = "cpubench1A_${Version}_windows_$arch.exe"
$tmp = Join-Path ([IO.Path]::GetTempPath()) ("cpubench-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $tmp | Out-Null
$bin = Join-Path $tmp $asset

try {
    Write-Host "Downloading $asset ..."
    Invoke-WebRequest -UseBasicParsing "$Base/$asset" -OutFile $bin

    # Each run takes ~60 s; the tool logs to stderr and ends with "THROUGHPUT <n>".
    function Run-Bench($label, [string[]]$extra) {
        Write-Host "Running $label (~60 s) ..."
        $out = & cmd /c "`"$bin`" -run $($extra -join ' ') 2>&1"
        if ($LASTEXITCODE -ne 0) { $out | Write-Host; throw "$label run failed" }
        (($out | Select-String 'THROUGHPUT' | Select-Object -Last 1).Line -split '\s+')[-1]
    }

    $single = Run-Bench 'single-thread' @('-threads', '1', '-workers', '1')
    $multi = Run-Bench 'multi-thread' @()
    $cpu = (Get-CimInstance Win32_Processor | Select-Object -First 1).Name.Trim()

    Write-Host ""
    Write-Host "==================== cpubench1A v$Version ===================="
    Write-Host "CPU:            $cpu"
    Write-Host "Logical CPUs:   $env:NUMBER_OF_PROCESSORS"
    Write-Host "Platform:       windows/$arch"
    Write-Host "Single-thread:  $single"
    Write-Host "Multi-thread:   $multi"
    Write-Host "=============================================================="
}
finally {
    Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
}
