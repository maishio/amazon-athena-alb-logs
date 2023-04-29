# Amazon Athena analyze ALB access logs

サンプルアプリケーションを Amazon ECR にプッシュする手順を説明します。

## ローカル開発環境を整える

make コマンドを使って開発環境を整えます。コマンドは app ディレクトリで実行してください。

### ビルド

```bash
cd app
make build-dev
```

### 起動

```bash
make up
```

### 停止

```bash
make down
```

### api コンテナのシェルにログイン

```bash
make exec
```

## ローカル開発環境での動作確認

http://localhost:8000 にアクセスして サンプルアプリケーションが表示されることを確認します。

![image](https://user-images.githubusercontent.com/44653717/235288684-117dafba-95e2-4180-a52a-a66efa0d221f.png)

## サンプルアプリケーションを Amazon ECR にプッシュする

### 事前準備

1. AWS CLI を使用して、AWS アカウントにログインしてください。

```bash
aws configure
```

２. [Makefile](Makefile) の環境変数を自分の環境に合わせて設定してください。

```Makefile
ACCOUNT := 123456789012
ENV := myEnv
REGION := us-east-1
SERVICE := myService
```

3. `make build-prod` コマンドを実行して、Docker イメージを Amazon ECR にプッシュしてください。

```bash
make build-prod
```
