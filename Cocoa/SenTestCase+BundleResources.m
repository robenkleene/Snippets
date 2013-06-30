//
//  SenTestCase+BundleResources.m
//  RubyUnitTests
//
//  Created by Roben Kleene on 6/29/13.
//  Copyright (c) 2013 Roben Kleene. All rights reserved.
//

#import "SenTestCase+BundleResources.h"

@implementation SenTestCase (BundleResources)

- (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subdirectory {
    return [[NSBundle bundleForClass:[self class]] URLForResource:name
                                                    withExtension:ext
                                                     subdirectory:subdirectory];
}

@end
