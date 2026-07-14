# ⚡ Run Windows 11 inside GitHub Codespaces 24/7

A guide to run Windows 11 inside Docker via QEMU/KVM on GitHub Codespaces, and keeping it alive 24/7 using a GitHub Actions cron job.

## 🚀 Setup Steps

1. Create a repository using this template.
2. Launch a **GitHub Codespace** on the repository. Select the 4 vCPU / 16GB RAM machine type.
3. The devcontainer will automatically run `docker-compose up` to start Windows 11.
4. Expose the web interface (port 8006) using a Cloudflare Tunnel:
   `cloudflared tunnel --url http://localhost:8006`
5. Configure the `.github/workflows/keep-alive.yml` with your `GH_PAT` (Personal Access Token) and `CODESPACE_NAME` secrets to keep the Codespace running 24/7!
