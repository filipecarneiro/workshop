#!/usr/bin/env bash
# setup.sh
# Instala hashcat e o dicionário RockYou num sistema Linux (Debian/Ubuntu).
# Testado em Ubuntu 22.04 LTS e Debian 12.

set -euo pipefail

echo "[1/4] Atualizar lista de pacotes..."
sudo apt-get update -q

echo "[2/4] Instalar hashcat..."
sudo apt-get install -y hashcat

echo "[3/4] Instalar wordlists (rockyou)..."
if [ -f /usr/share/wordlists/rockyou.txt ]; then
    echo "  rockyou.txt já existe, a ignorar."
else
    sudo apt-get install -y wordlists
    if [ -f /usr/share/wordlists/rockyou.txt.gz ]; then
        echo "  A descomprimir rockyou.txt.gz..."
        sudo gunzip /usr/share/wordlists/rockyou.txt.gz
    fi
fi

echo "[4/4] Verificar instalação..."
hashcat --version
ls -lh /usr/share/wordlists/rockyou.txt

echo ""
echo "Instalação concluída."
echo "Exemplo de uso:"
echo "  hashcat -m 0 -a 0 hashes.txt /usr/share/wordlists/rockyou.txt"
