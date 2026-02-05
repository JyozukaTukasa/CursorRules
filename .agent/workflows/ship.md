---
description: 出荷前の最終全チェックを行う（Test, Review, Sec, Perf, QA）
---

# 出荷パイプライン (The Ship Gate)

Run: `cat .agent/rules/core.md .agent/rules/audit.md`
(Current Phase: Stable)

// turbo
1. **ゲート0: The Gatekeeper (Security Audit)**
   Run: `@[/audit]`
   厳格監査を通過していない変更は、テストすらさせない。
   「監査レポートで Critical な指摘が0件であること」を確認する。

2. **ゲート1: 機能動作 (Test)**
   Run: `npm test`
   失敗したら即終了。

2. **ゲート2: コード品質 (Review)**
   `rules.md` 違反、命名規則違反がないか。

3. **ゲート3: セキュリティ & 法務 (Sec)**
   Run: `@[/sec]` 相当のチェック (RLS, Vulnerabilities, License, PII)。

4. **ゲート4: パフォーマンス & 運用 (Perf)**
   Run: `@[/perf]` 相当のチェック (Bundle Size, Cost, Complexity)。

5. **ゲート5: UX & データ整合性 (QA)**
   Run: `@[/qa]` 相当のチェック (A11y, SEO, Migration)。

6. **完了判断**
   全てクリアした場合のみ、「**SHIP IT! (出荷可能)**」と宣言する。
