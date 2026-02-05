---
description: 要件定義・仕様策定フェーズを開始する
---

# 要件定義サポートフロー (Assisted Spec)

1. **テンプレートの展開**
   `docs/requirements.md` が存在しない場合、テンプレートから作成する。
   Run: `mkdir -p docs && cp .agent/templates/requirements.md docs/requirements.md`

2. **ヒアリング & 提案モード (Interactive)**
   ユーザーに対し、以下のように案内する。
   「`docs/requirements.md` を作成しました。この項目を埋めていくことで仕様が決まります。
   **書き方がわからない項目があれば、『提案して』と言ってください。** 私が叩き台（Draft）を作成します。」

3. **入力サポート**
   ユーザーとの対話を通じて、`docs/requirements.md` をAIが随時更新する。
   - ユーザーがアイデアを話す → AIが要件項目に落とし込んで追記。
   - ユーザーが「わからない」と言う → AIが「一般的なWebアプリの構成ならA案、B案があります」と提案。

4. **完了確認**
   必須項目が埋まったら、`@[/design]` フェーズへ進むことを提案する。
