enum PluginLoadError: ErrorType {
    case InvalidBundleError(path: String)
    case InvalidInfoDictionaryError(URL: NSURL)
    case InvalidFileExtensionsError(infoDictionary: [NSObject : AnyObject])
    case InvalidCommandError(infoDictionary: [NSObject : AnyObject])
    case InvalidNameError(infoDictionary: [NSObject : AnyObject])
    case InvalidIdentifierError(infoDictionary: [NSObject : AnyObject])
    case InvalidHiddenError(infoDictionary: [NSObject : AnyObject])
    case InvalidEditableError(infoDictionary: [NSObject : AnyObject])
    case InvalidDebugModeEnabledError(infoDictionary: [NSObject : AnyObject])   
}