# Pythonイメージをベースにする
FROM python:3.10-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY docker/requirements.txt /app/

# 依存関係をインストール
RUN pip install --no-cache-dir -r requirements.txt

# プロジェクトディレクトリをボリュームにマウント
VOLUME ["/app"]

# アプリケーションコードをコピー（ここでは初期状態ですので実際のディレクトリ構成を考慮）
COPY . /app/

# Djangoサーバーの起動時コマンド
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]