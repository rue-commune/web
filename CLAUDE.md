# Rue Commune — site de lancement

Static HTML/CSS launch site, no build step, no framework, no test suite.

## Working locally

```sh
python3 -m http.server 8000
```

Then open <http://localhost:8000>.

## Deployment

Cloudflare Pages, build output directory `/` (no build command). `_headers`
is read automatically by Cloudflare Pages — see that file for the headers
actually applied.

## Conventions

- No linter/formatter is configured; match the existing style in
  `styles.css` and `index.html` (plain, minimally-commented markup/CSS).
- New pages follow the flat-file pattern of `index.html` /
  `mentions-legales.html` — no subdirectories, no build-time templating.
- Ask before committing, unless the user's request already covers several
  steps including committing.
- Since there's no test suite or CI, there's nothing to run before a
  commit beyond a quick visual check in a browser for anything touching
  markup or CSS.
