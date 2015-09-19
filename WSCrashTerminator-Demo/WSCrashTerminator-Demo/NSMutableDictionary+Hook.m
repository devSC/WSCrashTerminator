//
//  NSDictionary+Hook.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSMutableDictionary+Hook.h"

#import <objc/runtime.h>

#import "NSObject+Swizz.h"

@implementation NSMutableDictionary (Hook)

+ (void)load
{
    [self swizzWithClass:[NSMutableDictionary class] OriginSel:@selector(setObject:forKey:) newSel:@selector(hookSetObject:forKey:)];
}

- (void)hookSetObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    
    
    if (anObject && aKey) {
        [self hookSetObject:anObject forKey:aKey];
    } else {
        NSLog(@"Dictionary cant set a nil valiue");
    }
}

@end
