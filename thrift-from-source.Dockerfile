FROM centos:7
RUN yum update -y && yum clean all
RUN yum install -y gcc-c++ python python-devel tar
RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install --upgrade setuptools
WORKDIR /tmp
RUN curl http://mirror.reverse.net/pub/apache/thrift/0.10.0/thrift-0.10.0.tar.gz | tar -xz && \
    pushd thrift-0.10.0/lib/py && \
    python setup.py install && \
    popd && \
    rm -rf thrift-0.10.0
RUN mkdir /tmp/thrift-4042
ADD . /tmp/thrift-4042
WORKDIR /tmp/thrift-4042
RUN python setup.py install
CMD ["python", "-m", "thrift4042"]
