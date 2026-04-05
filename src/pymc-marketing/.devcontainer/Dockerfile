# Reference: pymc-marketing/scripts/docker/Dockerfile

# quay.io/jupyter/base-notebook does not have the 3.11.6 tag
FROM docker.io/jupyter/base-notebook:python-3.11.6

USER root
# curl needed for Claude install within devcontainer
RUN apt-get update && apt-get install -y curl git
USER jovyan

LABEL name="pymc-marketing"
LABEL description="Environment for PyMC-Marketing"

# Install conda environment
COPY environment-dev.yml /tmp/

RUN mamba env update -n base -f /tmp/environment-dev.yml && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR
HEALTHCHECK NONE

