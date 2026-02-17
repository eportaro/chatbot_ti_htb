@echo off
set PYTHONIOENCODING=utf-8
chcp 65001 > nul
cd /d "%~dp0"

:: Check for virtual environment and activate if found
if exist venv\Scripts\activate.bat (
    echo Activando entorno virtual venv...
    call venv\Scripts\activate.bat
) else (
    if exist .venv\Scripts\activate.bat (
        echo Activando entorno virtual .venv...
        call .venv\Scripts\activate.bat
    )
)

echo Iniciando Chatbot TI...
python app_openai.py
pause
