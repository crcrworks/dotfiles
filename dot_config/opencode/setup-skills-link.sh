#!/bin/bash

set -e

SOURCE_DIR="$HOME/.agents/skills"
TARGET_DIR="$HOME/.claude/skills"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: $SOURCE_DIR does not exist"
    echo "Please run 'npx skills add' first to install skills"
    exit 1
fi

if [ ! -d "$(dirname "$TARGET_DIR")" ]; then
    echo "Error: $(dirname "$TARGET_DIR") does not exist"
    exit 1
fi

mkdir -p "$TARGET_DIR"

echo "Creating individual skill symlinks in $TARGET_DIR"

for skill_dir in "$SOURCE_DIR"/*/; do
    skill_name=$(basename "$skill_dir")
    target_link="$TARGET_DIR/$skill_name"

    if [ -e "$target_link" ] || [ -L "$target_link" ]; then
        echo "Removing existing $target_link"
        rm -rf "$target_link"
    fi

    echo "Creating symlink: $target_link -> $skill_dir"
    ln -s "$skill_dir" "$target_link"
done

echo "Done! All skills linked."
echo "Verify with: ls -la $TARGET_DIR"
