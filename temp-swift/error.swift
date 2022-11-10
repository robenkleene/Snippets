enum PluginLoadError: Error {
    case invalidBundleError(path: String)
    case invalidInfoDictionaryError(URL: NSURL)
    case invalidFileExtensionsError(infoDictionary: [NSObject : AnyObject])
    case invalidCommandError(infoDictionary: [NSObject : AnyObject])
    case invalidNameError(infoDictionary: [NSObject : AnyObject])
    case invalidIdentifierError(infoDictionary: [NSObject : AnyObject])
    case invalidHiddenError(infoDictionary: [NSObject : AnyObject])
    case invalidEditableError(infoDictionary: [NSObject : AnyObject])
    case invalidDebugModeEnabledError(infoDictionary: [NSObject : AnyObject])   
}
