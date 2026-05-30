@echo off
chcp 65001 >nul
title 贵州志愿通 - 高考志愿填报辅助平台

echo.
echo ========================================
echo    贵州志愿通 - 高考志愿填报辅助平台
echo ========================================
echo.

:: 检查Node.js是否安装
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 未检测到Node.js，请先安装Node.js
    echo 下载地址: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

echo [信息] Node.js版本:
node -v
echo.

:: 检查是否需要安装依赖
if not exist "node_modules" (
    echo [信息] 首次运行，正在安装依赖...
    echo 这可能需要几分钟，请耐心等待...
    echo.
    call npm install
    if %errorlevel% neq 0 (
        echo [错误] 依赖安装失败，请检查网络连接
        pause
        exit /b 1
    )
    echo.
    echo [成功] 依赖安装完成！
    echo.
)

echo [信息] 正在启动开发服务器...
echo.
echo ========================================
echo  服务启动后，浏览器将自动打开
echo  访问地址: http://localhost:5173
echo  按 Ctrl+C 可停止服务
echo ========================================
echo.

:: 启动开发服务器并自动打开浏览器
start "" "http://localhost:5173"
call npm run dev
