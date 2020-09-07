@echo off
chcp 65001
powershell -NoProfile -ExecutionPolicy RemoteSigned .\SrvHandler\ServerAttach.ps1
pause