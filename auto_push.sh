#!/bin/bash

# 현재 시간으로 커밋 메시지 생성
now=$(date "+%Y-%m-%d %H:%M:%S")
echo "🕒 커밋 시간: $now"

# Git 저장소 위치로 이동
cd ~/goldmind || { echo "📂 goldmind 폴더가 없습니다"; exit 1; }

# Git 추가 및 커밋

git add .
git commit -m "$now"

# GitHub 토큰 사용해 푸시 (👉 아래 ghp_토큰값 부분은 실제 토큰으로 대체)
git push https://duksans:ghp_토큰값@github.com/Ducksans/goldmind.git main
