---
name: build-test-template
description: Build and test the specified devcontainer template
argument-hint: template-name
---

1. From repo root, execute the following command:
```bash
bash .github/actions/smoke-test/build-and-test.sh $ARGUMENTS[0]
```
Scan the output for `containerId` and note it down. e.g. the output will have like
```
{"outcome":"success","containerId":"585a3eaa7a1e3586dc39955cb5d761f8bcdf71af29661f37c44c6bda53652809"}
```

2. Remove the devcontainer. Assume the containerId from above, run
```bash
docker container stop <containerId>
docker container rm <containerId>
```