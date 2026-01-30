#!/bin/bash

# Daily Workflow - 每日自动更新、处理Issues、市场调研优化

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_DIR"

REPO="he347368825-glitch/diagensdemo"
GITHUB_TOKEN="${GITHUB_TOKEN:-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}"

echo "🔄 开始每日工作流: $(date)"
echo "📁 项目: $REPO"

# 1. 拉取最新代码
echo "📦 拉取最新代码..."
git fetch origin dev
git checkout dev
git pull origin dev

# 2. 检查是否有 Issues
echo "🔍 检查 Issues..."
ISSUES_JSON=$(curl -s -H "Authorization: token $GITHUB_TOKEN" \
  "https://api.github.com/repos/$REPO/issues?state=open&per_page=5")
ISSUE_COUNT=$(echo "$ISSUES_JSON" | grep -c '"number"' || echo 0)

if [ "$ISSUE_COUNT" -gt 0 ]; then
    echo "📋 发现 $ISSUE_COUNT 个待处理 Issues"

    # 取第一个 Issue
    ISSUE_NUM=$(echo "$ISSUES_JSON" | grep -o '"number": [0-9]*' | head -1 | grep -o '[0-9]*')
    ISSUE_TITLE=$(echo "$ISSUES_JSON" | grep -o '"title": "[^"]*"' | head -1 | sed 's/"title": "//;s/"$//')

    echo "🔧 处理 Issue #$ISSUE_NUM: $ISSUE_TITLE"

    # 创建处理分支
    BRANCH_NAME="fix/issue-$ISSUE_NUM-$(date +%Y%m%d)"
    git checkout -b "$BRANCH_NAME"

    # TODO: AI 自动修复逻辑
    # 这里可以调用 Codex/Claude API 分析并修复

    # 模拟修改（实际应调用 AI）
    echo "# 自动修复 - $(date)" >> FIX_LOG.md
    git add -A
    git commit -m "fix: 处理 Issue #$ISSUE_NUM - $ISSUE_TITLE" || true

    # 推送
    git push -u origin "$BRANCH_NAME"

    # 创建 PR (API)
    echo "📝 创建 PR..."
    PR_BODY="自动处理 Issue #$ISSUE_NUM

- Issue: $ISSUE_TITLE
- 修复时间: $(date +%Y-%m-%d)
- 状态: 待审核"

    PR_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST -H "Authorization: token $GITHUB_TOKEN" \
      -d "{\"title\":\"fix: 处理 Issue #$ISSUE_NUM\",\"body\":\"$PR_BODY\",\"base\":\"dev\",\"head\":\"$BRANCH_NAME\"}" \
      "https://api.github.com/repos/$REPO/pulls")

    PR_STATUS=$(echo "$PR_RESPONSE" | tail -1)
    PR_BODY_ONLY=$(echo "$PR_RESPONSE" | sed '$d')

    if [ "$PR_STATUS" = "201" ]; then
        PR_URL=$(echo "$PR_BODY_ONLY" | grep -o '"html_url": "[^"]*"' | sed 's/"html_url": "//;s/"$//')
        echo "✅ PR 创建成功: $PR_URL"
    else
        echo "❌ PR 创建失败 (HTTP $PR_STATUS): $PR_BODY_ONLY"
    fi

    # 创建 MR 到 main (API)
    echo "🔀 创建 MR 到 main..."
    MR_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST -H "Authorization: token $GITHUB_TOKEN" \
      -d "{\"title\":\"fix: 处理 Issue #$ISSUE_NUM\",\"body\":\"$PR_BODY\",\"base\":\"main\",\"head\":\"$BRANCH_NAME\"}" \
      "https://api.github.com/repos/$REPO/pulls")

    MR_STATUS=$(echo "$MR_RESPONSE" | tail -1)
    MR_BODY_ONLY=$(echo "$MR_RESPONSE" | sed '$d')

    if [ "$MR_STATUS" = "201" ]; then
        MR_URL=$(echo "$MR_BODY_ONLY" | grep -o '"html_url": "[^"]*"' | sed 's/"html_url": "//;s/"$//')
        echo "✅ MR 创建成功: $MR_URL"
    else
        echo "❌ MR 创建失败 (HTTP $MR_STATUS): $MR_BODY_ONLY"
    fi

    echo "✅ 完成 Issue 处理"

else
    echo "📭 没有待处理 Issues，进行市场调研和优化..."

    # 市场调研 (模拟)
    echo "📊 进行市场调研..."
    cat <<MARKET_REPORT > /tmp/market_report_$(date +%Y%m%d).txt
## 医疗器械官网竞品分析 - $(date +%Y-%m-%d)

### 行业趋势
- 响应式设计成为标配
- SEO 优化日益重要
- 用户体验要求提升

### 建议优化方向
1. 性能优化 - 首屏加载速度
2. SEO - Meta 标签、结构化数据
3. UX - 移动端适配、表单优化
MARKET_REPORT
    cat /tmp/market_report_$(date +%Y%m%d).txt

    # 执行优化
    echo "⚡ 开始代码优化..."

    # 1. 运行 build
    npm run build 2>&1 | tail -5 || echo "⚠️ Build 有警告"

    # 2. 代码检查
    if [ -f "package.json" ] && grep -q '"lint"' package.json; then
        npm run lint 2>&1 | tail -5 || echo "⚠️ Lint 有警告"
    fi

    # 3. 生成优化建议
    BRANCH_NAME="optimize/$(date +%Y%m%d)"
    git checkout dev
    git checkout -b "$BRANCH_NAME"

    cat <<OPTIMIZE > OPTIMIZATION.md
# 优化建议 - $(date +%Y-%m-%d)

## 性能优化
- [ ] 图片懒加载
- [ ] 代码分割 (lazy route)
- [ ] 开启 Gzip

## SEO 优化
- [ ] 添加 Meta 描述
- [ ] 生成 Sitemap
- [ ] 结构化数据 (Schema.org)

## UX 优化
- [ ] 加载动画骨架屏
- [ ] 错误边界处理
- [ ] 表单验证优化
OPTIMIZE

    git add OPTIMIZATION.md
    git commit -m "chore: 添加 $(date +%Y-%m-%d) 优化建议"

    git push -u origin "$BRANCH_NAME"

    # 创建 PR (API)
    echo "📝 创建优化 PR..."
    PR_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST -H "Authorization: token $GITHUB_TOKEN" \
      -d "{\"title\":\"chore: 日常优化 $(date +%Y-%m-%d)\",\"body\":\"每日优化建议\",\"base\":\"dev\",\"head\":\"$BRANCH_NAME\"}" \
      "https://api.github.com/repos/$REPO/pulls")

    PR_STATUS=$(echo "$PR_RESPONSE" | tail -1)
    PR_BODY_ONLY=$(echo "$PR_RESPONSE" | sed '$d')

    if [ "$PR_STATUS" = "201" ]; then
        PR_URL=$(echo "$PR_BODY_ONLY" | grep -o '"html_url": "[^"]*"' | sed 's/"html_url": "//;s/"$//')
        echo "✅ PR 创建成功: $PR_URL"
    else
        echo "❌ PR 创建失败 (HTTP $PR_STATUS): $PR_BODY_ONLY"
    fi

    echo "✅ 完成市场调研和优化"
fi

# 清理
echo "🧹 清理..."
git checkout dev

echo ""
echo "🎉 每日工作流完成! $(date)"
echo "📝 查看日志: tail -f $PROJECT_DIR/logs/daily-workflow.log"
