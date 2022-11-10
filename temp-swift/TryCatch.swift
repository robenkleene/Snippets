enum MyErrorType: ErrorType {
    case NoError
}

do {
    let str = try NSString(contentsOfFile: "Foo.bar",
                           encoding: NSUTF8StringEncoding)
} catch let error as NSError {
    throw error
} catch {
    throw MyErrorType.NoError
}
