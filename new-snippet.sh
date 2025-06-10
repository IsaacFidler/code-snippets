#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

read -rp "Category: " CATEGORY
read -rp "Snippet title (kebab-case): " TITLE

if [[ -z "$CATEGORY" || -z "$TITLE" ]]; then
  echo "Error: Both category and title are required."
  exit 1
fi

TARGET_DIR="$SCRIPT_DIR/$CATEGORY"
mkdir -p "$TARGET_DIR"

FILE_PATH="$TARGET_DIR/$TITLE.md"

if [[ -e "$FILE_PATH" ]]; then
  echo "Error: Snippet already exists at $FILE_PATH"
  exit 1
fi

cat > "$FILE_PATH" <<EOF
# $TITLE

<!--
Description: 
Tags: 
-->

\`\`\`
<replace with code snippet>
\`\`\`
EOF

if command -v code >/dev/null 2>&1; then
  code "$FILE_PATH"
elif command -v code-insiders >/dev/null 2>&1; then
  code-insiders "$FILE_PATH"
else
  echo "New snippet created at $FILE_PATH"
fi