rem Adicione todas as mudanças feitas localmente
git add .

rem Solicita uma mensagem de commit do usuário
set /p commitMsg="Digite a mensagem do commit: "

rem Cria um commit com a mensagem inserida
git commit -m "%commitMsg%"

rem Envia as mudanças para o repositório remoto
git push origin main

rem Confirmação de sucesso
echo Commit e push realizados com sucesso!
pause