__block BOOL hasCalledBack = NO;

dispatch_async(dispatch_get_main_queue(), ^{    
    hasCalledBack = YES;
});

NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:1];
while (hasCalledBack == NO && [loopUntil timeIntervalSinceNow] > 0) {
    [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:loopUntil];
}