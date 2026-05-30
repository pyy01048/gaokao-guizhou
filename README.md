# 贵州志愿通 - 高考志愿填报辅助平台

<p align="center">
  <img src="https://img.shields.io/badge/Vue-3.4-brightgreen" alt="Vue 3.4">
  <img src="https://img.shields.io/badge/TypeScript-5.4-blue" alt="TypeScript 5.4">
  <img src="https://img.shields.io/badge/Vite-5.4-purple" alt="Vite 5.4">
  <img src="https://img.shields.io/badge/Element%20Plus-2.6-cyan" alt="Element Plus 2.6">
  <img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License">
</p>

<p align="center">
  <b>专为贵州考生打造的高考志愿填报辅助平台</b><br>
  基于新高考3+1+2政策，提供智能推荐、模拟填报、数据分析等功能
</p>

---

## 📖 项目简介

贵州志愿通是一款面向贵州省高考考生的志愿填报辅助系统，整合了全国 **2252所高校** 的招生数据，帮助考生科学、高效地完成高考志愿填报。

### ✨ 核心功能

| 功能模块 | 说明 |
|---------|------|
| 🏠 **首页仪表盘** | 高考倒计时、快捷入口、热门院校排行、最新资讯 |
| 🎓 **高校查询** | 2252所高校详情，支持6维度筛选（层次/类型/省份/分数/排名/特色） |
| 📚 **专业查询** | 13个学科门类、700+专业详情，含就业前景、选科要求 |
| 🤖 **智能推荐** | 基于分数的院校推荐，冲刺/稳妥/保底三档分类 |
| 📊 **同分去向** | 同分考生录取去向分析，提供参考依据 |
| 📋 **志愿表管理** | 志愿草稿保存、排序、导出打印 |
| 📈 **数据对比** | 多校横向对比，关键指标一目了然 |

### 🎯 技术亮点

- **纯前端架构**：无需后端服务器，本地运行即可使用
- **大数据量优化**：28MB数据库动态加载，按需读取不卡顿
- **响应式设计**：完美适配PC、平板、手机
- **精美UI**：基于Element Plus的现代化界面设计

---

## 📁 项目结构

```
贵州志愿通/
├── 📂 dist/                    # 构建产物（生产版本）
│   ├── index.html              # 入口页面
│   └── assets/                 # 静态资源（JS/CSS/图片）
│
├── 📂 src/                     # 源代码
│   ├── 📂 components/          # 可复用组件
│   │   ├── SchoolCard.vue      # 学校卡片组件
│   │   ├── SchoolFilterBar.vue # 6维度筛选栏
│   │   ├── DataDashboard.vue   # 首页仪表盘
│   │   └── ...
│   │
│   ├── 📂 views/               # 页面视图
│   │   ├── HomeView.vue        # 首页
│   │   ├── SchoolsView.vue     # 高校列表页
│   │   ├── SchoolDetail.vue    # 院校详情页（7个标签页）
│   │   ├── MajorsView.vue      # 专业列表页
│   │   ├── SmartSearch.vue     # 智能推荐页
│   │   └── ...
│   │
│   ├── 📂 data/                # 数据文件
│   │   ├── schoolsDatabase.ts  # 2252所高校数据（28MB）
│   │   ├── majorsDatabase.ts   # 专业数据
│   │   ├── scoreRankDatabase.ts # 分数位次数据
│   │   ├── schoolDegreeData.ts # 博硕点数据
│   │   └── schoolTypeData.ts   # 院校类型数据
│   │
│   ├── 📂 stores/              # Pinia状态管理
│   │   ├── user.ts             # 用户信息
│   │   └── volunteer.ts        # 志愿表状态
│   │
│   ├── 📂 utils/               # 工具函数
│   │   └── schoolBadge.ts      # 校徽SVG生成器
│   │
│   ├── 📂 router/              # 路由配置
│   ├── 📂 services/            # API服务
│   └── main.ts                 # 应用入口
│
├── 📄 package.json             # 依赖配置
├── 📄 vite.config.ts           # Vite构建配置
├── 📄 tailwind.config.js       # Tailwind CSS配置
├── 📄 README.md                # 本文档
├── 📄 LICENSE                  # MIT开源协议
│
├── 🚀 start.bat                # Windows一键启动脚本
└── 🚀 start.sh                 # Mac/Linux一键启动脚本
```

