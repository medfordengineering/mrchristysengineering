#!/usr/bin/env bash
# Shrinks and recompresses site images in place with ImageMagick.
# Safe to run repeatedly: only resizes images larger than the cap,
# and re-running just recompresses again (fine to do).
#
# Usage: ./scripts/optimize-images.sh

set -euo pipefail

command -v mogrify >/dev/null || { echo "ImageMagick (mogrify) is required." >&2; exit 1; }

cd "$(dirname "$0")/.."

echo "Resizing/recompressing JPEGs..."
find _posts _pages assets/images -type f \( -iname '*.jpg' -o -iname '*.jpeg' \) -print0 \
  | xargs -0 mogrify -resize '1200x1200>' -quality 82 -strip

echo "Stripping metadata from PNGs..."
find _posts _pages assets/images -type f -iname '*.png' -print0 \
  | xargs -0 mogrify -strip

echo "Done."
