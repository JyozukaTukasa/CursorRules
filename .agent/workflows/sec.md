---
description: セキュリティ監査を行う（脆弱性・秘密情報のチェック）
---

# セキュリティ & コンプライアンス監査 (SecOps)

// turbo
1. **DBセキュリティ & インフラ診断 (Infra)**
   - RLS (Row Level Security): 全テーブルで有効か？
   - Index: FKにインデックスはあるか？
   - Rate Limit: DDoS対策はあるか？

2. **依存関係 & サプライチェーン (Supply Chain)**
   - `npm audit`: 既知の脆弱性ライブラリがないか？
   - **[New] License Check**: `GPL` などの汚染ライブラリが混入していないか？ (`license-checker` 等の利用推奨)

3. **静的解析 & プライバシー (Code & Privacy)**
   - Secrets: `API_KEY`, `PASSWORD` 等のハードコードチェック。
   - **[New] PII Scan**: ログ出力コードに `email`, `phone`, `credit_card` などの個人情報変数がそのまま渡されていないか？

4. **レポート (Risk Report)**
   - Critical: 直ちに修正が必要（脆弱性、Secret漏洩）
   - Warning: リリース前に対処推奨（ライセンス不明、PII疑惑）
