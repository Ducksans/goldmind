#!/bin/bash

# 모든 변경 사항 추가
git add .

# 커밋 메시지 자동 생성 (날짜 및 시간 포함)
git commit -m "🔄 자동 커밋: $(date '+%Y-%m-%d %H:%M:%S')"

# 원격 저장소에 푸시
git push origin main
