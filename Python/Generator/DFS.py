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

    def depth_first(self):
        return DepthFirstIteration(self)


class DepthFirstIteration(object):
    def __init__(self, start_node):
        self._node = start_node
        self._children_iter = None
        self._child_iter = None

    def __iter__(self):
        return self;

    def __next__(self):
        if self._children_iter is None:
            self._child_iter = iter(self._node)
            return self._node

        elif self._child_iter:
            try:
                nextchild = next(self._child_iter)
                return nextchild
            except StopIteration:
                self._child_iter = None
                return next(self)
        else:
            self._child_iter = next(self._children_iter).depth_first()
        return next(self)


if __name__ == '__main__':
    root = Node(0)
    child1 = Node(1)
    child2 = Node(2)

    root.add_child(child1)
    root.add_child(child2)

    child1.add_child(Node(3))
    child1.add_child(Node(4))
    child2.add_child(Node(5))
    for ch in root.depth_first():
        print(ch)