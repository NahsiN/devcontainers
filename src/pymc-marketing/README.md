
# PyMC-Marketing (pymc-marketing)

A Bayesian marketing devcontainer based on pymc-marketing Dockerfile.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|


PyMC marketing devcontainer based of pymc-marketing's [suggestion](https://github.com/pymc-labs/pymc-marketing/tree/main/scripts/docker). Comes with the following features: 
devcontainer features:
- `claude`: native install of claude code CLI supporting syntax highlighting

## How to Use
In your project directory, perform the following steps depending on your preference:

### VSCode, VSCodium, etc.
Assuming you've Dev Containers extension installed, open up the command palette:
1. Select Dev Containers: Add Dev Container Configuration Files
2. Select Add configuration to workspace
3. Enter `ghcr.io/NahsiN/devcontainers/pymc-marketing:latest` as the custom template id
4. Select values for options, see above. Leave blank for additional features. At this point, a `.devcontainer` folder will be created within your project directory. 
5. Select Dev Containers: Reopen in Container


### devcontainers CLI
1. Pull down this tempate using default options: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/pymc-marketing:latest`
2. Bring up the devcontainer: `devconatiner up`.
    1. [Optional] You can verify the container is running using `docker ps`
3. Drop into the container shell with your project directory mounted at `/workspaces/<project-dir>` within the container: `devcontainer exec /bin/bash`.
    1. [Optional] You can also run any command within the container using `devcontainer exec <command>`
4. Stop the underlying container using `docker container stop <conatiner-name or container-id>`

---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/NahsiN/devcontainers/blob/main/src/pymc-marketing/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
