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
// Combine the elements into a single value.
let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(10.0, combine: +) // 28.0

// FlatMap
// Transform elements in a collection of collections.
// NOTE: `flatMap` on dictionary creates a tuple of the key, value pair. Which seems like it's of limited usefulness unless you want to
let arrayOfArrays = [[5, 2, 7], [4, 8], [9, 1, 3]]
arrayOfArrays.flatMap { $0 } // [5, 2, 7, 4, 8, 9, 1, 3]
// `flatMap` is just implemented as `return self.map(transform).flatten()`
// So all three of these are equivalent
arrayOfArrays.flatMap { $0 } // [5, 2, 7, 4, 8, 9, 1, 3]
arrayOfArrays.flatten() // [5, 2, 7, 4, 8, 9, 1, 3]
arrayOfArrays.map { $0 }.flatten() // [5, 2, 7, 4, 8, 9, 1, 3]
// Working with dictionaries results in tuples:
let dictionary = [ "key1": "value1", "key2": "value2", "key3": "value3"]
let flatDictionary = dictionary.flatMap { $0 } // [("key1", "value1"), ("key3", "value3"), ("key2", "value2")]
