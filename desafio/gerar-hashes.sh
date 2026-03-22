#!/usr/bin/env bash
# gerar-hashes.sh
# Gera os ficheiros de hashes MD5 para cada equipa do desafio.
# Requer: md5sum (Linux/macOS) ou md5 (macOS alternativo)

set -euo pipefail

hash_md5() {
    echo -n "$1" | md5sum | cut -d' ' -f1
}

# Equipa A — nível fácil
printf '%s\n' \
    "$(hash_md5 '123456')" \
    "$(hash_md5 'password')" \
    "$(hash_md5 'qwerty')" \
    "$(hash_md5 '12345')" \
    "$(hash_md5 '111111')" \
    > hashes-equipa-A.txt

# Equipa B — nível médio
printf '%s\n' \
    "$(hash_md5 'letmein')" \
    "$(hash_md5 'monkey')" \
    "$(hash_md5 'dragon')" \
    "$(hash_md5 'sunshine')" \
    "$(hash_md5 'princess')" \
    > hashes-equipa-B.txt

# Equipa C — nível mais difícil
printf '%s\n' \
    "$(hash_md5 'football')" \
    "$(hash_md5 'shadow')" \
    "$(hash_md5 'welcome')" \
    "$(hash_md5 'abc123')" \
    "$(hash_md5 'iloveyou')" \
    > hashes-equipa-C.txt

echo "Ficheiros gerados:"
echo "  hashes-equipa-A.txt"
echo "  hashes-equipa-B.txt"
echo "  hashes-equipa-C.txt"
