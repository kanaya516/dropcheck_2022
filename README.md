こちらはwatalさんによる[レポジトリ](https://github.com/watal/dropcheck_2019)をforkして自分なりに改変したものです．
一部機能を削除したり変更したりしているため，一次ソースが知りたい方はwatalさんのレポジトリまで．

# dropcheck_2022
* macOS（バージョン12.2.1で動作確認済）  

## 準備
### 各種インストール
```
$ brew install mtr tmux tmuxp watch
```
### config準備
```
$ vi dropcheck_tmux.yml //digしている行にShownetのDNSサーバの情報を記入
```

## 構成

### dropcheck.sh
後述の`dropcheck_tmuxp.yml`を呼び出すスクリプトです．
無線インターフェースが有効化されていた場合、無効にした上でドロップチェックを開始してくれます．

`chmod +x dropcheck.sh` した上で `sudo dropcheck.sh` で実行してください。
内部では，Wi-Fiのインタフェースを無効にして `sudo tmuxp load dropcheck_tmux.yml` を読んでいるだけです．

### dropcheck_tmux.yml
tmuxpを用い、Dropcheck用の画面を作成します。  
単体実行：`sudo tmuxp load dropcheck_tmux.yml`
