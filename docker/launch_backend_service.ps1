$currentDirectory = Get-Location
# 设置 PYTHONPATH 环境变量
$env:PYTHONPATH = "$currentDirectory"

Write-Host $env:PYTHONPATH
# 激活虚拟环境
# . .\.venv\Scripts\activate.ps1

# 在后台执行第一个 Python 脚本（即启动服务器）
Start-Process -FilePath .\.venv\Scripts\python.exe -ArgumentList ".\api\ragflow_server.py"

# 立即执行第二个 Python 脚本
Start-Process -FilePath .\.venv\Scripts\python.exe -ArgumentList ".\rag\svr\task_executor.py"

# Start-Process -FilePath "npm" -ArgumentList "run dev" -WorkingDirectory ".\web"