class Node<T> {
    var value: T?
    var next: Node?
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let value = value else {
            return "nil"
        }
        return "\(value)"
    }
}

class LinkedList<T> {
  var head = Node<T>()
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        var values = [String]()
        var cur: Node? = head
        while cur != nil {
            if let cur = cur {
                values.append("\(cur)")
            }
            cur = cur?.next
        }
        return values.joined(separator: " -> ")
    }
}
