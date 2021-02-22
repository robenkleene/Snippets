class Node<T>: CustomStringConvertible {
    var left: Node?
    var right: Node?
    var value: T

    init(value: T) {
        self.value = value
    }

    var description: String {
        return "\(value)"
    }

    func chainString(level: Int = 0, isLeft: Bool? = nil) -> String {
        var result = ""
        if let left = left {
            result += left.chainString(level: level + 1, isLeft: true)
        }
        var char = ""
        if let isLeft = isLeft {
            char = isLeft ? "/ " : "\\ "
        }
        let indent = [String](repeating: " ", count: level * 4).joined()
        result += "\(indent)\(char)\(value)\n"
        if let right = right {
            result += right.chainString(level: level + 1, isLeft: false)
        }
        return result
    }
}

class BinaryTree<T: Comparable>: CustomStringConvertible {
    var root: Node<T>?

    var description: String {
        guard let root = root else {
            return ""
        }
        return root.chainString()
    }

    convenience init(source: [T]) {
        self.init()
        insert(source)
    }

    func insert(_ arr: [T]) {
        for val in arr {
            insert(val)
        }
    }

    @discardableResult func insert(_ value: T) -> Node<T> {
        func insert_recu(node: Node<T>?, value: T) -> Node<T> {
            guard let node = node else {
                return Node(value: value)
            }

            if value < node.value {
                node.left = insert_recu(node: node.left, value: value)
            } else {
                node.right = insert_recu(node: node.right, value: value)
            }
            return node
        }

        guard root != nil else {
            let node = Node(value: value)
            root = node
            return node
        }

        return insert_recu(node: root, value: value)
    }
}

@discardableResult func insert<T: Comparable>(node: Node<T>?, value: T) -> Node<T> {
    guard let node = node else {
        return Node(value: value)
    }

    if value < node.value {
        node.left = insert(node: node.left, value: value)
    } else {
        node.right = insert(node: node.right, value: value)
    }
    return node
}

func search<T: Comparable>(node: Node<T>?, value: T) -> Node<T>? {
    guard let node = node else {
        return nil
    }

    guard node.value != value else {
        return node
    }

    if value < node.value {
        return search(node: node.left, value: value)
    } else {
        return search(node: node.right, value: value)
    }
}
