---
name: build-template
description: Build the specified devcontainer template
argument-hint: template-name
---

From repo root, execute the following command:
```bash
bash .github/actions/smoke-test/build.sh $ARGUMENTS[0]
```