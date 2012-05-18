#!/usr/bin/python
# encoding: utf-8

from xml.dom.minidom import parse, parseString
import urllib2

strUrl = 'http://www.atmos.washington.edu/rss/home.rss'

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

for objTitle in objDom.getElementsByTagName('title')[1:3]:
     print getText(objTitle.childNodes)

