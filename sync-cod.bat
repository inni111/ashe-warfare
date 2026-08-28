@echo off
rem Keep cod.html identical to index.html (single source of truth: index.html)
copy /Y "%~dp0index.html" "%~dp0cod.html" >nul
if %errorlevel%==0 (
  echo [OK] cod.html synced from index.html
) else (
  echo [FAIL] sync error
)
pause
