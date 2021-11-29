#!/usr/bin/env pwsh

New-Item depot_tools -ItemType directory
Set-Location depot_tools
git init
git fetch --depth=1 https://chromium.googlesource.com/chromium/tools/depot_tools.git 68377adad5aecf06c5f7e189319a5199fde6992f
git checkout FETCH_HEAD
Write-Output "$pwd" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append