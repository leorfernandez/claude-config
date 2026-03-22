#!/bin/bash
set -e

echo "=== Setup global do Claude — Leonardo Fernandez ==="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$HOME/.claude/skills"

echo ""
echo "Instalando skills globalmente em $TARGET..."
mkdir -p "$TARGET"

for skill_dir in "$SCRIPT_DIR/skills"/*/; do
    skill_name=$(basename "$skill_dir")
    if [ -d "$TARGET/$skill_name" ]; then
        rm -rf "$TARGET/$skill_name"
    fi
    cp -r "$skill_dir" "$TARGET/$skill_name"
done

echo ""
echo "Skills instaladas: $(ls "$TARGET" | wc -l | tr -d ' ')"
echo ""
echo "Pronto! Reinicie o Claude Code para carregar as skills."
