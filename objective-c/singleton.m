+ (DJSavedArticlesManager *)sharedInstance {
    
    static DJSavedArticlesManager *sharedInstance;
    
    static dispatch_once_t cdmOnceToken;
    dispatch_once(&cdmOnceToken, ^{
        sharedInstance = [[DJSavedArticlesManager alloc] init];
    });
    
    return sharedInstance;
}