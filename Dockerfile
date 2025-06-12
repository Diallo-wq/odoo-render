# Utiliser l'image officielle Odoo version 16
FROM odoo:16.0

# Installer des outils utiles
USER root
RUN apt-get update && apt-get install -y nano git && rm -rf /var/lib/apt/lists/*

# Exposer le port Odoo
EXPOSE 8069

# Démarrer Odoo
CMD ["odoo"]
