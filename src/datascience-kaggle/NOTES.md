Datascience development enviorment based of Kaggle docker images with the following 
devcontainer features:
- `dvc`: data version control
- `quartro`: for publishing scientific documents

**NOTE**: Kaggle Python images are large
- cpu ~26GB
- gpu ~46GB

## How to Use
In your project directory, perform the following steps depending on your preference:

### VSCode, VSCodium, etc.
Assuming you've Dev Containers extension installed, open up the command palette:
1. Select Dev Containers: Add Dev Container Configuration Files
2. Select Add configuration to workspace
3. Enter `ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest` as the custom template id
4. Select values for options, see above. Leave blank for additional features. At this point, a `.devcontainer` folder will be created within your project directory. 
5. Select Dev Containers: Reopen in Container
6. TIP: Select Jupyter kernel when choosing a kernel for your Jupyter notebook as that will allow you to choose between Python, Julia and R kernels.

### devcontainers CLI
1. Pull down this tempate using default options: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest`
    1. [Optional] Customize template option values: `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/datascience-kaggle:latest -a '{"imageVariant": "v165", "accelerator": "-gpu-"}'`
2. Bring up the devcontainer: `devconatiner up`.
    1. [Optional] You can verify the container is running using `docker ps`
3. Drop into the container shell with your project directory mounted at `/workspaces/<project-dir>` within the container: `devcontainer exec /bin/zsh`.
    1. [Optional] You can also run any command within the container using `devcontainer exec <command>`
4. Stop the underlying container using `docker container stop <conatiner-name or container-id>`



