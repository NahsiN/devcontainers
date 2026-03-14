#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
# check "color" [ $(cat /tmp/color.txt | grep red) ]
# check accelerator 
# tf.test.is_cpu_target_available("x86")
# tf.test.is_gpu_available()
# check "tensorflow" [$(python -c "import tensorflow as tf;")]
# check "tensorflow" [ $(pip list | grep tensorflow) ]
# Package existence checks for my datascience workflow
check "tensorflow" python -c "import tensorflow"
check "torch" python -c "import torch"
check "matplotlib" python -c "import matplotlib"
check "seaborn" python -c "import seaborn"
check "pandas" python -c "import pandas"
check "numpy" python -c "import numpy"
check "scikit-learn" python -c "import sklearn"
check "scipy" python -c "import scipy"
check "xgboost" python -c "import xgboost"
check "lightgbm" python -c "import lightgbm"
check "pymc" python -c "import pymc"


# Report result
reportResults