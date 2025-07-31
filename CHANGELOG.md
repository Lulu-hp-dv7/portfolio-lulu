# Changelog

Toutes les modifications notables de ce projet seront documentées dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/)
et ce projet suit la [version sémantique](https://semver.org/lang/fr/).

---

## [v2.0.0] - 2025-07-31

### 🚀 Nouveautés majeures
- Refonte complète du projet : restructuration des dossiers et fichiers
- Passage à un pipeline de build automatisé avec séparation `src/` et `dist/`
- CSS généré automatiquement à partir des fichiers SCSS (plus de CSS manuel)
- Mise en place de bonnes pratiques Git : tags annotés, branches claires
- Préparation complète pour déploiement en production via branche `main`

### 💥 Changements incompatibles (breaking changes)
- Structure des dossiers et fichiers modifiée, non rétrocompatible avec la v1.x
- Suppression de l’ancien CSS manuel, utilisation exclusive du SCSS compilé
- Nouveau workflow Git avec branche `develop` pour dev et `main` pour prod

---

## [v1.0.0] - 2025-06-15

### ✨ Fonctionnalités principales
- Première version stable du portfolio avec HTML, JS, SCSS
- Organisation initiale des fichiers source et compilation CSS basique
- Intégration basique de Git avec dépôt GitHub et branche `develop`

---