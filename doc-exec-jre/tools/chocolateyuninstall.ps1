# Generated with JReleaser 1.21.0 at 2025-11-05T11:10:23.030825981Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.0.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Uninstall-BinFile -Name 'doc-exec' -Path $app_exe
