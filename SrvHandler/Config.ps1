# 更新したいプラグインの絶対パス
[String]$jarPath = "C:\SeichiDev\Projects\AdvancedMailer\build\libs\AdvancedMailer-0.0.1.jar"

# Spiogtサーバーを置きたいフォルダの絶対パス。docker-composeなどと一緒に置く必要があるため、実際にはこのリポジトリのファイルをすべてここに置くことが想定されている
[String]$serverFolder = "C:\SeichiDev\Srv"

# docker-compose.ymlで、spigotサービスのボリュームの指定を変更した場合等に変更する。serverFolderで指定したものの直下にこのフォルダが来るように組んであるので、相対パスのような指定
[String]$pluginFolder = $serverFolder + "\spigot-data\plugins"