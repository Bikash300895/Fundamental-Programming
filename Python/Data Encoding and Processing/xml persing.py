from urllib.request import urlopen
from xml.etree.ElementTree import parse

u = urlopen('https://planet.python.org/rss20.xml')
doc = parse(u)
print(type(doc)) # <class 'xml.etree.ElementTree.ElementTree'>
print(type(u)) # <class 'http.client.HTTPResponse'>

for item in doc.iterfind('channel/item'):
    title = item.findtext('title')
    print(title)


