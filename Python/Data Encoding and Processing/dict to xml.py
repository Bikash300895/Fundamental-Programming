from xml.etree.ElementTree import Element


def dict_to_xml(tag, d):
    elem = Element(tag)         # Start and end tag of the entire xml, inside this tag all the other tag resides
    for key, val in d.items():
        child = Element(key)    # makes start and end tag, inside this all the other tag resides
        child.text = str(val)   # val inside the tag
        elem.append(child)      # adding this inside the main tag
    return elem

s = {"name": "ACME", "shares": 100, "price": 542.23}
e = dict_to_xml('stock', s)
print(e)

from xml.etree.ElementTree import tostring
e.set('_id', '1234')    # adding to the attribute inside the main tag
print(tostring(e))