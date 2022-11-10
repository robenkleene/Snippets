- (id)initWithCompletionHandler:(void (^)(BOOL success))completionHandler {
    self = [super init];
    if (self) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            // Do some work
            dispatch_async(dispatch_get_main_queue(), ^{
                completionHandler(YES);
            });
        });
    }
    return self;
}