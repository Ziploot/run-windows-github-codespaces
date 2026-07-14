#!/bin/bash
#  ======================================================
#  ZIPLOOT - CODESPACES WINDOWS 11 AUTO-RUNNER
#  ======================================================

echo "=============================================="
echo "⚡ Starting Windows 11 Docker Container..."
echo "=============================================="
docker-compose up -d

echo "=============================================="
echo "⚡ Exposing Windows Desktop via Serveo TCP..."
echo "=============================================="
echo "To get a free direct RDP link, execute this command:"
echo "ssh -o StrictHostKeyChecking=no -R 0:localhost:3389 serveo.net"
echo "=============================================="
