- (void)registerDefaultsFromSettingsBundle {
    NSString *settingsBundlePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    NSDictionary *preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile:[settingsBundlePath stringByAppendingPathComponent:@"Root.plist"]];
    NSArray *preferenceSpecifiers = [preferencesDictionary objectForKey:@"PreferenceSpecifiers"];
    NSMutableDictionary *defaultsDictionary = [[NSMutableDictionary alloc] initWithCapacity:[preferenceSpecifiers count]];
    for(NSDictionary *preferenceSpecifier in preferenceSpecifiers) {
        NSString *key = [preferenceSpecifier objectForKey:@"Key"];
        id defaultValue = [preferenceSpecifier objectForKey:@"DefaultValue"];
        if(key && defaultValue) {
            [defaultsDictionary setObject:defaultValue forKey:key];
        }
    }    
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaultsDictionary];
}