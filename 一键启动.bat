@echo off
chcp 65001 > nul
title Slidev - 小红书自动搜索评论工具

echo ============================================================
echo    小红书自动搜索评论工具 - Slidev PPT
echo ============================================================
echo.

cd /d "%~dp0"

echo 正在启动 Slidev...
echo.
echo 步骤 1/2：检查并安装依赖
echo.

if not exist "node_modules" (
    echo 正在安装依赖（首次运行需要几分钟）...
    call "C:\Program Files\nodejs\npm.cmd" install
    if errorlevel 1 (
        echo.
        echo 依赖安装失败，请检查网络连接
        pause
        exit /b 1
    )
)

echo.
echo ============================================================
echo  步骤 2/2：启动 Slidev 开发服务器
echo ============================================================
echo.
echo  服务器启动后，请在浏览器中访问显示的地址
echo  通常是：http://localhost:3030
echo.
echo ============================================================
echo.

call "C:\Program Files\nodejs\npm.cmd" run dev

pause
