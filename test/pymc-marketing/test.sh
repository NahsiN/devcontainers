#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "pymc" python -c "import pymc"
check "pymc-extras" python -c "import pymc_extras"
check "pymc-marketing" python -c "import pymc_marketing"
check "git" git --version
check "claude" claude --version

# Report result
reportResults