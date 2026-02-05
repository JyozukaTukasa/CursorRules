---
description: プロジェクトの初期セットアップを行う（GEMINI.md作成など）
---

# プロジェクト初期化フロー

1. プロジェクトの知識ベース `GEMINI.md` のテンプレートを作成
   （技術スタックやDB設計を書くための雛形）
   Run: `echo "# Project Name\n\n## Tech Stack\n- Frontend:\n- Backend:\n- Database:\n\n## Database Schema\n\n## Business Rules\n" > GEMINI.md`

2. ドキュメント用ディレクトリの作成
   (仕様書などを格納する場所)
   Run: `mkdir docs`

3. Linter/Formatterのセットアップ提案
   「開発効率向上のため、Linter (ESLint/Prettierなど) を導入しますか？技術スタックに合わせて設定を行えます。」と確認する。

4. ユーザーへの確認
   「GEMINI.md を作成しました。このプロジェクトで使用する技術スタック（言語・FW）を記述してください。」と伝える。
