# プロジェクト知識ベース (CURSOR.md)

<!--
このファイルはAIがプロジェクトを理解するための「前提知識」です。
新しいチャットを開始するたびに、AIはこのファイルを最初に読み込みます。
プロジェクトの概要、技術スタック、ビジネスルールを記載してください。
-->

## 1. プロジェクト概要 (Overview)
- **プロジェクト名**: 
- **目的**: 
- **ターゲットユーザー**: 

## 2. 技術スタック (Tech Stack)
- **Frontend**: (例: Next.js 14, React, TailwindCSS)
- **Backend**: (例: Node.js, Express, Prisma)
- **Database**: (例: PostgreSQL, Supabase)
- **Infrastructure**: (例: Vercel, AWS)
- **Test Command**: `npm test` (例: pytest, go test, cargo test)
- **その他**: (例: Stripe, SendGrid)

## 3. ディレクトリ構成 (Structure)
```
src/
├── app/           # Next.js App Router
├── components/    # UIコンポーネント
├── features/      # 機能別モジュール
├── lib/           # ユーティリティ
└── types/         # 型定義
```

## 4. ビジネスルール (Business Rules)
<!-- このアプリ固有のルールを記載 -->
- 例: ユーザーは1つの組織にのみ所属できる
- 例: 管理者のみがユーザーを削除できる

## 5. セキュリティコンテキスト (Security Context)
- **認証方式**: (例: JWT, Session, OAuth)
- **マルチテナント**: Yes / No
- **RLSポリシー**: (例: tenant_id による行レベルセキュリティ)
- **PII取り扱い**: (例: メールアドレスはログに出力しない)

## 6. Security Profile (L1-L4)
<!-- 
プロジェクトのセキュリティ要件に応じて選択してください。
監査 (@audit, @ship) の厳格さが変わります。
-->
- **Level**: L2 (Standard)

| Level | 名称 | 対象 | 説明 |
|-------|------|------|------|
| L1 | Startup | MVP/Prototype | 認証とPII保護のみ。高速開発優先。 |
| **L2** | **Standard** | **SaaS標準** | **推奨デフォルト**。バランス型。 |
| L3 | Enterprise | 金融/医療 | 全10層の監査を適用。厳格。 |
| L4 | National | 国家機密/防衛 | Air-Gap必須。最高レベル。 |

## 7. 現在のフェーズ (Current Phase)
<!-- AIの振る舞いを制御するための状態 -->
- **Status**: Planning / Design / Execution / Stable
  - _Planning_: 発散型。アイデア出し歓迎。
  - _Design_: 構造化型。設計決定。
  - _Execution_: 収束型。提案禁止、実装のみ。
  - _Stable_: 防御型。変更を嫌い、整合性最優先。

## 8. 未解決の課題・メモ (Notes)
<!-- 後で対応が必要な事項をメモ -->
- 
