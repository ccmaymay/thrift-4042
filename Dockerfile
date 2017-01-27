FROM centos:7
RUN yum update -y && yum clean all
RUN yum install -y gcc-c++ python python-devel tar
RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install --upgrade setuptools && \
    pip install --egg thrift==0.10.0
ADD reproduce-bug.py /tmp
WORKDIR /tmp
CMD ["bash", "-c", "python reproduce-bug.py & python reproduce-bug.py &"]
