//
//  SenTestCase+BundleResources.h
//  RubyUnitTests
//
//  Created by Roben Kleene on 6/29/13.
//  Copyright (c) 2013 Roben Kleene. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface SenTestCase (BundleResources)

- (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subdirectory;

@end
