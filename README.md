# web-server-design

講義「Webサーバ設計」の課題用環境

- Ruby 2.6.8
- Rails 5.2.1
- SQLite 3

Ruby

## 使い方

リポジトリをCloneして移動する．

```
git clone https://github.com/tomoyk/web-server-design.git
cd web-server-design
```

コンテナをビルドする．

```
docker build -t app .
```

コンテナを作成し，シェルに入る．

```
docker run -it -v $PWD:/share app bash
```

モデルを作成する．適宜モデルに置き換える．

```
rails g scaffold Memo datetime:timestamp title:string content:text
```

ER図を作成する．

```
rake erd filetype=png title="モデル名"
```

ER図をコンテナ内からホストマシンへコピーする．

```
cp xxx.png /share
```

