---
description: パフォーマンス、コスト、運用性を監査する
---

# パフォーマンス & 運用監査 (PerfOps)

// turbo
1. **コード品質 & バンドルサイズ (Code Health)**
   - **Complexity**: 循環的複雑度が10を超える関数はないか？
   - **Bundle Size**: ビルドサイズが閾値（例: 500KB）を超えていないか？
   - **N+1 Check**: ループ内でクエリを発行している箇所はないか？

2. **回復性 & 可観測性 (Resiliency & Observability)**
   - **Circuit Breaker**: 外部API呼び出しにタイムアウト/リトライ設定はあるか？
   - **Traceability**: ログ出力時に `Request-ID` や `User-ID` などのコンテキストが含まれているか？

3. **クラウドコスト (FinOps)**
   - **Resource Quota**: オートスケールの上限設定は適切か？（青天井になっていないか）
   - **Zombie Check**: 使われていない画像リソースや旧エンドポイントが放置されていないか？
