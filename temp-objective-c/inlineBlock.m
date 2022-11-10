@property (nonatomic, strong) void (^completionHandler)(NSURL *fileURL);

void (^updateAssetsBlock)(NSURL *articleFileURL) =  ^(NSURL *articleFileURL) {
    ArticleManagerLogVerbose(@"Incrementing syncTaskCount for parse");
    [[NSNotificationCenter defaultCenter] postNotificationName:kSavedArticlesIncrementSyncTaskCountNotification object:nil];
    [DJArticleAssetContainerUpdater downloadAssetsForArticleAssetContainer:savedArticle.assetContainer fromArticleFileURL:articleFileURL];
    ArticleManagerLogVerbose(@"Decrementing syncTaskCount for parse");
    [[NSNotificationCenter defaultCenter] postNotificationName:kSavedArticlesDecrementSyncTaskCountNotification object:nil];
};

if ([savedArticle.assetContainer filenameExists:savedArticle.filename]) {
    NSURL *articleFileURL = [savedArticle.assetContainer fileURLForFilename:savedArticle.filename];
    updateAssetsBlock(articleFileURL);
} else {
    NSURL *articleURL = URLFromArticleIdentifier(savedArticle.identifier);
    [savedArticle.assetContainer queueDownloadAndAddAssetFromURL:articleURL completionHandler:^(NSURL *articleFileURL) {

        if (!articleFileURL) {
            ArticleManagerLogError(@"Failed to download an article from %@", articleURL);
        }
        
        if (articleFileURL) {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                updateAssetsBlock(articleFileURL);
            });
        }
    }];
}