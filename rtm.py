#!/usr/bin/python
# encoding: utf-8

from xml.dom.minidom import parse, parseString
import urllib2

strUrl = 'https://www.rememberthemilk.com/atom/nightspry/8669179/?tok=eJwNzNsNwjAMAMCJIvkVP8ZJnLhUQgjR-rA93AAH23uCxNgoOUGH4o4I2IajzySo7guNKNPnxGTFJUWwA8RxVXudx*O*3p9ve57X3Vw10KLJRiYRs*UdDKxTcI2M6jxdlFi5IOtfqKWGCXUTobSFOsL4B5rNKTo'

f = urllib2.urlopen(strUrl)
strXml = f.read()
f.close()

objDom = parseString(strXml)

def getText(nodelist):
    rc = []
    for node in nodelist:
        if node.nodeType == node.TEXT_NODE:
            rc.append(node.data)
    return ''.join(rc).encode('utf-8')

for objTitle in objDom.getElementsByTagName('title'):
     print getText(objTitle.childNodes)


