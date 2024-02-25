@echo off
mkdir tempgh
cd tempgh
gh release download -p "*.zip" -R IcaroKaue/GTNH-Portuguese-Translation
powershell -Command "& {Expand-Archive ./*.zip .. -Force}"
cd..
rmdir /s /q tempgh 