#!/bin/bash
TEMPLATE_ID="$1"
set -e

SRC_DIR="/tmp/${TEMPLATE_ID}"
echo "Running Smoke Test"

ID_LABEL="test-container=${TEMPLATE_ID}"
# this holds true regardless of the user id
EXEC_CMD='set -e && if [ -f "test-project/test.sh" ]; then cd test-project && chmod +x test.sh && ./test.sh; else ls -a; fi'

if devcontainer exec --workspace-folder "${SRC_DIR}" --id-label ${ID_LABEL} /bin/sh -c 'exit 0' 2>/dev/null; then
    SHELL_CMD="/bin/sh"
else
    SHELL_CMD="/bin/bash"
fi
devcontainer exec --workspace-folder "${SRC_DIR}" --id-label ${ID_LABEL} ${SHELL_CMD} -c "${EXEC_CMD}"

# Clean up
docker rm -f $(docker container ls -f "label=${ID_LABEL}" -q)
rm -rf "${SRC_DIR}"
