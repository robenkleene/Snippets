#import <objc/runtime.h>

void WCLSwizzleClassMethod(Class class,
                           SEL originalSelector,
                           SEL overrideSelector)
{
    
    Method originalMethod = class_getClassMethod(class, originalSelector);
    Method overrideMethod = class_getClassMethod(class, overrideSelector);
    
    class = object_getClass((id)class);
    
    if(class_addMethod(class, originalSelector,
                       method_getImplementation(overrideMethod),
                       method_getTypeEncoding(overrideMethod))) {
        class_replaceMethod(class, overrideSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, overrideMethod);
    }
}

@interface WCLPluginManager (TestPluginManager)
@end

@implementation WCLPluginManager (TestPluginManager)

+ (instancetype)overrideSharedPluginManager
{
    static dispatch_once_t pred;
    static WCLTestPluginManager *pluginManager = nil;
    
    dispatch_once(&pred, ^{
        pluginManager = [[WCLTestPluginManager alloc] init];
    });
    
    return pluginManager;
}

+ (void)load
{
    WCLSwizzleClassMethod([WCLPluginManager class],
                          @selector(sharedPluginManager),
                          @selector(overrideSharedPluginManager));
}

@end