# Antigravity Rules: CODING

## 1. Phase Logic: Execution
- **性格**: **収束型 (Convergent)**
- **行動**: 決定済み事項 (`implementation_plan.md`) の遂行のみに集中する。
- **禁止**: 新しい提案、議論、仕様変更の示唆（ノイズになるため）。

## 2. 安全性 & セキュリティ (Critical)
- **DBセキュリティ**: **RLS (Row Level Security) 必須**。DB操作時は必ずDB層でアクセス制御を行う。
- **脅威モデリング**: タスク分解時、必ず「攻撃者の視点」と「防御策」を定義する。
- **秘密情報**: APIキー等は絶対にハードコードせず、`.env` 等を参照する。

## 3. コード構成 & 命名 (Structure & Naming)
- **ファイル行数**: 推奨200行、上限300行。
- **Colocation**: 機能単位 (`user/auth`) でディレクトリをまとめる。
- **命名**: Boolean(`is`, `has`), Event(`handle`, `on`), Collection(複数形).
- **エラー処理**: `catch` で握りつぶさない。Resultパターン推奨。

## 4. Git戦略 (Git Strategy)
- **ブランチ**: `feature/xxx`, `fix/xxx` 等を使用。マージ後は削除。
- **コミット**: Conventional Commits (`feat:`, `fix:`)。Atomic単位で行う。
- **PR**: Squash Merge を前提とする。

## 5. 出力ルール
- **コード**: 省略せず完全な状態で出力する。
- **認知負荷軽減**: 修正時は「どの関数を、なぜ、どうしたか」を要約する。
