@echo off
SET PATH_MOONC="C:\MoonScript\moonc.exe"

CD ".\src"
START "" %PATH_MOONC% "-t" "..\dist" .
CD ".."

EXIT
