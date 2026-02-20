@echo off
setlocal

set SKILL_DIR=%USERPROFILE%\.agents\skills\bseoa
set SKILL_FILE=bseoa\SKILL.md

echo Installing Black SEO Analyzer OpenAI skill...

if not exist "%SKILL_FILE%" (
    echo Error: bseoa\SKILL.md not found. Run this script from the bseoa-openai-skill directory.
    exit /b 1
)

if not exist "%SKILL_DIR%" (
    mkdir "%SKILL_DIR%"
)

xcopy /E /Y "bseoa\*" "%SKILL_DIR%\"

echo.
echo Installed to: %SKILL_DIR%
echo.
echo Restart Codex and use $bseoa to activate the skill.
