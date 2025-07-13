:: Batch
@echo off
title Kernel Firewall Script
mode con: cols=50 lines=10
color a
:: Script Oncesi
echo 1) Ac
echo 2) Kapat
echo Microsoft Store kurulmaz ise Firewall'i acin.
set /p input=:
if %input% EQU 1 goto 1
if %input% EQU 2 goto 2
:: Script
:1
:: Firewall
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
timeout /t 3 /nobreak >NUL 2>&1
cls
:: Bitiris
echo Tamam.
shutdown -r -f -t 5 -c "Lutfen bekleyin..."
timeout /t 2 /nobreak >NUL 2>&1
exit
:: Script END
:2
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "4" /f
timeout /t 3 /nobreak >NUL 2>&1
cls
:: Bitiris
echo Tamam.
shutdown -r -f -t 5 -c "Lutfen bekleyin..."
timeout /t 2 /nobreak >NUL 2>&1
exit
:: Batch END