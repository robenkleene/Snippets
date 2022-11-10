	var isDir: ObjCBool = false
	let exists = NSFileManager.defaultManager().fileExistsAtPath(fileURL.path!, isDirectory: &isDir)
	XCTAssertTrue(exists, "The file should exist")
	XCTAssertTrue(isDir, "The item should be a directory")