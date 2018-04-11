# rusttest
rustの練習用コンテナです。  
DockerfileのUID,GID,UNAME,GNAMEに自分のユーザーID,グループID,ユーザー名、グループ名をセットして  
`docker-compose rust run`  
でコンテナに入れます。  
`cargo new --bin プロジェクト名`  
でプロジェクトのフォルダが作成されますので、このフォルダの下に移動します。  
雛形のソース(src/main.rs)をvimで編集し、このフォルダの下で  
`cargo run`  
するとsrcの下のプログラムがビルドされて実行されます。

vimではracer、rustfmtというプラグインが使えるようになってます。  
:RustFmtで整形、挿入モード中にC-x C-oで補完、:RustRunで実行など。
