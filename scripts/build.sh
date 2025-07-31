#!/bin/bash

# Stoppe si une erreur survient
set -e

echo "🚀 Démarrage du build..."

# 1. Nettoyage du dossier dist/
echo "🧹 Nettoyage du dossier docs/..."
rm -rf docs
mkdir docs

# 2. Création des dossiers nécessaires
mkdir -p docs/css
mkdir -p docs/js
mkdir -p docs/assets/img

# 3. Compilation du SCSS en CSS
echo "🎨 Compilation du SCSS..."
npx node-sass src/scss/app.scss docs/css/app.css --output-style compressed

# 4. Copie du HTML
echo "📄 Copie du HTML..."
cp src/index.html docs/
cp src/about.html docs/
cp src/contact.html docs/
cp src/work.html docs/

# 5. Copie du JS
echo "📦 Copie du JavaScript..."
cp -r src/js docs/

# 6. Copie des assets (images, etc.)
echo "🖼  Copie des assets..."
cp -r src/assets/ docs/

echo "✅ Build terminé avec succès ! Les fichiers sont prêts dans le dossier dist/"
