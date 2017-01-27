#!/usr/bin/env python2.7


#from multiprocessing import Pool
from thrift.protocol.TCompactProtocol import TCompactProtocolAccelerated
TCompactProtocolAccelerated(None, fallback=False)


#def import_thrift(_):
#    from thrift.transport.TTransport import TMemoryBuffer
#    proto = TCompactProtocolAccelerated(TMemoryBuffer(), fallback=False)
#    return True
#
#
#if __name__ == '__main__':
#    p = Pool(processes=2, maxtasksperchild=1)
#    p.map(import_thrift, range(2))
