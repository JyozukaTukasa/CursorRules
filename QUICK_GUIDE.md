# Cursor Rules クイックガイド

**30秒で使い始める。**

---

## インストール

1. `.cursor/` フォルダをプロジェクトにコピー
2. Cursorを再起動
3. `@help` で動作確認

---

## コマンド早見表

| やりたいこと | コマンド |
|:-------------|:---------|
| 新機能を作りたい | `@spec` |
| 設計してほしい | `@design` |
| 実装してほしい | `@impl` |
| テストしたい | `@test` |
| リリース前チェック | `@ship` |
| 困った・迷った | `@help` |
| 昨日の続き | `@onboard` |
| 作業終了 | `@wrap-up` |
| 設定確認 | `@config` |

---

## 基本フロー

```
@spec → @design → @impl → @test → @ship
```

**鉄則**: いきなり `@impl` しない。必ず `@design` から。

---

## Security Profiles

| Level | 対象 | 説明 |
|-------|------|------|
| L1 | MVP | 最速開発 |
| **L2** | **SaaS** | **推奨** |
| L3 | 金融/医療 | 厳格 |
| L4 | 国家機密 | 最高 |

`@init` で設定、`CURSOR.md` で変更可能。

---

## チャット運用

```
作業完了 → @wrap-up → 新しいチャット → @onboard
```

長くなったらリセット。記憶は `memory/checkpoint.md` に保存される。

---

詳細は **[CursorRules_Manual.md](./CursorRules_Manual.md)** を参照。
