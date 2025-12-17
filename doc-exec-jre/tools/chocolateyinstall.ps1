# Generated with JReleaser 1.21.0 at 2025-12-17T11:12:07.267430398Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.1.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Install-ChocolateyZipPackage `
    -PackageName 'doc-exec' `
    -Url 'https://github.com/combostrap/doc-exec/releases/download/v1.1.0/combostrap-doc-exec-1.1.0-jre-windows-x64.zip' `
    -Checksum '69fe11b0baf2f5ce37ed7510e6861069ec80f71c27f2840bb8ee63f719211683' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'doc-exec' -Path $app_exe
