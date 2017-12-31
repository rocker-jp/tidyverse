# rocker-jp/tidyverse

[![Build Status](https://travis-ci.org/rocker-jp/tidyverse.svg?branch=master)](https://travis-ci.org/rocker-jp/tidyverse)

## This repository is designed for Japanese only, sorry!

## 概要

このレポジトリには、日本のRユーザのための、
- RStudio
- tidyverse群パッケージ
- 日本語フォント(IPAexMincho, IPAexGothic)

があらかじめインストールされたR言語Dockerコンテナを提供します。

## 起動方法

まずは、[Docker](https://docs.docker.com/installation/)が正しくインストールされているかを確認してください。
以下のコマンドを実行することで、RStudioサーバのコンテナを起動することが出来ます。

```shell
docker run -d -p 127.0.0.1:8787:8787 rockerjp/tidyverse
```

起動した後、`http://<サーバのアドレス(ローカルで実行している場合localhost)>:8787`にブラウザからアクセスすることでRStudioサーバを使用できます。
ユーザ名とパスワードは下記の通りです。

- username: rstudio
- password: rstudio

<!--
## ステータス ##

| Docker Container Source on GitHub                | Docker Hub Build Status and URL                                | Image Size
| :---------------------------------------         | :-----------------------------------------                     | :--------------
| RStudio (hadleyverse + 日本語環境) | [good](https://registry.hub.docker.com/u/tokyor/rstudio/)  | [![Layers and Size](https://images.microbadger.com/badges/image/tokyor/rstudio.svg)](https://registry.hub.docker.com/u/tokyor/rstudio//)
-->

## ライセンス
このDockerfileは MIT によりライセンスされています。
