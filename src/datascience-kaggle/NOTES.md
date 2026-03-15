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
1. Pull down this tempate: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest` 
2. Bring up the devcontainer: `devconatiner up`.
    1. You can verify the container is running using `docker ps`
3. Drop into the container shell with your project directory mounted into the container: `devcontainer exec /bin/zsh`. The project directory is mounted in `/workspaces/` within the container
    1. You can also run any command within the container using `devcontainer exec <command>`
3. Stop the underlying container using `docker container stop <conatiner-name or container-id>`


