#!/bin/sh
# cpubench1A runner: curl -fsSL <url>/cpubench.sh | sh
# Linux, macOS, and Windows (Git Bash / MSYS2 / Cygwin). Native PowerShell: use cpubench.ps1.
set -eu

VERSION=4.0.0
BASE="https://github.com/ViRb3/cpubench1A/releases/download/v${VERSION}"

case "$(uname -s)" in
  Linux*)                      os=linux;   ext= ;;
  Darwin*)                     os=darwin;  ext= ;;
  MINGW*|MSYS*|CYGWIN*|Windows_NT) os=windows; ext=.exe ;;
  *) echo "unsupported OS: $(uname -s)" >&2; exit 1 ;;
esac

case "$(uname -m)" in
  x86_64|amd64)  arch=amd64 ;;
  arm64|aarch64) arch=arm64 ;;
  *) echo "unsupported arch: $(uname -m)" >&2; exit 1 ;;
esac
# Git Bash on Windows-on-ARM reports x86_64 under emulation; trust the OS.
if [ "$os" = windows ] && [ "${PROCESSOR_ARCHITEW6432:-${PROCESSOR_ARCHITECTURE:-}}" = ARM64 ]; then
  arch=arm64
fi

asset="cpubench1A_${VERSION}_${os}_${arch}${ext}"
tmp="$(mktemp -d 2>/dev/null || mktemp -d -t cpubench)"
trap 'rm -rf "$tmp"' EXIT INT TERM
bin="$tmp/$asset"

fetch() {
  if command -v curl >/dev/null 2>&1; then curl -fsSL -o "$2" "$1"
  elif command -v wget >/dev/null 2>&1; then wget -qO "$2" "$1"
  else echo "need curl or wget" >&2; exit 1; fi
}

echo "Downloading $asset ..."
fetch "$BASE/$asset" "$bin"

chmod +x "$bin"

cpu_model() {
  case "$os" in
    darwin)  sysctl -n machdep.cpu.brand_string 2>/dev/null ;;
    linux)   grep -m1 -E '^(model name|Model|Hardware)' /proc/cpuinfo 2>/dev/null | cut -d: -f2- | sed 's/^ *//' ;;
    windows) powershell.exe -NoProfile -Command '(Get-CimInstance Win32_Processor).Name' 2>/dev/null | tr -d '\r' ;;
  esac
}
cpu_count() {
  getconf _NPROCESSORS_ONLN 2>/dev/null || nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo "${NUMBER_OF_PROCESSORS:-?}"
}

# Each run takes ~60 s; the tool logs to stderr and ends with "THROUGHPUT <n>".
run() {
  label="$1"; shift
  echo "Running $label (~60 s) ..." >&2
  out="$("$bin" -run "$@" 2>&1)" || { echo "$out" >&2; echo "$label run failed" >&2; exit 1; }
  echo "$out" | awk '/THROUGHPUT/ {print $NF}' | tail -n1
}

single="$(run "single-thread" -threads 1 -workers 1)"
multi="$(run "multi-thread")"

cat <<EOF

==================== cpubench1A v$VERSION ====================
CPU:            $(cpu_model)
Logical CPUs:   $(cpu_count)
Platform:       $os/$arch
Single-thread:  $single
Multi-thread:   $multi
==============================================================
EOF
