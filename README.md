# Datascience Development Environment Template
Datascience oriented development enviornments using devcontainers.

## datascience-kaggle

Refer to [README.md](./src/datascience-kaggle/README.md) for usage instructions.

# Background
Sometimes I miss the giants that I grew up with; [Matlab](https://www.mathworks.com/products/matlab.html), [Maple](https://www.maplesoft.com/products/Maple/) and [Mathematica](https://www.wolfram.com/mathematica/),
because they provided a consistent, robust computational environment. The result was a playground in which I could prototype ideas quickly.

As closed-source monoliths made way for modular open-source packages or frameworks such as the SciPy stack, [conda](https://anaconda.org/channels/anaconda/packages/conda/overview) would take the mantle of maintaining a scientific computational stack. Honorable mention for [sagemath](https://www.sagemath.org/). Today, [mamba](https://mamba.readthedocs.io/en/latest/index.html), [uv](https://docs.astral.sh/uv/), [pixi](https://pixi.prefix.dev/) continue what conda started. Moreover, thanks to Jupyter and advances in cloud computing technologies such as docker, today we are presented with various choices that purport to be the ultimate collaborative computational environment for data scientists. [Google Colab](https://colab.research.google.com/) in my opinon being the most famous of these.

Despite the pervasiveness of "the cloud" in our daily lives, I belong to the minority who still prefers the computational capacity of their local machines over the cloud. Thanks to devcontainers and public docker images, I am finally able to have a satisfactory experimenation workflow where the headache of maintaining the computational environment is handled by the smart and well paid engineers working at tech companies. To all of you, thank you from the bottom of heart! 

## Repo and Template Structure
```
.
├── .devcontainer
│   └── devcontainer.json
├── .github
│   ├── actions
│   │   └── smoke-test
│   │       ├── action.yaml
│   │       ├── build.sh
│   │       └── test.sh
│   └── workflows
│       ├── release.yaml
│       └── test-pr.yaml
├── LICENSE
├── README.md
├── src
│   └── datascience-kaggle
│       ├── .devcontainer
│       │   └── devcontainer.json
│       ├── devcontainer-template.json
│       ├── NOTES.md
│       └── README.md
└── test
    ├── datascience-kaggle
    │   └── test.sh
    └── test-utils
        └── test-utils.sh

12 directories, 14 files
```


## TODO
- [ ] Publish the datascience-kaggle template
- [ ] sagemath devcontainer
- [ ] look into cocalc

# References
- [template-starter](https://github.com/devcontainers/template-starter)
- [Dev Container Templates: Self Authoring Guide](https://github.com/devcontainers/template-starter/blob/main/README.md)
- [matheusfvesco/devcontainer-templates](https://github.com/matheusfvesco/devcontainer-templates/tree/main) 




