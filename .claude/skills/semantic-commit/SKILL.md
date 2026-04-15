---
name: semantic-commit
description: >
  Claude Codeが生成・変更したファイルを、意味的に適切な単位で自動的にGitコミットするスキル。
  コード変更の完了後に、変更内容を論理的なまとまり（機能追加、リファクタリング、バグ修正、設定変更など）に
  分類し、Conventional Commits形式でコミットメッセージを生成してコミットする。
  以下のような場面で必ずこのスキルを使うこと：
  - ユーザーが「コミットして」「変更を保存して」「gitに記録して」と言ったとき
  - 複数ファイルにまたがる変更を行った後にコミットが必要なとき
  - ユーザーが「意味的にコミットを分けて」「適切な粒度でコミットして」と頼んだとき
  - 大きなタスクの完了後に変更をまとめてコミットするとき
  - 「commit」「コミット」「git」というキーワードが変更作業の文脈で出たとき
  タスク完了後にコミットが未実施であれば、積極的にこのスキルの使用を提案すること。
disable-model-invocation: true
---

# Semantic Commit

変更を「1コミット = 1つの論理的な変更」の原則で分割してコミットする。

## ワークフロー

1. `git status --porcelain` と `git diff` / `git diff --cached` で変更を把握
2. 変更内容を読み、意味的なグループに分割
3. グループごとに `git add <files> && git commit -m "<message>"` を実行
4. `git log --oneline -10` と `git status` で完了確認

## グルーピング基準

**同一コミットにする:** 同じ機能に属する実装・テスト・型定義・スタイル・マイグレーション・パッケージ追加とその使用コード

**別コミットに分ける:** 新機能 vs リファクタリング vs バグ修正 vs 設定変更 vs ドキュメント更新 vs 依存更新。独立した関心事は分離する。

**依存順序:** コミットAがBの前提なら、Aを先にコミットする。

**迷ったらまとめる方向に倒す。** 過度に細かいコミットは履歴のノイズになる。

## コミットメッセージ

Conventional Commits形式: `<type>(<scope>): <subject>`

typeは `feat|fix|refactor|docs|test|chore|style|perf|ci|build` から選択。scopeはモジュール名や機能名（省略可）。subjectは命令形・小文字開始・50文字以内・ピリオドなし。

複数ファイルにまたがる変更や動機の説明が必要な場合のみbodyを追加（72文字折り返し）。

プロジェクトに `.commitlintrc` や CONTRIBUTING.md 等の規約があればそちらを優先する。

## 分割の目安

分割を検討: 変更ファイル10以上 / diff 300行以上 / メッセージに"and"が2回以上 / 一文で説明できない
まとめを検討: import追加だけ / テストだけで実装なし / 型定義だけで使用箇所なし

## 報告形式

```
コミットしました：
1. abc1234 feat(auth): add JWT token validation middleware
   - src/middleware/auth.ts, src/utils/jwt.ts
2. def5678 test(auth): add unit tests for JWT validation
   - tests/middleware/auth.test.ts
```

## エッジケース

- **Git未初期化**: ユーザー確認後に `git init`。`.gitignore` 作成も提案
- **コンフリクト/リベース中**: コミットせず状態を説明し対処を相談
- **ステージング済み変更あり**: 既存ステージングを尊重するかリセットするかユーザーに確認
- **大量変更（50ファイル以上）**: 変更概要を提示し分割方針を相談してからコミット