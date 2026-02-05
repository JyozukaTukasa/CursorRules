# Cursor Rules (Antigravity)

Cursorエディタを **「自律型AIエージェント」** に進化させるルールセットです。

チャットでコマンドを入力するだけで、AIが設計・実装・監査を自動で行います。

---

## ダウンロード

**👇 クリックして即ダウンロード**

[![Download ZIP](https://img.shields.io/badge/Download-ZIP-blue?style=for-the-badge&logo=github)](https://github.com/JyozukaTukasa/CursorRules/archive/refs/heads/main.zip)

または [Releases](https://github.com/JyozukaTukasa/CursorRules/releases) から最新版を取得

---

## インストール（3ステップ）

### 1. ダウンロードしたZipを解凍

### 2. `.cursor/` フォルダをプロジェクトにコピー

```
your-project/
├── .cursor/        ← これをコピー
│   ├── rules/
│   └── templates/
├── .cursorrules    ← 古いCursor用（あれば一緒に）
└── src/
```

### 3. Cursorを再起動

完全に閉じてもう一度開く。`@help` と入力して動作確認。

---

## 使い方

| やりたいこと | コマンド |
| :--- | :--- |
| 新機能を作りたい | `@spec` |
| 設計してほしい | `@design` |
| 実装してほしい | `@impl` |
| バグを直したい | `@impl` |
| テストしたい | `@test` |
| リリース前チェック | `@ship` |
| 困った・迷った | `@help` |

**詳細は [CursorRules_Manual.md](./CursorRules_Manual.md) を参照**

---

## 基本フロー

```
@spec → @design → @impl → @test → @ship
```

> いきなり `@impl` しない。必ず `@design` で設計図を作ってから。

---

## 含まれるファイル

```
.cursor/
├── rules/           # AIルール（21ファイル）
└── templates/       # ドキュメント雛形（5ファイル）

.cursorrules         # 古いCursor用
.github/             # PRテンプレート
.vscode/             # エディタスニペット
CursorRules_Manual.md # 詳細マニュアル
```

---

## ライセンス

MIT License

---

## 貢献

改善案・バグ報告は [Issues](https://github.com/JyozukaTukasa/CursorRules/issues) へ。
