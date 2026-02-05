# プロジェクト定義書 (GEMINI.md)

## 1. プロジェクト目的 (Purpose)
- **目的**: AIエージェント（Antigravity）が「最適・最速・最高品質」で開発を行うための**自律行動ルールセット (AntigravityRules)** を策定・管理・配布する。
- **ターゲット**: 全てのAIエージェント開発者およびチーム。
- **成果物**: 
  - `AntigravityKit.zip`: 配布用パッケージ（`.agent/`, `.github/` 等を含む）。
  - GitHub Repository: [JyozukaTukasa/AntigravityRules](https://github.com/JyozukaTukasa/AntigravityRules)

## 2. 経緯 & コンテキスト (Context)
このプロジェクトは以下のプロセスを経て現在の形（v1.0）に至った。

1.  **ルールの策定**:
    - **10層の防御**: セキュリティ、パフォーマンス、法務などを全方位でカバー。
    - **ワークフロー**: `@[/ship]` (出荷), `@[/consult]` (提案), `@[/spec-phase]` (要件定義) などを整備。
    - **Git戦略**: Topic Branch, Squash Merge, Atomic Commit の徹底。
    - **コーディング標準**: コメント(Why重視), 命名, エラー処理, ログ(構造化) の標準化。

2.  **安全性へのシフトレフト**:
    - **脅威モデリング**: タスク作成時に「攻撃者の視点」と「防御策」を定義することを義務化。
    - **RLS強制**: 実装前にDBセキュリティ(RLS)の有無をチェックするフローを強制。
    - **ブラウザテスト禁止**: AIによるブラウザ操作はコスト高かつ不安定なため、人間が行う運用に決定。

3.  **配布体制の確立**:
    - `export_antigravity.ps1` によるZip自動生成。
    - GitHubリポジトリによるバージョン管理。
    - 誰でも理解できる `README.md` の整備。

## 3. ディレクトリ構成 (Structure)
- `.agent/`: エージェントの脳みそ（ルール本体）。
  - `rules/`: 機能別に分割されたルール (`core.md`, `coding.md` etc.)。
- `docs/`: プロジェクトの記憶（仕様書、設計図など）。
- `GEMINI.md`: このファイル（目次）。

## 4. 今後の運用 (Roadmap)
- 現状は **v1.1 (Micro-Context Edition)** である。
- 今後ルールを変更する場合は、本プロジェクトで修正 → Zip生成 → Push の手順を踏む。
- 各プロジェクトは `@[/onboard]` で最新ルールに適応する。

## 5. Security Context (Static Facts)
- **Auth**: None (Documentation Repository - No Authentication required)
- **Tenancy**: Single Tenant (Open Source Repository)
- **PII Strategy**: **Zero Tolerance**. No PII allowed in any file.
- **Infra/Edge**: GitHub Repository (Static Hosting)

## 6. Current Phase (State Machine)
- **Status**: **Stable** (Defensive Mode)
  - _Planning_: 創造的・発散型。アイデア出し歓迎。
  - _Design_: 構造化型。アーキテクチャ決定。
  - _Execution_: 厳格・収束型。提案禁止、実装のみ。
  - _Stable_: 防御型。変更を嫌い、整合性最優先。
