class ListNode<T> {
    var value: T?
    var next: ListNode?
}

extension ListNode: CustomStringConvertible {
    var description: String {
        guard let value = value else {
            return "nil"
        }
        return "\(value)"
    }
}

class LinkedList<T> {
  var head = ListNode<T>()
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        var values = [String]()
        var cur: ListNode? = head
        while cur != nil {
            if let cur = cur {
                values.append("\(cur)")
            }
            cur = cur?.next
        }
        return values.joined(separator: " -> ")
    }
}
