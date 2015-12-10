extension NSError {
    class func unexecutableLaunchPathError(launchPath: String) -> NSError {
        return errorWithDescription("Launch path is not executable: \(launchPath)", code: 43)
    }
}

extension NSError {
    class func errorWithDescription(description: String, code: Int) -> NSError {
        let userInfo = [NSLocalizedDescriptionKey: description]
        return NSError(domain: errorDomain, code: code, userInfo: userInfo)
    }
}