# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **devcontainers template repository** for data science development environments. Currently contains two templates:

- `datascience-kaggle` — wraps Kaggle's Python Docker images with additional VS Code extensions and dev tools (DVC, Quarto, Claude Code CLI, Zsh)
- `pymc-marketing` — Bayesian marketing environment based on the pymc-marketing stack (PyMC, PyMC-Extras, PyMC-Marketing, Claude Code CLI)

Templates are published to the GitHub Container Registry via GitHub Actions and consumed via the devcontainers CLI or VS Code Dev Containers extension.

## Repository Layout

- `src/<template-id>/` — Template source; each subdirectory is a publishable template
  - `devcontainer-template.json` — Template metadata, version, and user-configurable options
  - `.devcontainer/devcontainer.json` — Actual devcontainer config; uses `${templateOption:KEY}` variables replaced at build time
- `test/<template-id>/test.sh` — Smoke tests run inside the built container
- `test/test-utils/test-utils.sh` — Shared `check()` and `reportResults()` helpers for tests
- `.github/actions/smoke-test/` — Composite action that builds and tests a template
  - `build.sh` — Interpolates template options, builds container with `devcontainer up`
  - `test.sh` — Runs tests inside container via `devcontainer exec`, then cleans up

## Developing Locally
Assume `devcontainer` CLI is installed. If not, prompt the user to install it using `homebrew`. DO NOT INSTALL YOURSELF! Relative to repo root path, `.devcontainer/devcontainer.json` provides the containerized development environment. Execute following as needed from the repo root path:

### Instantiate a local development environment
```bash
devcontainer up
```
From stdout, extract the `containerId`, e.g. using
```
{"outcome":"success","containerId":"f2b9c95a33cb94514d6be015386cf72bece5f3b478dbca7afb38caad787b0720","remoteUser":"node","remoteWorkspaceFolder":"/workspaces/devcontainers"}
```

### Executing a command in a devcontainer
```bash
devcontainer exec <command>
```
e.g. `devcontainer exec bash -c "echo hello world"`

### Stopping the devcontainer
```bash
docker container stop <containerId>
```

## How Template Options Work

`devcontainer-template.json` declares options with default values. `build.sh` finds every `${templateOption:KEY}` placeholder in the template directory and replaces it with the default value using `sed`. Every option **must** have a `default` or the build fails.

Example: the `imageVariant` and `accelerator` options in `datascience-kaggle` compose the base image:
```
gcr.io/kaggle${templateOption:accelerator}images/python:${templateOption:imageVariant}
```

## CI/CD

- **`test-pr.yaml`** — Triggered on PRs on Github; uses `dorny/paths-filter` to detect which templates changed, then runs the smoke-test action only for those templates.
- **`release.yaml`** — Manual workflow dispatch (main branch only); publishes templates to GHCR via `devcontainers/action@v1` and auto-generates/commits updated `README.md` files.

## Adding a New Template

1. Create `src/<new-template-id>/devcontainer-template.json`, `.devcontainer/devcontainer.json` and `src/<new-template-id>/NOTES.md`
2. Add smoke tests under `test/<new-template-id>/test.sh` using `check` and `reportResults` from `test-utils.sh`.
3. The CI pipeline auto-detects changed templates under `src/` and runs tests on PRs.
