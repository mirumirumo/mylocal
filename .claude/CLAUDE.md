# Global Development Preferences

## Language
- 日本語で応答すること

## Architecture Principles
- レイヤードアーキテクチャを基本とする
- 他のディレクトリが採用しているアーキテクチャをあまり参考とせず、プロジェクトごとに設計を立てる
- 早期リターンで条件分岐のネストを浅く保つ

## Containerization & Orchestration
- 特に指定がなければ仮想化ツールにはDockerを使用する
- オーケストレーションには基本的にDocker Composeを採用する
- Dockerfileはマルチステージビルドを使い、イメージサイズを最小化する
- docker-compose.yml ではサービス間の依存関係を明示する

## Code Style
- マジックナンバーや文字列リテラルは定数として定義する
- 型安全性を重視する。any型やuntyped objectの使用を避ける
- できるだけ簡潔にコーディングする。
- configファイルを自動生成する際も冗長性を排除する

## Git Workflow
- コミットメッセージは Conventional Commits に従う（feat:, fix:, refactor:, docs:, test:, chore:）
- 破壊的変更を含む場合は本文に BREAKING CHANGE を明記する

## Security
- パスワード・APIキー・シークレットをコードやログに絶対に含めない
- ユーザー入力は必ずバリデーション・サニタイズする
- 環境変数でシークレットを管理する
- 依存パッケージの脆弱性に注意する

## Documentation
- コメントには、「何をしているのか」や「何をしようとしているか」を簡潔に記述する
- README.md にはセットアップ手順と開発コマンドの使用例を記載する

## Workflow Preferences
- 実装前に方針を確認してから着手する。不明点があれば先に質問する
- 実装を提案する際に外部ライブラリを利用する予定なら、ライブラリ名を実装案に載せる
- 既存コードを変更する際は、まず現状を理解してから修正する
