def dict_to_xml(tag, d):
    parts = ['<{}>'.format(tag)]
    for key, val in d.items():
        parts.append('<{0}>{1}</{0}>'.format(key, val))
        parts.append('</{}>'.format(tag))
        return ' '.join(parts)

d = { 'name': '<spam>'}
s = dict_to_xml('item',d)
print(s)