## 概要
MySQLでダミーデータを使って試すリポジトリ

## データ作成

```
docker compose run app bash
pip install faker
cd  /docker-entrypoint-initdb.d
python create_data.py > 01_dump.sql
```

## DB起動

```
docker compose up -d
```

## phpmyadmin

- http://localhost:8057
- http://localhost:8080

## ER図

```mermaid
erDiagram

PREFECTURE {
int prefecture_no
string prefecture_name
}

USER {
binary user_uuid
string user_name
datetime created
datetime updated
int prefecture_no
}

POST {
int post_id
string title
string content
binary post_user_uuid
datetime created
datetime updated
}

COMMENT {
int comment_id
int post_id
string content
binary comment_user_uuid
datetime created
datetime updated
}

USER ||--|| PREFECTURE: prefecture_no
USER ||--o{ POST : user_uuid
USER ||--o{ COMMENT : user_uuid
POST ||--o{ COMMENT : post_id

```