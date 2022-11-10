    dispatch_block_t block = ^{
        NSLog(@"Hello world");
    };

    if ([NSThread isMainThread]) {
        block();
    } else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
