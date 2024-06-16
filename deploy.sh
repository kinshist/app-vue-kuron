#!/usr/bin/env sh

# エラー時にスクリプトを停止
set -e

# ビルド
npm run build

# distディレクトリに移動
cd dist

# カスタムドメインの設定がある場合は、以下のコメントを外して設定する
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# GitHub Pagesにデプロイする場合
git push -f https://github.com/kinshist/app-vue-kuron.git main:gh-pages

cd -
