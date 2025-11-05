# Generated with JReleaser 1.21.0 at 2025-11-05T11:38:26.442437671Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.0.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Install-ChocolateyZipPackage `
    -PackageName 'doc-exec' `
    -Url 'https://github.com/combostrap/doc-exec/releases/download/v1.0.0/combostrap-doc-exec-1.0.0-jre-windows-x64.zip' `
    -Checksum '97e1b17de5c31a25db2fc5c885338ca7c98cb807da406baca975ce0a258bc8c2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'doc-exec' -Path $app_exe
