#!/usr/bin/env bash
set -e
printf '=== SYSTEM PROFILE ===\n'
printf 'Date: '; date
printf 'User: '; whoami
printf 'Current directory: '; pwd
printf 'Kernel: '; uname -a
printf 'OS information:\n'; if [ -f /etc/os-release ]; then cat /etc/os-release; else uname -s; fi
printf 'Disk usage:\n'; df -h
printf 'Memory usage:\n'; free -h 2>/dev/null || echo 'free command unavailable'
printf 'Home directory listing:\n'; ls -la "$HOME" | head -n 15
