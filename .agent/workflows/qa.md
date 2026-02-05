---
description: UX、SEO、データ整合性を監査する
---

# 品質保証監査 (QA & Integrity)

// turbo
1. **UX & アクセシビリティ (Frontend Quality)**
   - **A11y**: 画像に `alt` 属性はあるか？ ボタンはキーボード操作可能か？
   - **Vitals**: LCP (読み込み速度)、CLS (レイアウトずれ) に悪影響を与える実装はないか？

2. **SEO & Meta**
   - **Tags**: `title`, `description`, `og:image` は動的に設定されているか？
   - **Structure**: `h1` は1ページに1つか？ セマンティックなHTMLか？

3. **データ整合性 (Data Integrity)**
   - **Migration**: マイグレーションファイルに `down` (ロールバック処理) は記述されているか？
   - **Mismatch**: 論理削除フラグ(`deleted_at`)と物理削除が混在して矛盾していないか？
