typealias ListNode = Node<Int>

class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "\(value)"
    }
}

extension Node {
    func chainString() -> String {
        var values = [String]()
        var cur: Node? = self
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
    var head: Node<T>?
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
    var current: Node<T>?
    for item in array {
        let node = Node<T>(value: item)
        if let current = current {
            current.next = node
        } else {
            llist.head = node
        }
        current = node
    }
    return llist
}
