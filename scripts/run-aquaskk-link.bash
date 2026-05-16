#!/usr/bin/env bash
set -euo pipefail

SOURCE="$HOME/.local/share/chezmoi/aquaskk"
TARGET="$HOME/Library/Application Support/AquaSKK"

# 既存のディレクトリがあれば退避
if [ -d "$TARGET" ] && [ ! -L "$TARGET" ]; then
  BACKUP="${TARGET}.bak.$(date +%Y%m%d)"
  echo "退避中: $TARGET -> $BACKUP"
  mv "$TARGET" "$BACKUP"
fi

# シンボリックリンクを作成（既にリンクの場合は張り替え）
ln -sfn "$SOURCE" "$TARGET"
echo "完了: $TARGET -> $SOURCE"
