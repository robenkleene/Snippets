dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
	// Do something
	dispatch_async(dispatch_get_main_queue(), ^{
	    // Update the UI
	});
});
