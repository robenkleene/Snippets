- (void)showLoadingViewAnimated:(BOOL)animated 
{
	if(animated) 
	{
	    NSMutableArray *animationImages = [NSMutableArray arrayWithCapacity:frameCount];
	    for (int i = 1; i <= frameCount; i++) {
	        NSString *imageName = i < 10 ? [NSString stringWithFormat:@"Loading0%i", i] : [NSString stringWithFormat:@"Loading%i", i];
	        [animationImages addObject:[UIImage imageNamed:imageName]];
	    }

		self.loadingView.animationImages = animationImages;
		self.loadingView.hidden = NO;
	    [self.loadingView startAnimating];		
	} else {
        self.loadingView.hidden = YES;
		[self.loadingView stopAnimating];		
	}
}
