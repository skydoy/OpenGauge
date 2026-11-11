#!/usr/bin/env bash
# Documentação Open Gauge (MkDocs Material): compila PT e EN em docs-site/site/docs/{pt,en}.
# Reutiliza o logótipo de docs/ e as ilustrações/favicon de static/ (não duplica imagens).
# Uso: ./build.sh   (MKDOCS=/caminho/mkdocs para outro executável)
set -euo pipefail
cd "$(dirname "$0")"
MK=${MKDOCS:-mkdocs}
rm -rf site
for l in pt en; do
  a="src/$l/assets"
  rm -rf "$a"; mkdir -p "$a/img" "$a/boards"
  cp -r shared/stylesheets "$a/"
  cp ../docs/icon.svg ../docs/logo-light.svg ../docs/logo-dark.svg ../static/favicon.svg "$a/img/"
  cp ../static/board-*.svg "$a/boards/"
  "$MK" build --strict -f "mkdocs.$l.yml"
done
# /docs/ → língua do browser (PT por omissão)
cat > site/docs/index.html <<'H'
<!doctype html><html lang="pt"><head><meta charset="utf-8"><title>Open Gauge · Docs</title>
<meta name="robots" content="noindex">
<script>location.replace((navigator.language||'').toLowerCase().startsWith('pt')?'pt/':'en/');</script>
<meta http-equiv="refresh" content="1; url=pt/"></head>
<body><p><a href="pt/">Português</a> · <a href="en/">English</a></p></body></html>
H
test -f site/docs/pt/index.html
test -f site/docs/en/index.html
test -f site/docs/pt/search/search_index.json
test -f site/docs/en/search/search_index.json
echo "OK: site/docs/pt e site/docs/en"
