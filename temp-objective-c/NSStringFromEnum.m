static inline NSString *NSStringFromCMDownloadRequestType(CMDownloadRequestType downloadRequestType) {
    switch (downloadRequestType) {
        case CMDownloadRequestTypeOnDemand:
            return @"CMDownloadRequestTypeOnDemand";
            break;
        case CMDownloadRequestTypePrefetch:
            return @"CMDownloadRequestTypePrefetch";
            break;
        case CMDownloadRequestTypeBaseChunk:
            return @"CMDownloadRequestTypeBaseChunk";
            break;
        case CMDownloadRequestTypeManifestCheck:
            return @"CMDownloadRequestTypeManifestCheck";
            break;
        default:
            NSCAssert(NO, @"Invalid CMDownloadRequestTypeManifestCheck");
            return @"None";
            break;
    }
}