#!/usr/bin/env bash

# lp - quick asciinema recorder
# Usage: lp

OUTPUT_DIR="$HOME/asciinema"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTPUT_FILE="$OUTPUT_DIR/recording_$TIMESTAMP.cast"

mkdir -p "$OUTPUT_DIR"

echo "🎥 Recording started..."
echo "⏹  Press Ctrl+D or type 'exit' to stop."
echo "📁 Output: $OUTPUT_FILE"
sleep 1

asciinema rec "$OUTPUT_FILE"
