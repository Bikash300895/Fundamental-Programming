class Node:
    def __init__(self, value):
        self._value = value
        self._children = []

    # __repr__() function is called when any print function is called through the name of the object
    def __repr__(self):
        return 'Node({!r})'.format(self._value)

    def add_child(self, node):
        self._children.append(node)

    # Some object is not itself an iterable bt to act it like iterator we can user __iter__()
    #  to iterate through any of its instant variable
    def __iter__(self):
        return iter(self._children)

if __name__ == '__main__':
    root = Node(0)
    child1 = Node(1)
    child2 = Node(2)

    root.add_child(child1)
    root.add_child(child2)

    for ch in root:
        print(ch)