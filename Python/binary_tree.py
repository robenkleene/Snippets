"""
tree
"""
from collections import deque

class Node:
    """
    Node
    """
    def __init__(self, val):
        self.left = None
        self.right = None
        self.val = val

    def __repr__(self):
        return str(self.val)

    def chain_string(self, level=0, is_left=None):
        """
        Node children to string
        """
        result = ""
        if self.left is not None:
            result += self.left.chain_string(level + 1, True)
        char = '' if is_left is None else '/ ' if is_left else '\\ '
        result += ' ' * 4 * level + char + str(self.val) + "\n"
        if self.right is not None:
            result += self.right.chain_string(level + 1, False)
        return result

class Tree:
    """
    Tree
    """
    def __init__(self):
        self.root = None

    def __repr__(self):
        return self.root.chain_string()

    @staticmethod
    def make(arr):
        """
        Make from string
        """
        n = iter(arr)
        root = Node(next(n))
        fringe = deque([root])
        while True:
            head = fringe.popleft()
            try:
                head.left = Node(next(n))
                fringe.append(head.left)
                head.right = Node(next(n))
                fringe.append(head.right)
            except StopIteration:
                break
        tree = Tree()
        tree.root = root
        return tree

def dfs_iter(start, goal=None):
    """
    dfs_iter
    """
    visited, stack = [], [start]
    while stack:
        curr = stack.pop()
        visited.append(curr)
        if goal is not None and curr.val == goal:
            return visited
        if curr.left is not None:
            stack.append(curr.left)
        if curr.right is not None:
            stack.append(curr.right)
    return visited

def bfs_iter(start, goal=None):
    """
    bfs_iter
    """
    visited, queue = [], [start]
    while queue:
        curr = queue.pop(0)
        visited.append(curr)
        if goal is not None and curr.val == goal:
            return visited
        if curr.left is not None:
            queue.append(curr.left)
        if curr.right is not None:
            queue.append(curr.right)
    return visited

def dfs_recu(curr, goal=None, visited=None):
    """
    dfs_recu
    """
    visited = visited or [curr]
    if goal is not None and curr.val == goal:
        return visited
    if curr.left is not None:
        visited += dfs_recu(curr.left, goal, [curr.left])
    if curr.right is not None:
        visited += dfs_recu(curr.right, goal, [curr.right])
    return visited
