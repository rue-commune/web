# Rue Commune — site de lancement

Hugo site (no theme), no test suite. See `README.md` for local preview,
publishing a CA meeting, and the Cloudflare Pages settings.

## Layout

- `layouts/baseof.html` + `layouts/_partials/` hold the shared head, header
  and footer; `layouts/home.html` is the home page markup.
- `content/` holds Markdown pages. `content/gouvernance/_content.gotmpl` is a
  content adapter that publishes selected files from the `gouvernance/`
  submodule (rue-commune/gouvernance): the statuts, the RI, and
  `CA/AAAAMMJJ-{odj,pv}.md`. Other files in that repo are not published.
- `static/` is copied as-is: `styles.css`, `assets/`, `_headers`,
  `_redirects`.

## Deployment

Cloudflare Pages runs `./build.sh`, which updates the submodule to the latest
`main` of rue-commune/gouvernance and runs Hugo into `public/`. A push to
gouvernance `main` triggers a rebuild via its deploy-hook workflow.

## Conventions

- No linter/formatter is configured; match the existing style in
  `static/styles.css` and the layouts (plain, minimally-commented
  markup/CSS).
- Always run Hugo through `bin/hugo`, which pins the version used both
  locally and on Cloudflare; upgrading means editing `VERSION` and the
  hashes there, plus `min` in `hugo.toml`.
- Ask before committing, unless the user's request already covers several
  steps including committing.
- Since there's no test suite or CI, check `bin/hugo` builds without warnings
  and look at the result in a browser for anything touching layouts,
  content or CSS.
