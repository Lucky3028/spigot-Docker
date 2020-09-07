. .\Config.ps1

Write-Host "[指定されているサーバーフォルダ]" -ForegroundColor Yellow; $serverFolder

cd $serverFolder
Write-Host "サーバーのビルドを行います。"
docker-compose build -m 2g