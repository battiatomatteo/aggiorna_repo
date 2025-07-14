@echo off
echo ============================
echo Aggiornamento repository Git
echo ============================

REM Lista dei percorsi (ognuno racchiuso tra virgolette)
set REPOS="tutti i percorsi delle tue repo"

REM Ciclo su ogni percorso
for %%R in (%REPOS%) do (
    echo.
    echo 🔍 Verifico la cartella: %%~R
    if exist "%%~R\.git\" (
        echo ✅ Repository trovata! Entro nella cartella...
        pushd "%%~R"
        echo ▶️  Eseguo: git pull
        git pull
        popd
    ) else (
        echo ⚠️  ATTENZIONE: "%%~R" NON è una repository Git
    )
)

echo.
echo ✅ Controllo completato.
echo Premi un tasto per chiudere...
pause >nul
