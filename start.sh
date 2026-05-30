#!/bin/bash

echo ""
echo "========================================"
echo "   贵州志愿通 - 高考志愿填报辅助平台"
echo "========================================"
echo ""

# 检查Node.js是否安装
if ! command -v node &> /dev/null; then
    echo "[错误] 未检测到Node.js，请先安装Node.js"
    echo "下载地址: https://nodejs.org/"
    exit 1
fi

echo "[信息] Node.js版本:"
node -v
echo ""

# 检查是否需要安装依赖
if [ ! -d "node_modules" ]; then
    echo "[信息] 首次运行，正在安装依赖..."
    echo "这可能需要几分钟，请耐心等待..."
    npm install
    if [ $? -ne 0 ]; then
        echo "[错误] 依赖安装失败，请检查网络连接"
        exit 1
    fi
    echo ""
    echo "[成功] 依赖安装完成！"
    echo ""
fi

echo "[信息] 正在启动开发服务器..."
echo ""
echo "========================================"
echo " 服务启动后，请在浏览器中打开"
echo " 访问地址: http://localhost:5173"
echo " 按 Ctrl+C 可停止服务"
echo "========================================"
echo ""

# 启动开发服务器
npm run dev
