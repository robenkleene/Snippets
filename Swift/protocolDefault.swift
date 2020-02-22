public protocol PluginsManagerDependenciesType: TempCopyTempURLType, TempUserPluginsDirectoryType {
    var pluginsDirectoryPaths: [String] { get }
    var copyTempDirectoryURL: URL { get }
    var defaults: DefaultsType { get }
    var fallbackDefaultNewPluginName: String { get }
    var userPluginsPath: String { get }
    var builtInPluginsPath: String { get }
}

extension PluginsManagerDependenciesType {
    public var copyTempDirectoryURL: URL {
        return tempCopyTempDirectoryURL
    }

    public var userPluginsURL: URL {
        return URL(fileURLWithPath: userPluginsPath)
    }

    public var builtInPluginsURL: URL {
        return URL(fileURLWithPath: builtInPluginsPath)
    }
}

