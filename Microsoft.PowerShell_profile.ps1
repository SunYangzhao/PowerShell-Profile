Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme $env:USERPROFILE/.material.omp.json

# 使用 vscode 编辑 powershell 配置文件
function pro { code $PROFILE }
# 转到个人目录
function ~ { Set-Location $env:USERPROFILE }
# 转到开发环境目录
function dev { Set-Location $env:DEV }
# 本地 webserver 服务
function ws ($arg) { node $env:DEV\WEB\server\scripts\service.js $arg }
# 本地 node 服务器配置
function wsDev { code $env:DEV\WEB\server\ }
# 递归删除当前目录下所有日志文件
function rmlog { Get-ChildItem * -Include *.log -Recurse -Force | Remove-Item }
# 编辑代理脚本文件
function proxy { code $env:DEV\WEB\proxy.pac }
# 编辑 desktop.ini
function des { code .\desktop.ini }
# yapi 配置
function yapiDev { code $env:Dev\WEB\application\yapi\vendors }
# 部署前端应用
function deploy ($source) {
    if (Test-Path $env:DEV\WEB\application\$source) {
        Remove-Item $env:DEV\WEB\application\$source -Recurse
    }
    if (Test-Path $source) {
        Move-Item $source $env:DEV\WEB\application\$source
    } elseif (Test-Path dist) {
        Move-Item dist $env:DEV\WEB\application\$source
    }
}
