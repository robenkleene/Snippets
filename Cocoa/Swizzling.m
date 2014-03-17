#import <objc/runtime.h>

@interface NSWindow (Swizzling)
@end

@implementation NSWindow (Swizzling)

- (void)replacementReceiveMessage:(const struct BInstantMessage *)arg1 {
    NSLog(@"arg1 is %@", arg1);
    [self replacementReceiveMessage:arg1];
}

+ (void)load {
    SEL originalSelector = @selector(ReceiveMessage:);
    SEL overrideSelector = @selector(replacementReceiveMessage:);
    Method originalMethod = class_getInstanceMethod(self, originalSelector);
    Method overrideMethod = class_getInstanceMethod(self, overrideSelector);
    if (class_addMethod(self, originalSelector, method_getImplementation(overrideMethod), method_getTypeEncoding(overrideMethod))) {
        class_replaceMethod(self, overrideSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, overrideMethod);
    }
}

@end
