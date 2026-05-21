@echo off
chcp 65001 > nul
title Slidev - 小红书自动搜索评论工具
echo ============================================================
echo    小红书自动搜索评论工具 - Slidev PPT
echo ============================================================
echo.

cd /d "%~dp0"

echo [1/3] 检查依赖...
if not exist "node_modules" (
    echo.
    echo 正在安装依赖（首次运行需要几分钟）...
    echo.
    call "C:\Program Files\nodejs\npm.cmd" install
    if errorlevel 1 (
        echo.
        echo ❌ 安装依赖失败！
        pause
        exit /b 1
    )
)

echo.
echo [2/3] 依赖检查完成！
echo.

echo [3/3] 启动 Slidev 开发服务器...
echo.
echo ============================================================
echo    ✅ 服务器启动后，请在浏览器中访问显示的地址
echo    通常是：http://localhost:3030
echo ============================================================
echo.

call "C:\Program Files\nodejs\npm.cmd" run dev

pause
