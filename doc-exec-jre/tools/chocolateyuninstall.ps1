# Generated with JReleaser 1.21.0 at 2025-12-17T11:12:07.267430398Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'combostrap-doc-exec-1.1.0-jre-windows-x64'
$app_exe = Join-Path $app_home 'bin/doc-exec.bat'

Uninstall-BinFile -Name 'doc-exec' -Path $app_exe
