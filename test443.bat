@echo off
chcp 65001 >nul
echo.
echo ==========================================
echo   WoodPrep - 443-as port ellenorzese
echo ==========================================
echo.
echo Teszteles folyamatban...
echo.

powershell -Command "try { $tcp = New-Object System.Net.Sockets.TcpClient; $tcp.Connect('google.com', 443); $tcp.Close(); exit 0 } catch { exit 1 }" >nul 2>&1

if %errorlevel% == 0 (
    echo  [OK] A 443-as port NYITVA van.
    echo.
    echo  A WoodPrep plugin mukodni fog az On gepein.
    echo  Telepitheti a plugint.
) else (
    echo  [HIBA] A 443-as port ZARVA van.
    echo.
    echo  A WoodPrep plugin NEM fog mukodni.
    echo  Kerem keresse meg az IT reszleget es
    echo  kerjek hogy nyissak ki a 443-as portot
    echo  kimeneti iranyban.
)

echo.
echo ==========================================
pause
