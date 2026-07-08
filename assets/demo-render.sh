#!/usr/bin/env bash
# Used by assets/demo.tape to record assets/demo.gif.
# Streams the real, already-generated report at examples/pyperclip-audit.md
# so the recording shows genuine skill output, not a fabricated transcript.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPORT="$SCRIPT_DIR/../examples/pyperclip-audit.md"

claude() {
  echo
  echo "🔎 Fetching repo data via GitHub API..."
  sleep 0.6
  echo "📋 Auditing against the 6-category checklist..."
  sleep 0.6
  echo "✍️  Writing prioritized report..."
  sleep 0.8
  echo
  glow -s dark -w 76 "$REPORT" | head -n 26 | while IFS= read -r line; do
    printf '%s\n' "$line"
    sleep 0.06
  done
  echo
  echo "… (full report continues — see examples/pyperclip-audit.md)"
}
