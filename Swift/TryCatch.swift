do {
    let str = try NSString(contentsOfFile: "Foo.bar",
                           encoding: NSUTF8StringEncoding)
}
catch let error as NSError {
    print(error.localizedDescription)
}