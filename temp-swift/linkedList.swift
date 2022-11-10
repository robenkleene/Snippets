class ListNode<T> {
    var value: T
    var next: ListNode?

    init(value: T) {
        self.value = value
    }
}

extension ListNode: CustomStringConvertible {
    var description: String {
        return "\(value)"
    }
}

extension ListNode {
    func chainString() -> String {
        var values = [String]()
        var cur: ListNode? = self
        while cur != nil {
            if let cur = cur {
                values.append("\(cur)")
            }
            cur = cur?.next
        }
        return values.joined(separator: " -> ")
    }
}

class LinkedList<T> {
    var head: ListNode<T>?
    init(head: ListNode<T>? = nil) {
        self.head = head
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "nil"
        }
        return head.chainString()
    }
}

func makeList<T>(from array: [T]) -> LinkedList<T> {
    let llist = LinkedList<T>()
    var current: ListNode<T>?
    for item in array {
        let node = ListNode<T>(value: item)
        if let current = current {
            current.next = node
        } else {
            llist.head = node
        }
        current = node
    }
    return llist
}

