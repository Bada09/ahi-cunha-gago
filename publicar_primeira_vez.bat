@echo off
chcp 65001 >nul
REM Publica esta pasta no GitHub pela primeira vez (repo Bada09/ahi-cunha-gago)
cd /d "%~dp0"
set "GIT=git"
where git >nul 2>nul
if errorlevel 1 for /d %%D in ("%LOCALAPPDATA%\GitHubDesktop\app-*") do set "GIT=%%D\resources\app\git\cmd\git.exe"
if not exist .git (
  "%GIT%" init -b main
  "%GIT%" remote add origin https://github.com/Bada09/ahi-cunha-gago.git
)
"%GIT%" add -A
"%GIT%" -c user.name=Bada09 -c user.email=badad@lavai.com.vc commit -m "Site AHI Cunha Gago"
"%GIT%" push -u origin main
echo.
echo Pronto. Agora ative o GitHub Pages: Settings ^> Pages ^> Branch: main / (root).
pause
