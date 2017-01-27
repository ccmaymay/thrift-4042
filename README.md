# Minimal working example for THRIFT-4042

Docker images reproducing the bug in [THRIFT-4042](https://issues.apache.org/jira/browse/THRIFT-4042) and demonstrating a fix:

## Public build

* `Dockerfile`: reproduces THRIFT-4042, installing thrift automatically from PyPI
* `thrift-from-source.Dockerfile`: reproduces THRIFT-4042, installing thrift manually from source
* `thrift-from-source-patched.Dockerfile`: fixes THRIFT-4042, installing thrift manually from source after patching

These images are built and run automatically via Travis CI: [![thrift-4042 build status](https://api.travis-ci.org/cjmay/thrift-4042.png?branch=master)](https://travis-ci.org/cjmay/thrift-4042)

## Building and running the images yourself

To build and run the thrift-from-source Docker image, for example:

```bash
docker build -t thrift-4042:thrift-from-source -f thrift-from-source.Dockerfile .
docker run thrift-4042:thrift-from-source
```

As the bug is a race condition, you may need to run the image more than once to reproduce the error.
