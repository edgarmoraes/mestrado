@echo off

rem Verifique se o terminal do Anaconda existe no diretório do usuário atual
if exist "%USERPROFILE%\anaconda3\Scripts\activate.bat" (
    call "%USERPROFILE%\anaconda3\Scripts\activate.bat"
) else (
    echo Anaconda não encontrado, continuando sem ativar o ambiente.
)

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

rem Tente abrir o Jupyter Lab, se o Anaconda estiver ativado
if exist "%USERPROFILE%\anaconda3\Scripts\activate.bat" (
    jupyter lab
) else (
    echo Jupyter Lab não iniciado porque o Anaconda não foi encontrado.
)

pause
