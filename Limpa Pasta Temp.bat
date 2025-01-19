@echo off
color b

:: Definir variáveis para facilitar o uso
set "windows=%windir%"
set "systemdrive=%systemdrive%"
set "userprofile=%userprofile%"
set "temp=%temp%"
set "history=%userprofile%\Local Settings\History"
set "cookies=%userprofile%\Cookies"
set "recent=%userprofile%\Recent"
set "printers=%systemroot%\system32\spool\printers"

echo Iniciando a limpeza do sistema...
echo.

:: Limpando arquivos temporários do Windows
echo Limpando arquivos temporários do Windows...
del /s /f /q "%windows%\temp\*.*" 2>nul
echo Arquivos temporários do Windows limpos.
echo.

:: Limpando arquivos Prefetch
echo Limpando arquivos Prefetch...
del /s /f /q "%windows%\Prefetch\*.exe" 2>nul
del /s /f /q "%windows%\Prefetch\*.dll" 2>nul
del /s /f /q "%windows%\Prefetch\*.pf" 2>nul
echo Arquivos Prefetch limpos.
echo.

:: Limpando cache de DLL
echo Limpando cache de DLL...
del /s /f /q "%windows%\system32\dllcache\*.*" 2>nul
echo Cache de DLL limpo.
echo.

:: Limpando arquivos temporários do sistema
echo Limpando arquivos temporários do sistema...
del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
del /s /f /q "%temp%\*.*" 2>nul
echo Arquivos temporários do sistema limpos.
echo.

:: Limpando histórico de navegação
echo Limpando histórico de navegação...
del /s /f /q "%history%\*.*" 2>nul
del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 2>nul
del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
echo Histórico de navegação limpo.
echo.

:: Limpando itens recentes
echo Limpando itens recentes...
del /s /f /q "%recent%\*.*" 2>nul
echo Itens recentes limpos.
echo.

:: Limpando cookies
echo Limpando cookies...
del /s /f /q "%cookies%\*.*" 2>nul
echo Cookies limpos.
echo.
echo Limpeza concluída com sucesso!

