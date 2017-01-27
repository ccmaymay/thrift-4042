# Minimal working example for THRIFT-4042

Docker image reproducing the bug in [THRIFT-4042](https://issues.apache.org/jira/browse/THRIFT-4042).

To build the image:

```bash
docker build -t thrift-4042 .
```

To run a container (to reproduce the bug):

```bash
docker run thrift-4042
```

As the bug is a race condition, it may not be reproduced the first time
you run a container.  Consider running ten or more containers (in
succession) to reproduce the bug with higher probability.
