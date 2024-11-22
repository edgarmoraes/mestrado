@echo off
rem Abra o terminal da Anaconda
call C:\Users\edgar\anaconda3\Scripts\activate.bat

rem Use o diretório onde o script .bat está localizado
cd "%~dp0"

rem Abra o Jupyter Lab
jupyter lab