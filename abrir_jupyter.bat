@echo off
rem Abra o terminal da Anaconda
call C:\Users\edgar\anaconda3\Scripts\activate.bat

rem Use o diretório onde o script .bat está localizado
cd "%~dp0"

rem Atualize o repositório do GitHub (pull)
git pull

rem Adicione todas as mudanças locais ao Git
git add .

rem Faça um commit com uma mensagem automática
git commit -m "Atualização automática pelo script .bat"

rem Envie as mudanças para o GitHub (push)
git push origin main

rem Abra o Jupyter Lab
jupyter lab
