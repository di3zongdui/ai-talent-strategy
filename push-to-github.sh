#!/bin/bash
# GitHub 仓库推送脚本 | GitHub Repository Push Script
# Author: George Guo | 乔治AI观察

echo "=========================================="
echo "🚀 AI Talent Strategy - GitHub Push Script"
echo "=========================================="
echo ""

# 检查GitHub仓库是否已创建
# Check if GitHub repository exists

REPO_URL="https://github.com/di3zongdui/ai-talent-strategy.git"

echo "📋 Step 1: 配置GitHub远程仓库"
echo "Step 1: Configure GitHub remote repository"
echo "------------------------------------------"

# 添加远程仓库
# Add remote repository
git remote add origin $REPO_URL 2>/dev/null || git remote set-url origin $REPO_URL

echo "✅ 远程仓库已配置: $REPO_URL"
echo "Remote repository configured: $REPO_URL"
echo ""

# 检查分支名称
echo "📋 Step 2: 检查分支"
echo "Step 2: Check branch"
echo "--------------------"

BRANCH=$(git branch --show-current)
echo "当前分支 | Current branch: $BRANCH"

# 如果是master分支，考虑重命名为main
if [ "$BRANCH" = "master" ]; then
    echo "📝 重命名分支为 main | Renaming branch to main..."
    git branch -M main
    BRANCH="main"
fi

echo "✅ 使用分支 | Using branch: $BRANCH"
echo ""

# 推送到GitHub
echo "📋 Step 3: 推送到GitHub"
echo "Step 3: Push to GitHub"
echo "----------------------"

echo "🚀 正在推送... | Pushing..."
git push -u origin $BRANCH

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ 推送成功！| Push successful!"
    echo "=========================================="
    echo ""
    echo "📎 仓库地址 | Repository URL:"
    echo "   $REPO_URL"
    echo ""
    echo "📖 下一步 | Next steps:"
    echo "   1. 访问仓库页面 Visit repository page"
    echo "   2. 更新GitHub Profile Update GitHub profile"
    echo "   3. 置顶该仓库 Pin this repository"
    echo ""
else
    echo ""
    echo "=========================================="
    echo "❌ 推送失败 | Push failed"
    echo "=========================================="
    echo ""
    echo "可能的原因 | Possible reasons:"
    echo "   - GitHub仓库尚未创建 GitHub repo not created yet"
    echo "   - 未登录GitHub Not logged in to GitHub"
    echo "   - 网络连接问题 Network connection issues"
    echo ""
    echo "解决方法 | Solutions:"
    echo "   1. 确保GitHub仓库已创建 Ensure GitHub repo is created"
    echo "   2. 运行: gh auth login | Run: gh auth login"
    echo "   3. 或使用HTTPS+个人访问令牌 Or use HTTPS + Personal Access Token"
    echo ""
fi
