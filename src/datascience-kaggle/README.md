
# Docker Kaggle Image (datascience-kaggle)

A datascience development enviorment based of Kaggle's docker images

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | image tags: latest, v166, v165, etc. One of the tagged releases from https://github.com/Kaggle/docker-python/releases | string | latest |
| accelerator | accelerator choice between cpu `-` and gpu `-gpu-` variants | string | - |

Datascience development enviorment based of Kaggle docker images with the following 
devcontainer features:
- `dvc`: data version control
- `quartro`: for publishing scientific documents

**NOTE**: Kaggle Python images are large
- cpu ~26GB
- gpu ~46GB

## How to Use
In your project directory, perform the following steps:

### VSCode, VSCodium, etc.
- Assuming you've the Dev Containers extension installed, from the command palette select `Dev Containers: Reopen in Container`

### devcontainers CLI
1. Pull down this tempate using default options: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest`
    1. [Optional] Customize template option values: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest -a '{"imageVariant": "v165", "accelerator": "-gpu-"}'`
2. Bring up the devcontainer: `devconatiner up`.
    1. [Optional] You can verify the container is running using `docker ps`
3. Drop into the container shell with your project directory mounted at `/workspaces/<project-dir>` within the container: `devcontainer exec /bin/zsh`.
    1. [Optional] You can also run any command within the container using `devcontainer exec <command>`
4. Stop the underlying container using `docker container stop <conatiner-name or container-id>`





---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/NahsiN/devcontainers/blob/main/src/datascience-kaggle/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
