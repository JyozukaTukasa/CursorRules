---
description: 基本設計・詳細設計を行う（実装前の青写真作成）
---

# 設計フェーズ (Assisted Design)

1. **前提チェック (Pre-flight Check)**
   - `docs/requirements.md` が存在するか？ 無ければ `@[/spec-phase]` を促して終了。
   - `GEMINI.md` の技術選定は済んでいるか？

2. **テンプレート展開**
   以下のファイルが存在しない場合、テンプレートから作成する。
   Run: `cp .agent/templates/architecture.md docs/architecture.md && cp .agent/templates/schema.md docs/schema.md && cp .agent/templates/api.md docs/api.md`

3. **ヒアリング & 提案モード**
   「要件定義書を元に、基本設計（DB・API・アーキテクチャ）を作成します。
   **『要件に合わせて全部提案して』**   - `docs/schema.md`: データベース設計
   - `docs/api.md`: API設計
   - **[推奨] 可視化**: 複雑なロジックやリレーションがある場合は、必ず `mermaid` 記法で図示し、認知負荷を下げること。
   - **[必須] ディレクトリ構成図**: `docs/architecture.md` に、これから作る「機能ごとのディレクトリ構成 (Tree)」を必ず定義すること。

3. **レビュー依頼**
   「設計が固まりましたか？ 問題なければ `@[/impl]` で実装に進んでください。」
