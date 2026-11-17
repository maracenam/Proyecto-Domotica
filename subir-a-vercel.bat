@echo off
cd /d "%~dp0"
title Subir pagina a Vercel
where node >/dev/null 2>nul
if errorlevel 1 (
  echo Falta Node.js. Instalalo desde https://nodejs.org ^(version LTS^) y vuelve a abrir este archivo.
  pause
  exit /b 1
)
echo Paso 1 de 2: revisando tu sesion de Vercel...
call npx --yes vercel@latest whoami >/dev/null 2>nul
if errorlevel 1 (
  echo Se abrira el navegador para iniciar sesion o crear tu cuenta de Vercel.
  call npx --yes vercel@latest login
)
echo.
echo Paso 2 de 2: subiendo la pagina...
call npx --yes vercel@latest --prod --yes > url-del-sitio.txt
if errorlevel 1 (
  echo No se pudo subir. Copia el mensaje de arriba y envialo a Claude.
  pause
  exit /b 1
)
echo.
echo Listo. Tu pagina quedo en:
type url-del-sitio.txt
echo.
pause
