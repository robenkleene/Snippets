func addElement(element: ElementType, forIdentifier identifier: String) {
    objc_sync_enter(self)
    guard var elements = identifierToElements[identifier] else {
        elements[identifier] = [element]
        objc_sync_exit(self)
        return
    }

	elements.append(element)
    identifierToElements[identifier] = elements
    objc_sync_exit(self)
}
