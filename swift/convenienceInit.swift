override init(pluginsManager: PluginsManager) {
    super.init(pluginsManager: pluginsManager)
}

convenience override init() {
    self.init(pluginsManager: PluginsManager.sharedInstance)
}
