class Pair:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    # def __repr__(self):
    #     return 'pair({0.x!r}, {0.y!r})'.format(self)

    def __str__(self):
        return '({0.x!s}, {0.y!s})'.format(self)

    # Alternate deceleration
    def __repr__(self):
        return 'Pair(%r %r)' % (self.x, self.y)


p = Pair(3,4)
print(p)        # Simple print statement prints the string representation

print('{0!r}'.format(p))    # This one prints the repr representation
