# 🚀 GitHub 仓库部署指南

## 📂 文件结构

```
ai-talent-strategy/
├── README.md                    # 中文版主文档
├── README_EN.md                 # English Version
├── LICENSE                      # MIT 许可证
├── CONTRIBUTING.md              # 贡献指南
├── .gitignore                   # Git 忽略配置
├── push-to-github.bat           # Windows 推送脚本
├── push-to-github.sh            # Linux/Mac 推送脚本
├── docs/
│   ├── zh/                      # 中文文档
│   │   ├── strategy/            # 战略层
│   │   │   └── ai-talent-pyramid.md
│   │   ├── talent/              # 人才层
│   │   │   └── caio-competency-model.md
│   │   └── cases/               # 案例库
│   │       └── README.md
│   └── en/                      # English Docs
│       ├── strategy/
│       │   └── ai-talent-pyramid.md
│       ├── talent/
│       │   └── caio-competency-model.md
│       └── cases/
│           └── README.md
└── .git/                        # Git 仓库
```

---

## ✅ 操作步骤

### Step 1: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 填写信息：
   - **Repository name**: `ai-talent-strategy`
   - **Description**: `董事会级AI人才战略框架 - Board-Level AI Talent Strategy Framework`
   - **Visibility**: ☐ Public ✅ (选择 Public)
3. 点击 **Create repository**

---

### Step 2: 推送到 GitHub

#### 方式一：使用脚本（推荐）

**Windows:**
```bash
cd ai-talent-strategy
push-to-github.bat
```

**Linux/Mac:**
```bash
cd ai-talent-strategy
chmod +x push-to-github.sh
./push-to-github.sh
```

#### 方式二：手动推送

```bash
cd ai-talent-strategy

# 添加远程仓库
git remote add origin https://github.com/di3zongdui/ai-talent-strategy.git

# 重命名分支为 main（GitHub 推荐）
git branch -M main

# 推送
git push -u origin main
```

---

### Step 3: 更新 GitHub Profile

1. 访问 https://github.com/di3zongdui
2. 点击 **Edit profile**
3. 在 **Bio** 或 **Company** 字段添加仓库链接：
   ```
   🚀 AI人才战略框架: https://github.com/di3zongdui/ai-talent-strategy
   ```

---

### Step 4: 置顶仓库

1. 在个人主页 https://github.com/di3zongdui
2. 找到 **Pinned** 部分
3. 点击 **Customize your pins**
4. 选择 `ai-talent-strategy` 仓库
5. 点击 **Save pins**

---

## 🔧 故障排除

### 问题 1: "Repository not found"

**原因**: GitHub 仓库尚未创建

**解决**: 先执行 Step 1 创建仓库

---

### 问题 2: "Permission denied"

**原因**: 没有 GitHub 写入权限

**解决**:
1. 安装 GitHub CLI:
   ```bash
   # Windows
   winget install --id GitHub.cli
   
   # Mac
   brew install gh
   ```

2. 登录 GitHub:
   ```bash
   gh auth login
   ```

3. 或者使用 HTTPS + Personal Access Token:
   - 访问 https://github.com/settings/tokens
   - 生成新的 Token（勾选 `repo` 权限）
   - 推送时输入 Token 作为密码

---

### 问题 3: "Could not resolve host"

**原因**: 网络连接问题

**解决**:
- 检查网络连接
- 尝试使用代理或 VPN
- 配置 Git 代理:
  ```bash
  git config --global http.proxy http://proxy.example.com:8080
  ```

---

## 📝 GitHub Profile README 建议

创建 `.github/profile/README.md` 来美化个人主页：

```markdown
## Hi there, I'm 乔治 (George) 👋

### 🤖 AI Talent Strategist | 董事会AI战略顾问

- 🔭 我正在维护: [AI人才战略框架](https://github.com/di3zongdui/ai-talent-strategy)
- 🌱 专注领域: 企业AI战略、CAIO胜任力模型、AI高管猎寻
- 💼 现任: CGL集团战略官
- 📝 公众号: 乔治AI观察

### 📊 GitHub Stats

![Your GitHub stats](https://github-readme-stats.vercel.app/api?username=di3zongdui&show_icons=true)

### 🔗 Connect with me

- 📧 Email: george.guo@example.com
- 💼 LinkedIn: [George Guo](https://linkedin.com/in/georgeguo)
- 📱 WeChat: 乔治AI观察
```

---

## ✅ 检查清单

完成部署后，请检查：

- [ ] GitHub 仓库已创建为 Public
- [ ] 代码已推送到 GitHub
- [ ] README 正常显示
- [ ] GitHub Profile 已更新
- [ ] 仓库已置顶 (Pinned)
- [ ] 仓库链接可正常访问

---

## 📞 需要帮助？

如遇到问题，请：
1. 检查上述故障排除部分
2. 提交 Issue 到本仓库
3. 联系: george.guo@example.com

---

**祝您部署顺利！** 🎉
