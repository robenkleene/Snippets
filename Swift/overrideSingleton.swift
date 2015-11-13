// MARK: Singleton

struct Singleton {
    static let instance: PluginsManager = PluginsManager()
    static var overrideSharedInstance: PluginsManager?
}

class var sharedInstance: PluginsManager {
    if let overrideSharedInstance = Singleton.overrideSharedInstance {
        return overrideSharedInstance
    }
    
    return Singleton.instance
}

class func setOverrideSharedInstance(pluginsManager: PluginsManager?) {
    Singleton.overrideSharedInstance = pluginsManager
}