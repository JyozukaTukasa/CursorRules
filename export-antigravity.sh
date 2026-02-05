#!/bin/bash
# Antigravity Cursor Rules - Export Script (macOS/Linux)
# このスクリプトは、Cursorルールをzip形式でエクスポートします。
# 使用方法: ./export-antigravity.sh

set -e

# 設定
EXPORT_NAME="antigravity-cursor-rules"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
ZIP_FILENAME="${EXPORT_NAME}-${TIMESTAMP}.zip"
TEMP_DIR="/tmp/${EXPORT_NAME}"

echo "=== Antigravity Cursor Rules Exporter ==="
echo ""

# 一時ディレクトリの作成
rm -rf "$TEMP_DIR"
mkdir -p "$TEMP_DIR"

# エクスポート対象のコピー
echo "[1/4] Copying .cursor directory..."
cp -r .cursor "$TEMP_DIR/"

echo "[2/4] Copying .github directory..."
if [ -d ".github" ]; then
    cp -r .github "$TEMP_DIR/"
fi

echo "[3/4] Copying documentation files..."
# GEMINI.mdのテンプレートをコピー（存在する場合）
if [ -f "GEMINI.md" ]; then
    cp GEMINI.md "$TEMP_DIR/GEMINI.md.template"
fi

# READMEをコピー
if [ -f "ANTIGRAVITY_README.md" ]; then
    cp ANTIGRAVITY_README.md "$TEMP_DIR/README.md"
fi

echo "[4/4] Creating zip archive..."
# ZIP作成
cd "$TEMP_DIR"
zip -r "../${ZIP_FILENAME}" .
cd - > /dev/null
mv "/tmp/${ZIP_FILENAME}" .

# 一時ディレクトリの削除
rm -rf "$TEMP_DIR"

echo ""
echo "=== Export Complete ==="
echo "Output: ${ZIP_FILENAME}"
echo ""
echo "配布手順:"
echo "  1. このzipファイルをチームメンバーに共有"
echo "  2. 各プロジェクトのルートで解凍"
echo "  3. Cursorを再起動"
echo ""
