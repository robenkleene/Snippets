// All of these are defined on `protocol SequenceType`.

// Map
// Transform the elements with a function.
let values = [2.0, 4.0, 5.0, 7.0]
let squares = values.map { $0 * $0 } // [4.0, 16.0, 25.0, 49.0]

// Filter
// Select the elements that pass a condition.
let digits = [ 1, 4, 10, 15]
let even = digits.filter { $0 % 2 == 0 } // [4, 10]

// Reduce
// Combine the elements into a single value
let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(10.0, combine: +) // 28.0

// FlatMap
// Flatten a collection of collections.
let collections = [[5, 2, 7], [4, 8], [9, 1, 3]]
let flat = collections.flatMap { $0 } // [5, 2, 7, 4, 8, 9, 1, 3]