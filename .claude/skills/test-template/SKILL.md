---
name: test-template
description: Test the specified devcontainer template
argument-hint: template-name
---

From repo root, execute the following command:
```bash
bash .github/actions/smoke-test/test.sh $ARGUMENTS[0]
```