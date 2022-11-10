NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
[userInfo setValue:@"Failed to do something wicked" forKey:NSLocalizedDescriptionKey];
NSError *error = [NSError errorWithDomain:@"com.davedelong.myproject" code:42 userInfo:userInfo];