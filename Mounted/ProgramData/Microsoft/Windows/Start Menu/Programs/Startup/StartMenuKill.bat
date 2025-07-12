@echo off
title StartMenu.exe Killer
powershell.exe "Stop-Process -Name "StartMenu" -Force"
exit