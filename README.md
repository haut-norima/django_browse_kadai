# このアプリがやること  
1. postgresqlの使い方をざっくり理解する
2. pgをdjangoで使う方法を理解する
3. コードを書く



# 開発環境を作る
## 最初にやること
1. dockerを立ち上げてdjangoのマイグレーションを行う

```bash
cd docker/
docker compose up --build
docker compose exec web python manage.py migrate  # データベースマイグレーション
docker compose exec web python manage.py createsuperuser  # 新スーパーユーザー作成
```
id: root  
password: 1234567890  
など。

2. 起動確認

```
http://localhost:8000/
```

3. admin確認
```
http://localhost:8000/admin
で、先ほど入力したid/pwでログインできるか確認
```







