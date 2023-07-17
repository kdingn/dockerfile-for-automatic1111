## Dockerfile for AUTOMATIC1111

Stable Diffusion などの画像生成 AI を WEB UI 上で試すことのできる非常に便利なツール[AUTOMATIC1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui)を，ローカルの Python 環境を壊さないよう環境構築するための Dockerfile．

### 簡易利用手順
#### 初回実行（docker image / container 作成）
1. バッチファイル `docker-build.bat` を実行する
2. バッチファイル `docker-run.bat` の 3~5 行目の *D:/docker-automatic1111/* を出力画像やモデルを管理するのに適切なディレクトリに書き換える
3. バッチファイル `docker-run.bat` を実行する（時間がかかる）
4. 任意のブラウザで `127.0.0.0:7860` にアクセスする

#### 2回目以降
1. コマンド `docker start automatic1111` を実行する
2. 任意のブラウザで `127.0.0.0:7860` にアクセスする

