__block BOOL hasCalledBack = NO;

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    hasCalledBack = YES;
});

NSUInteger timeoutInSeconds = 1;
NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:timeoutInSeconds];
while (!hasCalledBack && [loopUntil timeIntervalSinceNow] > 0) {
    [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:loopUntil];
}