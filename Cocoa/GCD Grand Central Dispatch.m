dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
	UIImage *thumbnailImage  = [self layerInnerImage:innerImagePreview
                                           onOuterImage:outerImagePreview
                                               withSize:size 
                                               atCenter:center];
	thumbnailImage = [self resizeImage:thumbnailImage forPreviewType:kThumbnail];
	dispatch_async(dispatch_get_main_queue(), ^{
	    handler(thumbnailImage);
	});
});
