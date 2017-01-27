#!/usr/bin/env python2.7


from thrift.protocol.TCompactProtocol import TCompactProtocolAccelerated
from multiprocessing import Process


def load_fastbinary():
    return TCompactProtocolAccelerated(None, fallback=False)


if __name__ == '__main__':
    p = Process(target=load_fastbinary)
    p.start()
    load_fastbinary()
    p.join()
