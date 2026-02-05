# Cursor Rules 移植プロジェクト - 作業ログ

## 完了日時
2026-02-05

## プロジェクト概要
`.agent/` ディレクトリの Antigravity ルールを Cursor エディタ用の `.cursor/rules/` 形式に完全移植するプロジェクト。

---

## 完了した作業

### 1. コアルール移植 (4ファイル)
- `000-core.mdc` - 基本方針、判断停止ルール、出力効率化ルール、コマンド一覧
- `001-planning.mdc` - Planningフェーズルール
- `002-coding.mdc` - Executionフェーズルール
- `003-audit.mdc` - Stableフェーズルール

### 2. ワークフロー移植 (17ファイル)
| コマンド | ファイル | 状態 |
|---------|---------|------|
| `@help` | workflow-help.mdc | ✅ |
| `@init` | workflow-init.mdc | ✅ |
| `@onboard` | workflow-onboard.mdc | ✅ |
| `@spec` | workflow-spec.mdc | ✅ |
| `@design` | workflow-design.mdc | ✅ |
| `@impl` | workflow-impl.mdc | ✅ |
| `@test` | workflow-test.mdc | ✅ |
| `@review` | workflow-review.mdc | ✅ |
| `@refactor` | workflow-refactor.mdc | ✅ |
| `@audit` | workflow-audit.mdc | ✅ (10層チェック完全版) |
| `@sec` | workflow-sec.mdc | ✅ |
| `@perf` | workflow-perf.mdc | ✅ |
| `@qa` | workflow-qa.mdc | ✅ |
| `@ship` | workflow-ship.mdc | ✅ |
| `@consult` | workflow-consult.mdc | ✅ |
| `@sync` | workflow-sync.mdc | ✅ |
| `@wrap-up` | workflow-wrap-up.mdc | ✅ |

### 3. テンプレート移植 (5ファイル)
- `requirements.md` - 要件定義テンプレート
- `architecture.md` - アーキテクチャテンプレート
- `schema.md` - DB設計テンプレート
- `api.md` - API設計テンプレート
- `CURSOR.md` - プロジェクト知識ベーステンプレート（旧GEMINI.md）

### 4. 追加ファイル
- `.cursorrules` - 古いCursorバージョン用のルールファイル
- `README.md` - インストール手順・使い方ガイド（初心者向け）
- `COMMANDS.md` - コマンドクイックリファレンス
- `.vscode/antigravity.code-snippets` - エディタ用スニペット
- `.github/pull_request_template.md` - PRテンプレート
- `export-antigravity.ps1` - Windows用エクスポートスクリプト
- `export-antigravity.sh` - macOS/Linux用エクスポートスクリプト

### 5. 精査・修正
- `@audit` ワークフローの10層チェックが簡略化されていたため、完全版に修正
- 出力効率化ルール追加（冗長な説明を避ける、コードは完全出力など）
- `GEMINI.md` → `CURSOR.md` に名称変更

---

## ファイル構成

```
.cursor/
├── rules/
│   ├── 000-core.mdc           # コアルール（常時適用）
│   ├── 001-planning.mdc       # Planningフェーズ
│   ├── 002-coding.mdc         # Executionフェーズ
│   ├── 003-audit.mdc          # Stableフェーズ
│   └── workflow-*.mdc         # 17個のワークフロー
└── templates/
    ├── CURSOR.md              # プロジェクト知識ベーステンプレート
    ├── requirements.md
    ├── architecture.md
    ├── schema.md
    └── api.md

.cursorrules                   # 古いCursor用ルール
.github/pull_request_template.md
README.md
COMMANDS.md
export-antigravity.ps1
export-antigravity.sh
```

---

## GitHubリポジトリ
https://github.com/JyozukaTukasa/CursorRules

---

## 次回の作業候補
1. Zip配布用のRelease作成
2. 実際のプロジェクトでの動作テスト
3. 必要に応じてルールの微調整

---

## 重要な設計決定

### プロジェクト知識ベース
- 名称: `CURSOR.md`（元は`GEMINI.md`）
- AIは毎チャット開始時にこのファイルを読み込む
- テンプレートは `.cursor/templates/CURSOR.md` に配置

### ワークフローコマンド
- チャットで `@impl`、`@ship` 等を入力するとワークフロー発動
- コマンド一覧は `000-core.mdc` に記載

### セキュリティ
- 10層チェック（A〜I + 基本原則）を `@audit` で実行
- RLS必須、脅威モデリング必須
- プロンプトインジェクション対策あり
