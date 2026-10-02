$ErrorActionPreference = 'Stop'

$port = 3000
$root = $PSScriptRoot
$url = "http://localhost:$port"

Write-Host "Starting the Awesome LLD study guide at $url"
Write-Host "Press Ctrl+C to stop the server."

Start-Process $url
python -m http.server $port --directory $root
