#!/usr/bin/env pwsh

New-Item artifacts -ItemType directory
Move-Item src/sdk/dotnet/unity/obj/Release/desc artifacts/desc
Move-Item src/sdk/dotnet/unity/bin/Release artifacts/package