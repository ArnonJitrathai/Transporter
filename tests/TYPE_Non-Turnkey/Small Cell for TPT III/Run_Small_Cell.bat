@echo off

REM สร้างตัวแปรวันที่ yyyyMMdd เช่น 20250731
for /f %%a in ('powershell -command "Get-Date -Format \"yyyyMMdd\""') do set DATE_PART=%%a

REM สร้างตัวแปรเวลา HHmm เช่น 1704
for /f %%a in ('powershell -command "Get-Date -Format \"HHmm\""') do set TIME_PART=%%a

REM ตัวแปร timestamp สำหรับแสดงใน log เช่น [ 2025-07-31 / 17:04 ]
for /f %%a in ('powershell -command "[string]::Format(\'[ {0:yyyy-MM-dd / HH:mm} ]\', (Get-Date))"') do set DISPLAY_TIMESTAMP=%%a

REM ตัวแปร timestamp แบบเต็ม  yyyy MM dd HH:mm  เช่น 2025 07 31 17:04
for /f %%a in ('powershell -command "Get-Date -Format \"yyyy-MM-dd_HH:mm\""') do set FULL_TIMESTAMP=%%a

REM กำหนด path พื้นฐาน
for %%i in ("%~dp0.") do set BASE_PATH=%%~fi


REM echo BASE_PATH=%BASE_PATH%

REM กำหนดโฟลเดอร์ output ตามวันที่และเวลา
set OUTPUT_DIR=%BASE_PATH%\Results\%DATE_PART%\%TIME_PART%

REM สร้างโฟลเดอร์ (ทั้งสองชั้น)
mkdir "%OUTPUT_DIR%"

REM รัน robot พร้อมส่งตัวแปรและกำหนด outputdir
robot --include Standard_Test --outputdir "%OUTPUT_DIR%" --variable OUTPUT_DIR:"%OUTPUT_DIR%" --variable TIMESTAMP:"%DISPLAY_TIMESTAMP%" --variable FULL_TIMESTAMP:"%FULL_TIMESTAMP%" "%BASE_PATH%"

pause