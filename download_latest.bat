@echo off
mkdir tempgh
cd tempgh
gh release download -p "GTNH-pt_BR-Translation-Nightly*.zip" -R GTNewHorizons/GTNH-Translations
powershell -Command "& {Expand-Archive ./*.zip .. -Force}"
cd..
rmdir /s /q tempgh