@echo off

bitsadmin /transfer AcessoRemoto /priority normal https://sag.centrallab.com.br/x64.zip C:\Users\%username%\Downloads\x64.zip

bitsadmin /transfer instaladorDoro /priority normal https://www.the-sz.com/common/get.php?product=doro C:\Users\%username%\Downloads\DoroSetup.zip

bitsadmin /transfer InstaladorAnyDesky /priority normal https://download.anydesk.com/AnyDesk.exe C:\Users\%username%\Downloads\AnyDesk.exe

bitsadmin /transfer InstaladorGoogleChrome /priority normal "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" C:\Users\%username%\Downloads\ChromeSetup.exe


start/wait "" "C:\Users\%username%\Downloads\ChromeSetup.exe"

pause

start/wait "" "C:\Users\%username%\Downloads\AnyDesk.exe"

start/wait "" "C:\Users\%username%\Downloads\DoroSetup.zip\DoroSetup.exe"

cd C:\Users\%username%\Downloads

"C:\Program Files\WinRaR\WinRAR.exe" -df x -y  x64.zip
 
start "" "C:\Users\%username%\Downloads\epskit_x64.exe"

exit