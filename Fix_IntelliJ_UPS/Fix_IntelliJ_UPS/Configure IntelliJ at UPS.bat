@echo off

set bashfile=configureIntelliJ13_lecteurZ.bash

cd "C:\Program Files\Git"
"C:\Program Files\Git\bin\bash.exe" --login -i "%~dp0%bashfile%"
