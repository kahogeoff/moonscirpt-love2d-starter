@ECHO OFF
SET PATH_MOONC="C:\MoonScript\moonc.exe"
SET PATH_LOVE="C:\Program Files\LOVE\love.exe"

SET LookForFile=".\dist\main.lua"

CD ".\src"
START "" %PATH_MOONC% "-t" "..\dist" .
CD ".."

:CheckForFile
IF EXIST %LookForFile% GOTO FoundIt

TIMEOUT /T 1 >nul
GOTO CheckForFile

:FoundIt
START "" %PATH_LOVE% ".\dist"

EXIT
