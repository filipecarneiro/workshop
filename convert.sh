#!/usr/bin/env bash
# Converte slides Marp (markdown) para HTML, PDF e PPTX
# Uso: ./convert.sh [ficheiro.md]

set -euo pipefail

INPUT="${1:-slides.md}"
BASENAME="${INPUT%.md}"

if ! command -v marp &>/dev/null; then
  echo "❌ Marp CLI não encontrado. Instala com:"
  echo "   npm install -g @marp-team/marp-cli"
  echo "   ou: brew install marp-cli"
  exit 1
fi

echo "📄 Convertendo '$INPUT'..."

# HTML
marp "$INPUT" --html --output "${BASENAME}.html"
echo "✅ HTML criado: ${BASENAME}.html"

# PDF
marp "$INPUT" --pdf --allow-local-files --output "${BASENAME}.pdf"
echo "✅ PDF criado:  ${BASENAME}.pdf"

# PPTX
marp "$INPUT" --pptx --allow-local-files --output "${BASENAME}.pptx"
echo "✅ PPTX criado: ${BASENAME}.pptx"

echo ""
echo "🎉 Concluído!"
