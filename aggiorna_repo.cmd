@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Imposta la directory principale dove si trovano le repo
set "REPO_DIR=C:\Percorso\Alle\Tue\Repo"

cd /d "%REPO_DIR%"

echo Aggiornamento delle repository in %REPO_DIR%
echo ---------------------------------------------

for /d %%D in (*) do (
    if exist "%%D\.git" (
        echo.
        echo === Entrando in %%D ===
        cd "%%D"
        git pull
        cd ..
    )
)

echo.
echo Tutte le repository sono state controllate per aggiornamenti.
pause
