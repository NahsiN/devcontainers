#!/bin/bash
set -e

TEMPLATE_ID="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/build.sh" "${TEMPLATE_ID}"
bash "${SCRIPT_DIR}/test.sh" "${TEMPLATE_ID}"
