. .\Config.ps1

Write-Host "[指定されているJarファイル]" -ForegroundColor Yellow; $jarPath
Write-Host "[指定されているサーバーフォルダ]" -ForegroundColor Yellow; $serverFolder
Write-Host "[指定されているプラグインフォルダ]" -ForegroundColor Yellow; $pluginFolder

$jarExists = Test-Path $jarPath

If ($jarExists) {
    Move-Item $jarPath $pluginFolder -force
    Write-Host "Jarファイルをプラグインフォルダに移動しました。"
} Else {
    Write-Host "指定されたファイルが見つかりませんが、このまま続行しますか？)" -ForegroundColor Red
    $isContinued = Read-Host " (y/N) " 
    if ($isContinued -ne "Y") {
        Write-Host "パッチ処理が停止されました。"
        exit
    }
}

cd $serverFolder
Write-Host "サーバーを起動します。"
docker-compose up -d
