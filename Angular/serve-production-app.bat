::For Angular App 18+ with browser ouput

@echo off
set APP_NAME=%1

if "%APP_NAME%"=="" (
  echo Usage: %0 ^<app-name^>
  exit /b 1
)

ng build --configuration production
cd dist\%APP_NAME%
http-server -p 8080
