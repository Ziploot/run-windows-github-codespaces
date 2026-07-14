#!/bin/bash
PROJECT_DIR="$(pwd)/codespace-windows-setup"
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

curl -sL "https://raw.githubusercontent.com/Ziploot/run-windows-github-codespaces/main/docker-compose.yml" -o docker-compose.yml
echo "✅ Local docker-compose template downloaded!"
