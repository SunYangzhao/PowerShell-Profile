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
function localserver { node C:\DEV\WEB\server.js }
# 递归删除当前目录下所有日志文件
function rmlog { Get-ChildItem * -Include *.log -Recurse -Force | Remove-Item }
