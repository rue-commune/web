#!/bin/sh
# Cloudflare Pages build command. Pulls the latest gouvernance documents
# (statuts, RI, OdJ/PV of CA meetings) before building, so the site always
# shows the current main branch of rue-commune/gouvernance.
set -eu
git submodule update --init --remote --depth 1 gouvernance
"$(dirname "$0")/bin/hugo" --gc
