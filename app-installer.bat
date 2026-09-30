@echo off
title App Installer
color 0A

rem ===== Verification =====

cls

echo ================================
echo.
echo         App Verification
echo.
echo ================================
echo.

rem ===== CHROME =====

echo Checking Google Chrome...
winget list Google.Chrome >nul

if %errorlevel%==0 (
echo [ OK ] Google Chrome
) else (
echo [ -- ] Google Chrome
)

rem ===== ZAP =====

echo.
echo.
echo Checking WhatsApp...
winget list WhatsApp >nul

if %errorlevel%==0 (
echo [ OK ] WhatsApp
) else (
echo [ -- ] WhatsApp
)

rem ===== OPERA =====

echo.
echo.
echo Checking Opera...
winget list Opera.Opera >nul

if %errorlevel%==0 (
echo [ OK ] Opera
) else (
echo [ -- ] Opera
)

rem ===== 7ZIP =====

echo.
echo.
echo Checking 7-Zip...
winget list 7zip.7zip >nul

if %errorlevel%==0 (
echo [ OK ] 7-Zip
) else (
echo [ -- ] 7-Zip
)

rem ===== VLC =====

echo.
echo.
echo Checking VLC...
winget list VideoLAN.VLC >nul

if %errorlevel%==0 (
echo [ OK ] VLC
) else (
echo [ -- ] VLC
)

rem ===== Complete =====

color 0A
echo.
echo Verification Complete!
pause


REM ===== MENU =====

:menu
color 0A

cls

echo ================================
echo.
echo            Installer
echo.
echo ================================
echo.
echo [ 1 ] Google Chrome
echo [ 2 ] WhatsApp
echo [ 3 ] Opera
echo [ 4 ] 7zip
echo [ 5 ] VideoLAN
echo [ 6 ] Install all
echo [ 7 ] Cancel
echo.

choice /c 1234567

echo.
if %errorlevel%==1 goto chrome	
if %errorlevel%==2 goto whatsapp
if %errorlevel%==3 goto opera
if %errorlevel%==4 goto zip
if %errorlevel%==5 goto vlc
if %errorlevel%==6 goto all
if %errorlevel%==7 goto exit


rem ===== CHROME =====

:chrome
cls
echo You chose Google Chrome!
echo.
echo Installing
echo.
echo Wait...

winget install Google.Chrome --accept-source-agreements --accept-package-agreements

echo.
echo Google Chrome installed
pause
goto menu


rem ===== ZAP =====

:whatsapp
cls
echo You chose WhatsApp
echo.
echo Installing
echo.
echo Wait...

winget search WhatsApp --accept-source-agreements --accept-package-agreements

echo.
pause
goto menu


rem ===== OPERA =====

:opera
cls
echo You chose Opera
echo.
echo Installing
echo.
echo Wait...

winget search Opera.Opera --accept-source-agreements --accept-package-agreements

echo.
pause
goto menu


rem ===== 7ZIP =====

:zip
cls
echo You chose 7zip
echo.
echo Installing
echo.
echo Wait...

winget install 7zip.7zip --accept-source-agreements --accept-package-agreements

echo.
pause
goto menu


rem ===== VLC =====

:vlc
cls
echo You chose VLC
echo.
echo Installing
echo.
echo Wait...

winget install VideoLAN.VLC --accept-source-agreements --accept-package-agreements

echo.
pause
goto menu


rem ===== ALL =====

:all
cls
echo Installing all
echo.
echo Wait...

echo.
echo Installing Google Chrome...
winget install Google.Chrome --accept-source-agreements --accept-package-agreements

echo.
echo Installing WhatsApp...
winget install WhatsApp --accept-source-agreements --accept-package-agreements

echo.
echo Installing Opera...
winget install Opera.Opera --accept-source-agreements --accept-package-agreements

echo.
echo Installing 7-Zip...
winget install 7zip.7zip --accept-source-agreements --accept-package-agreements

echo.
echo Installing VLC...
winget install VideoLAN.VLC --accept-source-agreements --accept-package-agreements

echo.
echo All the Programs were installed!
pause


rem ===== EXIT =====

:exit
echo.
echo Wrapping up...
pause
