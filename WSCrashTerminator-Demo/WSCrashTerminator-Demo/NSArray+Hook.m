//
//  NSArray+Hook.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSArray+Hook.h"
#import "NSObject+Swizz.h"
@implementation NSArray (Hook)
+ (void)load
{
    [self swizzWithClass:[self class] OriginSel:@selector(objectAtIndex:) newSel:@selector(swizz_objectAtIndex:)];
}


- (id)swizz_objectAtIndex: (NSUInteger)index
{
    
   return [self swizz_objectAtIndex:index];
}
@end
