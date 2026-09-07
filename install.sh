#!/usr/bin/env bash
# SE-Job-Search-Workbench — one-click install.
#
#   ./install.sh [--workbench DIR] [--global|--project]
#
# What it does, and nothing else:
#   1. runs check.sh (stops if the machine cannot run this);
#   2. links the four skills into Claude Code — globally (~/.claude/skills, default) or into the
#      workbench project (DIR/.claude/skills) with --project;
#   3. creates DIR (default ~/workbench) from workspace/ if it does not exist — never overwrites.
# Re-running is safe. Nothing is downloaded, nothing phones home, no key is read or stored.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
WB="$HOME/workbench"; MODE="global"
while [ $# -gt 0 ]; do
  case "$1" in
    --workbench) WB="$2"; shift 2 ;;
    --global) MODE="global"; shift ;;
    --project) MODE="project"; shift ;;
    -h|--help) sed -n 2,12p "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
done

echo "== check"
"$HERE/check.sh" || { echo "install stopped: fix the lines marked ✗ above, then re-run." >&2; exit 1; }

echo "== workbench: $WB"
if [ -d "$WB" ]; then
  echo "   exists — left untouched (delete it yourself if you want a fresh template)"
else
  mkdir -p "$WB"
  cp -R "$HERE/workspace/." "$WB/"
  echo "   created from the template"
fi

if [ "$MODE" = "project" ]; then SK="$WB/.claude/skills"; else SK="$HOME/.claude/skills"; fi
echo "== skills → $SK"
mkdir -p "$SK"
for s in intake jd-teardown question-bank tech-card talk-track; do
  if [ -L "$SK/$s" ] || [ -e "$SK/$s" ]; then
    if [ -L "$SK/$s" ] && [ "$(readlink "$SK/$s")" = "$HERE/skills/$s" ]; then
      echo "   $s — already linked"
    else
      echo "   $s — something else is there; not touching it (move it and re-run)"
    fi
  else
    ln -s "$HERE/skills/$s" "$SK/$s" && echo "   $s — linked"
  fi
done

cat <<MSG

Done. Next, in Claude Code, from $WB:
   > run intake on my resume
It interviews you — a few numbered questions with a recommended answer each — and writes only
the facts you confirmed. That hour is the whole foundation (workspace/README.md).
MSG
