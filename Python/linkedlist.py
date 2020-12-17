class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

    def __repr__(self):
        return self.data

    def chain_string(self):
        cur = self
        data = []
        while cur is not None:
            data.append(str(cur.data))
            cur = cur.next
        data.append("None")
        return " -> ".join(data)

class LinkedList:
    def __init__(self):
        self.head = None

    def __repr__(self):
        return self.head.chain_string()

def make_list(arr):
    llist = LinkedList()
    curr = None
    for item in arr:
        node = ListNode(item)
        if llist.head == None:
            llist.head = node
        else:
            curr.next = node
        curr = node
    return llist

