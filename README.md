# spigot-Docker

This repository will help you to configure and run Minecraft JE Spigot server on Docker.

## Description

Dockerでspigotサーバーを立ち上げるためのDockerファイル群。mysql及びphpmyadminも同時に立ち上げるようになっているので、不要ならば適宜docker-compose.ymlを編集してご使用ください。

また、Windowsバッチファイルも一緒に入っています。ServerHandlerの中のConfig.ps1を編集した上でご利用ください。

## Requirement

* Docker
* Windows PowerShell 5.1

## License

MIT License

## Special Thanks

参考にさせていただいたサイト。

* gorohash - Dockerイメージを軽量化する
  * https://qiita.com/gorohash/items/2358b4b9e0c708e510d0
* GiganticMinecraft - SeichiAssist
  * https://github.com/GiganticMinecraft/SeichiAssist
