#!/bin/bash

# Définition des dossiers
BASE_DIR="Veolia_Cyber_Hub"
SUBDIRS=("services/ntp" "services/logging" "services/compliance" "services/proxy" "docs")

# Création de l’arborescence
echo "📁 Création de l’arborescence du projet..."
mkdir -p "$BASE_DIR"
for dir in "${SUBDIRS[@]}"; do
    mkdir -p "$BASE_DIR/$dir"
done

# Création des fichiers essentiels
echo "📄 Création des fichiers de configuration..."
touch "$BASE_DIR/docker-compose.yml"
touch "$BASE_DIR/.env"
touch "$BASE_DIR/docs/installation.md"
touch "$BASE_DIR/docs/securisation.md"

# Fichiers spécifiques aux services
touch "$BASE_DIR/services/ntp/Dockerfile"
touch "$BASE_DIR/services/ntp/chrony.conf"
touch "$BASE_DIR/services/logging/Dockerfile"
touch "$BASE_DIR/services/logging/graylog.conf"
touch "$BASE_DIR/services/compliance/Dockerfile"
touch "$BASE_DIR/services/compliance/wazuh.conf"
touch "$BASE_DIR/services/proxy/Dockerfile"
touch "$BASE_DIR/services/proxy/squid.conf"

echo "✅ Arborescence du projet créée avec succès dans $BASE_DIR"

# Affichage de l’arborescence
echo "📂 Structure du projet :"
tree "$BASE_DIR"
