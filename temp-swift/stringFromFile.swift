do {
    let testData = try NSString(contentsOfFile: testDataPath, encoding: NSUTF8StringEncoding)
    XCTAssertTrue(testData.isEqualToString(standardOutput))
} catch let error as NSError {
    XCTAssertNil(error)
}