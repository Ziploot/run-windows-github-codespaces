#!/bin/bash
#  ======================================================
#  ZIPLOOT - CODESPACES WINDOWS 11 AUTO-RUNNER
#  ======================================================

echo "=============================================="
echo "⚡ Starting Windows 11 Docker Container..."
echo "=============================================="
docker-compose up -d

echo "=============================================="
echo "⚡ Installing Cloudflare Tunnel..."
echo "=============================================="
curl -L -o cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared.deb
rm cloudflared.deb

echo "=============================================="
echo "⚡ Exposing Windows Desktop via Tunnel..."
echo "=============================================="
cloudflared tunnel --url http://localhost:8006
