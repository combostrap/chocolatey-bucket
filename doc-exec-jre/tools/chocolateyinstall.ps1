# Generated with JReleaser 1.21.0 at 2025-11-05T13:32:17.699251303Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.0.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Install-ChocolateyZipPackage `
    -PackageName 'doc-exec' `
    -Url 'https://github.com/combostrap/doc-exec/releases/download/v1.0.0/combostrap-doc-exec-1.0.0-jre-windows-x64.zip' `
    -Checksum '8390975355d811a999b7015771eb166e149a38c15bbe19b3fa57433a907d9d40' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'doc-exec' -Path $app_exe
