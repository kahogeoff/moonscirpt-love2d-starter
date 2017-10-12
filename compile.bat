@echo off

CD ".\src"
START "" "C:\MoonScript\moonc.exe" "-t" "..\dist" .
CD ".."

EXIT