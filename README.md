# Datascience Development Environment Template
Datascience oriented development enviornments using devcontainers.

## datascience-kaggle

# How to Use

## In VSCode

## CLI
1. Pull down the template using `devcontainer templates apply -t ghcr.io/NahsiN/devcontainers/color:latest` This will create a folder `.devcontainer` withing your current directory and pull down the template
2. `devcontainer up`

# Background
Sometimes I miss the giants that I grew up with; [Matlab](https://www.mathworks.com/products/matlab.html), [Maple](https://www.maplesoft.com/products/Maple/) and [Mathematica](https://www.wolfram.com/mathematica/),
because they provided a consistent, robust computational environment. The result was a playground in which I could prototype ideas quickly.

As closed-source monoliths made way for modular open-source packages or frameworks such as the SciPy stack, [conda](https://anaconda.org/channels/anaconda/packages/conda/overview) would take the mantle of maintaining a scientific computational stack. Honorable mention for [sagemath](https://www.sagemath.org/). Today, [mamba](https://mamba.readthedocs.io/en/latest/index.html), [uv](https://docs.astral.sh/uv/), [pixi](https://pixi.prefix.dev/) continue what conda started. Moreover, thanks to Jupyter and advances in cloud computing technologies such as docker, today we are presented with various choices that purport to be the ultimate collaborative computational environment for data scientists. [Google Colab](https://colab.research.google.com/) in my opinon being the most famous of these.

Despite the pervasiveness of "the cloud" in our daily lives, I belong to the minority who still prefers using the computational capacity of their local machines vs the cloud. Thanks to devcontainers and public docker images, I am finally able to have a satisfactory experimenation workflow where the headache of maintaining the development environment is resolved due to the smart and well paid engineers working at FAANG or similar tech companies. To all of you, thank you from the bottom of heart! 


## TODO
- [X] based of Kaggle's docker images tailored to my needs.
- [X] Same Python environment as used by Kaggle or Google-Colab
- [X] background story of why this exists. Want something local. Like Google Collab or Kaggle notebooks. Come from matlab, Maple, Mathematics days. Storage is not an issue
- [X] test cargs
- [X] History on why I am creating this
- sagemath devcontainer
- cocalc look into

# References
- [template-starter](https://github.com/devcontainers/template-starter)
- [Dev Container Templates: Self Authoring Guide](https://github.com/devcontainers/template-starter/blob/main/README.md)
- [matheusfvesco/devcontainer-templates](https://github.com/matheusfvesco/devcontainer-templates/tree/main) 




