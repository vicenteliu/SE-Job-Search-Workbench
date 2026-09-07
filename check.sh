#!/usr/bin/env bash
# SE-Job-Search-Workbench — can this machine run it? Read-only; changes nothing.
# Exit 0 = PASS. Exit 1 = something marked ✗ needs a hand (this is the line that decides whether
# a paid setup needs the "adaptation" hour). Exit 0 with ⚠ lines = runs, with caveats.
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
fail=0; warn=0
ok()   { printf '   ✓ %s\n' "$1"; }
bad()  { printf '   ✗ %s\n' "$1"; fail=1; }
meh()  { printf '   ⚠ %s\n' "$1"; warn=1; }

echo "== machine"
case "$(uname -s)" in
  Darwin) ok "macOS $(sw_vers -productVersion 2>/dev/null || true)" ;;
  Linux)  if grep -qi microsoft /proc/version 2>/dev/null; then meh "Windows via WSL — untested by the author; expect to adapt"; else ok "Linux"; fi ;;
  MINGW*|MSYS*|CYGWIN*) bad "Windows shell without WSL — install WSL2 (or the setup includes adaptation)" ;;
  *) meh "unknown OS $(uname -s)" ;;
esac

echo "== tools"
command -v git >/dev/null 2>&1 && ok "git $(git --version | awk '{print $3}')" || bad "git missing"
if command -v python3 >/dev/null 2>&1; then
  pv=$(python3 -c 'import sys; print("%d.%d" % sys.version_info[:2])')
  python3 -c 'import sys; sys.exit(0 if sys.version_info >= (3, 10) else 1)' && ok "python3 $pv" || bad "python3 $pv is older than 3.10"
else
  bad "python3 missing"
fi

echo "== an agent that reads SKILL.md"
if command -v claude >/dev/null 2>&1; then
  ok "Claude Code: $(claude --version 2>/dev/null | head -1)"
  agent=1
else
  agent=0
  if command -v codex >/dev/null 2>&1; then meh "Codex CLI found, Claude Code not — skills are Claude-Code-shaped; Codex needs them pasted as instructions"; agent=1; fi
fi
if [ -n "${ANTHROPIC_API_KEY:-}" ]; then ok "ANTHROPIC_API_KEY is set (key not shown)"; agent=1; fi
[ "$agent" = 1 ] || bad "no Claude Code and no ANTHROPIC_API_KEY — install Claude Code (https://docs.anthropic.com/claude-code) or export a key"

echo "== this checkout"
for s in jd-teardown question-bank tech-card talk-track; do
  [ -f "$HERE/skills/$s/SKILL.md" ] && ok "skills/$s" || bad "skills/$s/SKILL.md missing"
done
[ -f "$HERE/workspace/facts/master.md" ] && ok "workspace template" || bad "workspace template missing"
[ -d "$HOME/.claude" ] && ok "~/.claude exists (skills can be linked globally)" || meh "~/.claude does not exist yet — run Claude Code once, or use ./install.sh --project"

echo "== verdict"
if [ "$fail" = 1 ]; then echo "   NEEDS-HANDS-ON: at least one ✗ above"; exit 1; fi
if [ "$warn" = 1 ]; then echo "   PASS with caveats (⚠ above)"; else echo "   PASS"; fi
exit 0
