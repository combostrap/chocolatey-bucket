# Generated with JReleaser 1.21.0 at 2025-11-08T09:51:13.298744467Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.0.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Install-ChocolateyZipPackage `
    -PackageName 'doc-exec' `
    -Url 'https://github.com/combostrap/doc-exec/releases/download/v1.0.0/combostrap-doc-exec-1.0.0-jre-windows-x64.zip' `
    -Checksum '1b6de9ae274353df91b21136cc3cbf32801ba8ddd4b47184e3c89bd2991a340b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'doc-exec' -Path $app_exe
