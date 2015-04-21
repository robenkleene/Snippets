	var error: NSError?
	let success = NSFileManager.defaultManager().moveItemAtURL(fileURL, toURL: destinationFileURL, error: &error)
	assert(moveSuccess && moveError == nil, "The move should succeed")