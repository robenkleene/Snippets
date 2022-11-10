dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    dispatch_semaphore_signal(semaphore);
});

NSUInteger timeoutInSeconds = 1;
dispatch_time_t timeoutTime = dispatch_time(DISPATCH_TIME_NOW, timeoutInSeconds * NSEC_PER_SEC);

dispatch_semaphore_wait(semaphore, timeoutTime);