---

## 🚀 快速开始

### 方式一：直接运行（推荐）

**Windows用户：**
1. 双击 `start.bat` 文件
2. 等待自动安装依赖并启动
3. 浏览器自动打开 http://localhost:5173

**Mac/Linux用户：**
```bash
chmod +x start.sh
./start.sh
```

### 方式二：手动启动

```bash
# 1. 安装依赖
npm install

# 2. 启动开发服务器
npm run dev

# 3. 浏览器访问 http://localhost:5173
```

### 方式三：生产部署

```bash
# 1. 构建生产版本
npm run build

# 2. 预览构建结果
npm run preview

# 3. 或直接部署dist目录到任意静态服务器
```

---

## 📊 数据说明

### 高校数据（schoolsDatabase.ts）

包含 **2252所高校** 的完整信息：

| 字段 | 说明 | 示例 |
|------|------|------|
| name | 学校名称 | 北京大学 |
| code | 招生代码 | 119 |
| province | 所在省份 | 北京 |
| type | 院校类型 | 综合 |
| is985 | 是否985 | true |
| is211 | 是否211 | true |
| scores | 历年录取分数 | {2023: {min: 680, ...}} |
| majors | 招生专业 | [{name: 计算机科学, ...}] |

### 专业数据（majorsDatabase.ts）

包含 **700+专业** 的详细信息：

- 专业名称、代码、门类
- 选科要求（物理/历史/化学/生物等）
- 就业前景、薪资水平
- 开设院校列表

---

## ⚙️ 系统要求

| 项目 | 最低要求 | 推荐配置 |
|------|---------|---------|
| Node.js | 18.x | 20.x+ |
| 内存 | 4GB | 8GB+ |
| 浏览器 | Chrome 90+ | Chrome 最新版 |
| 磁盘 | 500MB | 1GB+ |

---

## 🔧 配置说明

### 修改端口号

编辑 `vite.config.ts`：

```typescript
export default defineConfig({
  server: {
    port: 5173,  // 修改为你想要的端口
    host: '0.0.0.0'  // 允许局域网访问
  }
})
```

### 自定义主题色

编辑 `tailwind.config.js`：

```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        brand: {
          primary: '#2563eb',  // 主色
          secondary: '#1d4ed8' // 辅色
        }
      }
    }
  }
}
```

---

## 📱 功能截图

### 首页仪表盘
- 高考倒计时、快捷入口、热门院校排行

### 高校查询
- 6维度筛选（层次标签/院校类型/省份/分数段/高级筛选）
- 2252所高校卡片展示

### 院校详情
- 7个标签页：院校概况、录取分数线、招生专业、学科评估、就业情况、校园生活、相关推荐
- 历史沿革、院系设置、师资力量等丰富内容

### 智能推荐
- 基于分数的冲刺/稳妥/保底三档推荐
- 录取概率可视化

---

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 提交 Pull Request

---

## 📄 开源协议

本项目基于 [MIT](LICENSE) 协议开源，可自由使用、修改和分发。

---

## 🙏 致谢

- 数据来源：贵州省招生考试院、阳光高考网、掌上高考
- UI框架：[Element Plus](https://element-plus.org/)
- 图表库：[ECharts](https://echarts.apache.org/)
- 图标库：[Element Plus Icons](https://element-plus.org/zh-CN/component/icon.html)

---

<p align="center">
  <b>⭐ 如果这个项目对你有帮助，请给一个 Star ⭐</b>
</p>
