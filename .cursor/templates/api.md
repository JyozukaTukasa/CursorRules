# API設計書 (API Specification)

## 1. エンドポイント一覧 (Endpoints)

| Method | URI | Description | Auth |
| :--- | :--- | :--- | :--- |
| GET | `/api/v1/users/me` | 自分の情報を取得 | Required |
| POST | `/api/v1/posts` | 新規投稿作成 | Required |

## 2. 詳細定義 (Details)

### `GET /api/v1/users/me`
- **Request**: None
- **Response**:
```json
{
  "id": "uuid",
  "name": "User Name"
}
```

### `[Method] [URI]`
- **Request**:
- **Response**:
