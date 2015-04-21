    var error: NSError?
	let success = NSFileManager.defaultManager().removeItemAtURL(fileURL, error: &error)
	assert(success, "The remove should succeed")
	assert(error == nil, "The error should be nil")
