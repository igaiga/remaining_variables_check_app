# 複数リクエストで残存する変数をテストするサンプルコード

## 起動手順

```
rails assets:precompile
RAILS_ENV=production rackup config.ru
```

## コード作成時の手順メモ

```
rails g controller foo index
```

FooController#index をテストコードに変更
