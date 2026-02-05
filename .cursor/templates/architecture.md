# システムアーキテクチャ (System Architecture)

## 1. 全体構成図 (Context Diagram)
```mermaid
graph TD
    User[ユーザー] --> WebApp[Webアプリ]
    WebApp --> API[APIサーバー]
    API --> DB[(データベース)]
```

## 2. 技術スタック詳細 (Tech Stack)
- **Frontend**: 
- **Backend**: 
- **Infrastructure**: 
- **DevTools**: (Linter, TestFW etc.)

## 3. ディレクトリ構成 (Directory Structure)
```
src/
  ├── components/
  ├── features/
  ├── lib/
  └── pages/
```

## 4. 外部連携・依存関係
- **Auth Provider**: (Firebase Auth, Auth0 etc.)
- **External APIs**: 
