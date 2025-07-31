#!/bin/bash

# Stoppe si une erreur survient
set -e

echo "🚀 Démarrage du build..."

# 1. Nettoyage du dossier dist/
echo "🧹 Nettoyage du dossier dist/..."
rm -rf dist
mkdir dist

# 2. Création des dossiers nécessaires
mkdir -p dist/css
mkdir -p dist/js
mkdir -p dist/assets/img

# 3. Compilation du SCSS en CSS
echo "🎨 Compilation du SCSS..."
npx node-sass src/scss/app.scss dist/css/app.css --output-style compressed

# 4. Copie du HTML
echo "📄 Copie du HTML..."
cp src/index.html dist/
cp src/about.html dist/
cp src/contact.html dist/
cp src/work.html dist/

# 5. Copie du JS
echo "📦 Copie du JavaScript..."
cp -r src/js dist/

# 6. Copie des assets (images, etc.)
echo "🖼  Copie des assets..."
cp -r src/assets/ dist/

echo "✅ Build terminé avec succès ! Les fichiers sont prêts dans le dossier dist/"
