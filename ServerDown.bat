@echo off
chcp 65001
powershell -NoProfile -ExecutionPolicy RemoteSigned .\SrvHandler\ServerDown.ps1
echo Enterキーを入力すると、パッチ処理を終了します。
pause