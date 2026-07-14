#!/bin/bash
#  ======================================================
#  ZIPLOOT - CODESPACES WINDOWS 11 AUTO-RUNNER
#  ======================================================

echo "=============================================="
echo "⚡ Stopping existing containers and wiping old data..."
echo "=============================================="
docker-compose down -v || true
rm -rf ./win_data || true
mkdir -p ./win_data

echo "=============================================="
echo "⚡ Starting fresh Windows 11 with password..."
echo "=============================================="
docker-compose up -d

echo "=============================================="
echo "⚡ Downloading Bore TCP Tunnel..."
echo "=============================================="
curl -sL https://github.com/ekzhang/bore/releases/download/v0.6.0/bore-v0.6.0-x86_64-unknown-linux-musl.tar.gz | tar -xz

echo "=============================================="
echo "⚡ Starting Bore TCP Tunnel..."
echo "=============================================="
./bore local 3389 --to bore.pub
