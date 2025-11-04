# Generated with JReleaser 1.21.0 at 2025-11-04T11:44:39.294479453Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.0.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Install-ChocolateyZipPackage `
    -PackageName 'doc-exec' `
    -Url 'https://github.com/combostrap/doc-exec/releases/download/v1.0.0/combostrap-doc-exec-1.0.0-jre-windows-x64.zip' `
    -Checksum '47d4395af65439e888c29580c045b56be51c0504fb49872dfd19487cab70f164' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'doc-exec' -Path $app_exe
