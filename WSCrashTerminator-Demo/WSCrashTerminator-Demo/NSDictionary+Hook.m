//
//  NSDictionary+Hook.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSDictionary+Hook.h"
#import "NSObject+Swizz.h"

@implementation NSDictionary (Hook)

+ (void)load
{
    [self swizzWithClass:[self class] OriginSel:@selector(initWithObjects:forKeys:count:) newSel:@selector(swizz_initWithObjects:forKeys:count:)];
}


- (instancetype)swizz_initWithObjects:(const id  _Nonnull __unsafe_unretained *)objects forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys count:(NSUInteger)cnt
{

    
    return [self swizz_initWithObjects:objects forKeys:keys count:cnt];
}

- (instancetype)swizz_initWithObjects:(NSArray *)objects forKeys:(NSArray<id<NSCopying>> *)keys
{

    
    return [self swizz_initWithObjects:objects forKeys:keys];
}

@end
