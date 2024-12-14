@echo off
color 04
Title Limpeza Completa do PC

set "windows=%windir%"
set "systemdrive=%systemdrive%"
set "userprofile=%userprofile%"
set "temp=%temp%"
set "history=%userprofile%\Local Settings\History"
set "cookies=%userprofile%\Cookies"
set "recent=%userprofile%\Recent"
set "printers=%systemroot%\system32\spool\printers"
set "youhan_cheat=%userprofile%\AppData\Local\YOUHAN_CHEAT"

del /s /f /q "%windows%\temp\*.*" 2>nul
del /s /f /q "%windows%\Prefetch\*.exe" 2>nul
del /s /f /q "%windows%\Prefetch\*.dll" 2>nul
del /s /f /q "%windows%\Prefetch\*.pf" 2>nul
del /s /f /q "%windows%\system32\dllcache\*.*" 2>nul
del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
del /s /f /q "%temp%\*.*" 2>nul
del /s /f /q "%history%\*.*" 2>nul
del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 2>nul
del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
del /s /f /q "%recent%\*.*" 2>nul
del /s /f /q "%cookies%\*.*" 2>nul

echo Limpando a pasta YOUHAN_CHEAT...

:: Tenta excluir arquivos dentro da pasta primeiro
del /s /f /q "%youhan_cheat%\*.*" 2>nul

:: Agora tenta remover a pasta
rd /s /q "%youhan_cheat%" 2>nul

echo Pasta YOUHAN_CHEAT apagada com sucesso!

echo Limpeza concluída com sucesso! :b <pressione qualquer tecla para sair>
pause

exit
