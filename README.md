# Rue Commune — site de lancement

Site statique de l'association Rue Commune, prêt à être publié sur Cloudflare Pages.

## Aperçu local

```sh
python3 -m http.server 8000
```

Puis ouvrir <http://localhost:8000>.

## Déploiement Cloudflare Pages

- Framework preset : `None`
- Build command : laisser vide
- Build output directory : `/`

Le fichier `_headers` est automatiquement pris en charge par Cloudflare Pages.
