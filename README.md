# rusttest

## 概要
rustの練習用コンテナです。ざっと構文や言語仕様を把握するためのサンプルソース(tutorial)付き。

## 使い方
作成するプロジェクトファイルのオーナー、グループを自分用に設定するため、  
DockerfileのUID、GID、UNAME、GNAMEに自分のユーザーID、グループID、ユーザー名、グループ名を 
セットします。そして、 
`docker-compose rust run`  
でコンテナに入れます。これらのIDはlinuxであれば  
`id ユーザー名`  
で確認できます。

`cargo new --bin プロジェクト名`  
でプロジェクトのフォルダが作成されますので、このフォルダの下に移動します。

雛形のソース(src/main.rs)をvimで編集し、このフォルダの下で  
`cargo run`  
を実行するとsrcの下のプログラムがビルドされて実行されます。

## Vimプラグイン
vimにはracer、rustfmtというプラグインをインストールしてます。

:RustFmtで整形、挿入モード中にC-x C-oで補完、:RustRunで実行など。
