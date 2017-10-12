@ECHO OFF
SET LookForFile=".\dist\main.lua"

CD ".\src"
START "" "C:\MoonScript\moonc.exe" "-t" "..\dist" .
CD ".."

:CheckForFile
IF EXIST %LookForFile% GOTO FoundIt

GOTO CheckForFile

:FoundIt
START "" "C:\Program Files\LOVE\love.exe" ".\dist"

EXIT