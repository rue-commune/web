---
name: jeff-doctor
description: Audit this project against Jeff's cross-project engineering and AI-agent conventions. Use when the user runs /jeff-doctor.
user-invocable: true
---

## Step 1: verify the checklist source is current

```sh
cd /home/jeff/src/jma/AI && git fetch origin main -q && git status --short && git rev-parse HEAD origin/main
```

If the working tree isn't clean, or `HEAD` isn't exactly `origin/main`,
warn the user loudly before proceeding — the conformity report would be
against a stale or unreviewed version of the checklist.

## Step 2: run the audit

Read `/home/jeff/src/jma/AI/jeff-doctor.md` and follow its "What to do"
section against this project (`/home/jeff/src/jma/rue-commune/web`).
