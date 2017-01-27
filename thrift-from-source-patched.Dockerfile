FROM centos:7
RUN yum update -y && yum clean all
RUN yum install -y gcc-c++ patch python python-devel tar
RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install --upgrade setuptools
RUN mkdir /tmp/thrift-4042
ADD . /tmp/thrift-4042
WORKDIR /tmp
RUN curl http://mirror.reverse.net/pub/apache/thrift/0.10.0/thrift-0.10.0.tar.gz | tar -xz && \
    pushd thrift-0.10.0 && \
    patch -p1 < /tmp/thrift-4042/patch && \
    pushd lib/py && \
    python setup.py install && \
    popd && \
    popd && \
    rm -rf thrift-0.10.0
WORKDIR /tmp/thrift-4042
RUN python setup.py install
CMD ["python", "-m", "thrift4042"]
