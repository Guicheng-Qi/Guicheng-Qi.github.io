#!/bin/bash

# 获取提交信息
echo "Enter commit message:"
read message

# 添加、提交并推送更改
git add .
git commit -m "$message"
git push origin main

# 部署网站
./bin/deploy