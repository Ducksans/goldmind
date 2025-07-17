#!/bin/bash

now=$(date "+%Y-%m-%d %H:%M:%S")
echo "🕒 커밋 시간: $now"

git add .
git commit -m "$now"

echo "🔐 푸시 중..."

GIT_ASKPASS=$(mktemp)
chmod +x "$GIT_ASKPASS"
echo -e '#!/bin/sh\necho "$GITHUB_TOKEN"' > "$GIT_ASKPASS"

GIT_TERMINAL_PROMPT=0 GIT_ASKPASS="$GIT_ASKPASS" git push https://github.com/Ducksans/goldmind.git main

rm "$GIT_ASKPASS"
