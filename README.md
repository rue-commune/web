# Rue Commune — site de lancement

Site de l'association Rue Commune, généré avec [Hugo](https://gohugo.io/) et
publié sur Cloudflare Pages.

Les documents de gouvernance (statuts, règlement intérieur, ordres du jour et
procès-verbaux du CA) proviennent du dépôt
[rue-commune/gouvernance](https://github.com/rue-commune/gouvernance), inclus
comme sous-module dans `gouvernance/`.

## Aperçu local

```sh
git submodule update --init --remote
bin/hugo server
```

Puis ouvrir <http://localhost:1313>.

`bin/hugo` télécharge au premier lancement la version de Hugo fixée dans le
script (vérifiée par SHA-256) et la garde dans `.cache/`. Inutile d'installer
Hugo ; pour changer de version, modifier `bin/hugo`.

## Publier une réunion du CA

Dans le dépôt `gouvernance`, ajouter `CA/AAAAMMJJ-odj.md` (ordre du jour) ou
`CA/AAAAMMJJ-pv.md` (procès-verbal), puis pousser sur `main`. La page
Gouvernance affiche une ligne par date, avec un lien vers chaque document
présent.

## Déploiement Cloudflare Pages

- Framework preset : `None`
- Build command : `./build.sh`
- Build output directory : `public`
- Deploy hook : son URL est enregistrée comme secret `CF_PAGES_DEPLOY_HOOK`
  du dépôt `gouvernance`, qui relance ainsi le build à chaque push sur `main`.

`build.sh` récupère la dernière version de `main` du dépôt `gouvernance`, puis
lance `bin/hugo` : la version de Hugo est la même en local et sur Cloudflare.
Les fichiers `static/_headers` et `static/_redirects` sont pris en charge par
Cloudflare Pages.
