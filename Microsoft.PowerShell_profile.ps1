Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Sorin

# 使用 vscode 编辑 powershell 配置文件
function pro { code $PROFILE }
# 转到个人目录
function ~ { cd $env:USERPROFILE }
# 转到开发环境目录
function dev { cd $env:DEV }
# 启动本地 node 服务器
function ws { node $env:DEV\WEB\server\index.js }
# 本地 node 服务器配置
function wsDev { code $env:DEV\web\server\ }
# 递归删除当前目录下所有日志文件
function rmlog { Get-ChildItem * -Include *.log -Recurse -Force | Remove-Item }
# 编辑代理脚本文件
function proxy { code $env:DEV\WEB\proxy.pac }
# 编辑 desktop.ini
function des { code .\desktop.ini }
