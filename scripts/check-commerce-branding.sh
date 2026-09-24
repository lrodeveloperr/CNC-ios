#!/usr/bin/env bash
set -euo pipefail

fail() { echo "COMMERCE BRANDING CHECK FAILED: $*" >&2; exit 1; }

commerce_files=()
while IFS= read -r path; do commerce_files+=("$path"); done < <(
  find Shell -type f -name '*.swift' \
    \( -iname '*paywall*' -o -iname '*purchase*' -o -iname '*subscription*' \
       -o -iname '*winback*' -o -iname '*restore*' -o -iname '*commerce*' \
       -o -iname '*upgrade*' -o -iname '*offer*' \) | sort
)

(( ${#commerce_files[@]} > 0 )) || fail "No commerce surfaces were found"

# SF Symbols are allowed. Named image assets and app-brand references are not.
# Stock macOS runners do not include ripgrep, so use the same pattern with Ruby there.
pattern='Image\s*\((?!\s*systemName:)|UIImage\s*\(\s*named:|ImageResource\.|ShellConfiguration\.appName|\.appIcon\b|Asset\.[A-Za-z0-9_]*(Logo|Icon|Brand)'
if command -v rg >/dev/null 2>&1; then
  hits="$(rg -n -P "$pattern" "${commerce_files[@]}" || true)"
else
  hits="$(ruby -e '
    pattern = Regexp.new(ARGV.shift)
    ARGV.each do |path|
      File.foreach(path).with_index(1) do |line, number|
        puts "#{path}:#{number}:#{line.chomp}" if pattern.match?(line)
      end
    end
  ' "$pattern" "${commerce_files[@]}")"
fi
if [[ -n "$hits" ]]; then
  printf '%s\n' "$hits"
  fail "A commerce surface references an app image, icon, logo, name, or brand asset"
fi

echo "Commerce surfaces contain no app logo/icon/brand asset references."
