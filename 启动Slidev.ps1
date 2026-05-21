# 小红书自动搜索评论工具 - Slidev PPT 启动脚本

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "           小红书自动搜索评论工具 - Slidev PPT" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location $PSScriptRoot

# 检查是否已安装依赖
if (-not (Test-Path "node_modules")) {
    Write-Host "[1/3] 正在安装依赖（首次运行需要几分钟）..." -ForegroundColor Yellow
    Write-Host ""
    
    & "C:\Program Files\nodejs\npm.cmd" install
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host ""
        Write-Host "❌ 安装依赖失败！" -ForegroundColor Red
        Read-Host "按 Enter 退出"
        exit 1
    }
    
    Write-Host ""
    Write-Host "[2/3] 依赖安装完成！" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "[1/2] 依赖已安装，跳过安装步骤" -ForegroundColor Green
    Write-Host ""
}

Write-Host "[2/2] 正在启动 Slidev 开发服务器..." -ForegroundColor Yellow
Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "   ✅ 服务器启动后，请在浏览器中访问显示的地址" -ForegroundColor Green
Write-Host "   通常是：http://localhost:3030" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

& "C:\Program Files\nodejs\npm.cmd" run dev
