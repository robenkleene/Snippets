enum Directory {
    case Caches
    func path() -> String {
        switch self {
        case .Caches:
            return  NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true)[0] as! String
        }
    }
    func URL() -> NSURL {
        return NSURL(fileURLWithPath: self.path())!
    }
}