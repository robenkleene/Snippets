+ (void)logSubviewsOfView:(NSView *)view
{
    NSArray *subviews = [view subviews];
    
    if ([subviews count] == 0) return;
    
    for (NSView *aView in subviews) {
        NSLog(@"%@ frame %@", aView, NSStringFromRect([aView frame]));
        [self logSubviewsOfView:aView];
    }
}
