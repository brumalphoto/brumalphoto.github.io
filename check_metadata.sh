#!/bin/bash
for file in assets/audio//.wav; do
echo "Checking: $file"
ffmpeg -i "$file" 2>&1 | grep -E "artist|title|comment|Stream" || echo "No metadata found"
echo "----------------"
done
