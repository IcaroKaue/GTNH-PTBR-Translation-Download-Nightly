@echo off
mkdir tempgh
cd tempgh
gh release download pt_BR-latest -p "*.zip" -R GTNewHorizons/GTNH-Translations
powershell -Command "& {Expand-Archive ./*.zip .. -Force}"
cd..
rmdir /s /q tempgh
