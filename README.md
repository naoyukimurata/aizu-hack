## 環境
ruby2.5.0以上、gemにbundlerをインストールしていればOK(確認済み)

## 初期設定、コマンド
git clone ~　後<br>
* cd aizu-hack<br> 
* bundle install --path vendor/bundle<br> 
<br> 
railsもbundlerで管理しているので、
railsコマンドにbundle execが必要。<br>
（例）ローカル起動 : bundle exec rails s

## ディレクトリ構造
quizzesコントローラーのtop,hint,ansアクション(ページ)に対応して、css・jsファイルを個別に切り分けてある。

* cssファイル<br>
app/assets/stylesheets/quizzes/*
* jsファイル<br>
app/assets/javascripts/quizzes/*
