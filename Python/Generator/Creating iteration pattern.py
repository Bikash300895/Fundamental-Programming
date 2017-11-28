def frange(start, end, increment):
    x = start
    while x<end:
        yield x
        x = x+increment

for n in frange(2, 5, .5):
    print(n)